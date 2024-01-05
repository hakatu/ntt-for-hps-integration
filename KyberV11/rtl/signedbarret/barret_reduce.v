`define KYBER_Q 3329 // Define KYBER_Q as per your requirement
`define WIDTH 16 // Bit-width for int16_t

module barrett_reduce(
    input signed [`WIDTH-1:0] a,
    output signed [`WIDTH-1:0] result
);

// Local variables
reg signed [25:0] t; // Extended size for intermediate calculations
reg signed [25:0] v = ((1 << 26) + `KYBER_Q / 2) / `KYBER_Q;

// Barrett reduction computation
always @ (a) begin
    t = ((v * a) + (1 << 25)) >> 26;
    t = t * `KYBER_Q;
    result = a - t;
end

endmodule