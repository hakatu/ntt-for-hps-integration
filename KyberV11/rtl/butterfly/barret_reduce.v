module barret_reduce(
a,
result
);

parameter KYBER_Q = 3329; // Define KYBER_Q as per your requirement
parameter WIDTH = 16; // Bit-width for int16_t
wire signed [15:0] v = ((1 << 26) + KYBER_Q / 2) / KYBER_Q;

input signed [WIDTH-1:0] a;
output signed [WIDTH-1:0] result;
// Local variables
wire signed [31:0] t;
wire signed [15:0] t2, t3; // Extended size for intermediate calculations
//reg signed [25:0] v = ((1 << 26) + KYBER_Q / 2) / KYBER_Q;

// Barrett reduction computation

assign t = ((v * a) + (1 << 25));

assign t2 = t[31]? {10'b1111111111,t[31:26]}:{10'b0,t[31:26]};

assign t3 = t2 * KYBER_Q;

assign result = a - t3;


endmodule