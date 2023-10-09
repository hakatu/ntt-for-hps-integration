module MatMul( // [1x2]*[2x1]
    input clk,
    input [7:0] a1, a2,
    input [7:0] b1, b2,
    output reg [16:0] c
  );

  wire[15:0] c1, c2;

  multiplier_8816 mula (a1, b1, c1);
  multiplier_8816 mulb (a2, b2, c2);

  always_ff @( posedge clk ) begin
      c <= c1 + c2;
  end
endmodule

// a0 a1 | b0
// a2 a3 | b1
