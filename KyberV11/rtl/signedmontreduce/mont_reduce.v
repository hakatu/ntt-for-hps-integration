`define MONT -1044   // 2^16 mod q
`define QINV -3327   // q^-1 mod 2^16
`define KYBER_Q 3329 // q
`define WIDTH 16     // Output bit-width for int16_t

module montgomery_reduce(
a,
result
);

parameter MONT = -1044   // 2^16 mod q
parameter QINV = -3327   // q^-1 mod 2^16
parameter KYBER_Q = 3329 // q
parameter WIDTH = 16     // Output bit-width for int16_t

input signed [31:0] a,         // 32-bit input integer
output reg signed [WIDTH-1:0] result // 16-bit output integer

// Local variable for intermediate calculation
reg signed [31:0] t;

always @ (a) begin
    t = a * QINV;  // Multiply with QINV
    t = a - t KYBER_Q;    // Subtract (t * KYBER_Q) from a
    result = t >> 16;        // Right shift by 16 to get the final result
end

endmodule