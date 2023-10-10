module accum_8x32 #(
  parameter NUM_OF_ROM = 32
) (
  input clk, reset_n,
  input enable,
  input [16:0] accum_i [NUM_OF_ROM],
  output reg [23:0] result [NUM_OF_ROM]
);

  always_ff @( posedge clk or negedge reset_n ) begin
    for (integer i = 0; i < NUM_OF_ROM ; i++) begin
      if(~reset_n) begin
        result[i] <= 24'd0;
      end else begin
        if(enable) begin
          result[i] <= result[i] + {7'd0, accum_i[i]}; 
        end else begin
          result[i] <= result[i];
        end
      end
    end
  end

endmodule
