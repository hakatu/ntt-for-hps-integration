//Specifiy delay montgomery reduce 

module montgomery_reduce (
    input clk,rst,
    input  [31:0] a,
    output [15:0] result
);

parameter KYBER_Q = 3329; // Q value 
parameter QINV = 62209; // Q inverse q^-1 mod 2^16
parameter MONT = 2285 // 2^16 mod q
parameter MWID = 32;
parameter WID = 16;

reg [31:0] u;
reg [31:0] t;

// Calculate u
assign  u = a[31:16] * QINV; 

fflopx #(WID) ifflopx1 (clk,rst,u,u1);


endmodule