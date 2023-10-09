module ramC_fsm (
    input clk, reset_n,
    input [7:0] addr_a, addr_b,
    output reg [15:0] w_ramC[128]
  );

  logic [15:0] data_c1, data_c2;

  romC_128x1 romC (
               .address_a(addr_a[6:0]),
               .address_b(addr_b[6:0]),
               .clock(clk),
               .q_a(data_c1),
               .q_b(data_c2)
             );

  enum int unsigned { S0 = 0, S1 = 1 } state = S0, next_state;

  always_comb
  begin : next_state_logic
    case(state)
      S0:
        next_state = addr_a[7] ? S1 : S0;
      S1:
        next_state = S1;
    endcase
  end

  always_ff @( posedge clk or negedge reset_n)
  begin
    if(~reset_n) begin
      state <= S0;
      for (integer i = 0; i < 128 ; i = i + 1 ) begin
        w_ramC[i] <= 16'd0;
      end
    end else begin
      state <= next_state;
      case (state)
        S0:
        begin
          w_ramC[addr_a[6:0]] <= data_c1;
          w_ramC[addr_b[6:0]] <= data_c2;
        end
        S1:
        begin
          w_ramC <= w_ramC;
        end
      endcase
    end
  end
endmodule
