module barrett_reduction (
    input [31:0] c,       // 32-bit number to be reduced
    output [15:0] result  // Result of c mod q
);
    // Define q and mu as parameters
    parameter q = 16'hD01; // 3329 in hex
    parameter k = 32;       // Bit length for reduction
    parameter mu = 32'h13AFB7; // Precomputed value of floor(2^k / q)

    // Compute c * mu
    reg [63:0] c_mu;

    assign c_mu = c * mu;

    // Compute floor(c_mu / 2^k) * q
    wire [31:0] floor_c_mu_q;

    assign floor_c_mu_q = (c_mu >> k) * q;

    // Compute c - floor_c_mu_q

    assign result = c - floor_c_mu_q;
endmodule
