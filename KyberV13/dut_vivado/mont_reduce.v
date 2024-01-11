module mont_reduce(
clk,
rst,
a,
result
);

parameter MONT = -1044 ;  // 2^16 mod q
parameter QINV = -3327  ; // q^-1 mod 2^16
parameter KYBER_Q = 3329 ;// q
parameter WIDTH = 16    ; // Output bit-width for int16_t

input clk,rst;

input signed [31:0] a;      // 32-bit input integer
output signed [WIDTH-1:0] result; // 16-bit output integer

// Local variable for intermediate calculation
reg signed [31:0] t2;
reg signed [15:0] t, a1;

always@(posedge clk)
begin
if(rst)
begin
t2 <= 0;
t <= 0;
a1 <= 0;
end
else
begin
a1 <= a;
t <= a * QINV;
t2 <= a1 - t*KYBER_Q;
end
end

assign result = t2[31:16];

endmodule