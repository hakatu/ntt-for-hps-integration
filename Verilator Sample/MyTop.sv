module MyTop (
    input clk, reset_n,
    // Output declarations
    output reg [23:0] sum,      // Output sum
    output reg [9:0] cycle,    // Cycle counter
    output reg done            // Done signal
);

  // Parameter declarations
  localparam NUM_OF_ROM = 32;        // Number of ROMs, min=16
  localparam ADDR_H_MIN = 7;        // Minimum address bit
  localparam ADDR_H_MAX = 7 + $clog2(128) - $clog2(NUM_OF_ROM);        // Maximum address bit
  localparam RAMY_EN_LENGTH = 2**($clog2(128) - $clog2(NUM_OF_ROM));
  
  // Registers
  reg [ADDR_H_MAX:0] addr_a, addr_b;
  reg [23:0] r_ramY[128];          // RAM Y data
  reg [2:0] sum_counter = 3'd6;    // Sum counter
  reg [RAMY_EN_LENGTH - 1:0] ramF_enable = 'd0;
  reg [7:0] reg_data_b1 [4], reg_data_b2 [4];
  reg [7:0] ramA_1 [NUM_OF_ROM], ramA_2 [NUM_OF_ROM];

  // Wires
  wire [15:0] w_ramC[128];        // RAM C data
  wire [23:0] w_ramF[128];        // RAM F data
  wire [30:0] w_sum;              // Sum wire
  wire [$clog2(RAMY_EN_LENGTH) - 1:0] addr_h;               // Address high bits
  wire ram_done;                   // RAM operation completion signal
  wire [16:0] w_c[NUM_OF_ROM];             // Wire array for data
  wire [RAMY_EN_LENGTH - 1:0] w_ramF_enable;       // Wire for RAM F enable
  wire [7:0] data_a1[NUM_OF_ROM], data_a2[NUM_OF_ROM], data_b1, data_b2;  // Data vectors

  // Enumeration for state machine
  enum int unsigned { S0 = 0, S1 = 1, S2 = 2, S3 = 3, S4 = 4, S5 = 5, S6 = 6 } state, next_state;

  /* Module Instances */
  AdderTree addertree(
    .clk(clk),
    .reset_n(reset_n),
    .idata(r_ramY),
    .odata(w_sum)
  );  // Adder tree module instance

  RamController #(.NUM_OF_ROM(NUM_OF_ROM), .ADDR_H_MIN(ADDR_H_MIN)) rc(
    .clk(clk), 
    .reset_n(reset_n),
    .addr_a(addr_a),
    .addr_b(addr_b),
    .addr_h(addr_h),
    .ramF_enable(w_ramF_enable),
    .ram_done(ram_done)
  );  // RAM controller module instance

  ramC_fsm ramC_fsm(
    .clk(clk),
    .reset_n(reset_n),
    .addr_a(addr_a[7:0]),
    .addr_b(addr_b[7:0]),
    .w_ramC(w_ramC)
  );  // RAM C FSM module instance

  // ROM Modules Generation
  genvar i, j;
  generate
    for (j = 0; j < 4; j = j+1) begin: gen1
      for (i = 0; i < NUM_OF_ROM/4; i = i + 1) begin: gen
        localparam addrs = NUM_OF_ROM/4*j+i; 
        romA_128x128 romA(
                       .clock(clk),
                       .address_a({addr_h, addrs[$clog2(NUM_OF_ROM)-1:0], addr_a[6:0]}),
                       .address_b({addr_h, addrs[$clog2(NUM_OF_ROM)-1:0], addr_b[6:0]}),
                       .q_a(data_a1[addrs]),
                       .q_b(data_a2[addrs])
                     );  // 128x128 ROM module instance
        
        MatMul mm(
          .clk(clk),
          .a1(ramA_1[addrs]),
          .a2(ramA_2[addrs]),
          .b1(reg_data_b1[j]),
          .b2(reg_data_b2[j]),
          .c(w_c[addrs])
        );  // Matrix multiplication module instance
      end
    end

    for (j = 0; j < RAMY_EN_LENGTH; j = j+1) begin: gen2
      accum_8x32 #(.NUM_OF_ROM(NUM_OF_ROM)) ramF(
        .clk(clk),
        .reset_n(reset_n),
        .enable(ramF_enable[j]),
        .accum_i(w_c),
        .result(w_ramF[NUM_OF_ROM * j +: NUM_OF_ROM])
      );  // RAM F block module instance
    end
  endgenerate

  romB_128x1 romB (
               .address_a(addr_a[6:0]),
               .address_b(addr_b[6:0]),
               .clock(clk),
               .q_a(data_b1),
               .q_b(data_b2)
             );  // 128x1 ROM module instance

  // State machine logic
  always_comb begin : next_state_logic
    case(state)
      S0: next_state = S1;
      S1: next_state = S2;
      S2: next_state = ram_done ? S3 : S2;
      S3: next_state = S4;
      S4: next_state = |sum_counter ? S4 : S5;
      S5: next_state = S6;
      S6: next_state = S6;
    endcase
  end

  always_ff @( posedge clk or negedge reset_n ) begin : cycles_counter
    if(~reset_n)
      cycle <= 10'b0;         // Reset cycle counter
    else begin
      if(~done)
        cycle <= cycle + 10'b1;
      else
        cycle <= cycle;
    end
  end

  // Sequential logic for state transitions
  always_ff @( posedge clk or negedge reset_n ) begin
    if(~reset_n) begin
      done <= 1'b0;            // Reset done signal
      state <= S0;             // Reset state machine
      ramF_enable <= 'b0;      // Disable RAM F
      sum <= 24'd0;            // Reset sum
    end
    else
    begin
      state <= next_state;                 // Update state
      for (integer i = 0; i < 4; i = i + 1) begin
        reg_data_b1[i] <= data_b1;
        reg_data_b2[i] <= data_b2;
      end
      for (integer i = 0; i < NUM_OF_ROM; i = i + 1) begin
        ramA_1[i] <= data_a1[i];
        ramA_2[i] <= data_a2[i];
      end
      case (state)
        S2: ramF_enable <= w_ramF_enable;   // RAM F write enable
        S3: begin
          ramF_enable <= 4'b0000;       // RAM F write disable
          sum_counter <= 3'd6;           // Initialize sum counter
          for(integer i = 0 ; i < 128 ; i = i + 1) begin
            r_ramY[i] <= w_ramF[i] + {8'd0, w_ramC[i]}; // RAMY
          end
        end
        S4: sum_counter <= sum_counter - 3'd1;  // Decrement sum counter
        S5: begin
            done <= 1'b1;                // Set done signal
            sum <= w_sum[23:0];                // Update sum
        end
      endcase
    end
  end

endmodule
