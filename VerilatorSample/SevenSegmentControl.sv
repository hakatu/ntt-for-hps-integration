module SevenSegmentControl (
    input wire [3:0] BCD0,
    input wire [3:0] BCD1,
    input wire [3:0] BCD2,
    input wire [3:0] BCD3,
    input wire [3:0] BCD4,
    input wire [3:0] BCD5,
    output wire [6:0] HEX0,
    output wire [6:0] HEX1,
    output wire [6:0] HEX2,
    output wire [6:0] HEX3,
    output wire [6:0] HEX4,
    output wire [6:0] HEX5,
    input wire [6:0] turn_on
);

// Define a 7-segment display lookup table for hexadecimal digits
// Each element corresponds to the 7 segments (a, b, c, d, e, f, g)
wire [6:0] seven_segment[16];

generate
    assign seven_segment[0] = 7'b1000000;  // 0
    assign seven_segment[1] = 7'b1111001;  // 1
    assign seven_segment[2] = 7'b0100100;  // 2
    assign seven_segment[3] = 7'b0110000;  // 3
    assign seven_segment[4] = 7'b0011001;  // 4
    assign seven_segment[5] = 7'b0010010;  // 5
    assign seven_segment[6] = 7'b0000010;  // 6
    assign seven_segment[7] = 7'b1111000;  // 7
    assign seven_segment[8] = 7'b0000000;  // 8
    assign seven_segment[9] = 7'b0010000;  // 9
    assign seven_segment[10] = 7'b0001000; // A
    assign seven_segment[11] = 7'b0000011; // B
    assign seven_segment[12] = 7'b1000110; // C
    assign seven_segment[13] = 7'b0100001; // D
    assign seven_segment[14] = 7'b0000110; // E
    assign seven_segment[15] = 7'b0001110; // F
endgenerate

// Map BCD values to 7-segment displays
assign HEX0 = seven_segment[BCD0] & turn_on;
assign HEX1 = seven_segment[BCD1] & turn_on;
assign HEX2 = seven_segment[BCD2] & turn_on;
assign HEX3 = seven_segment[BCD3] & turn_on;
assign HEX4 = seven_segment[BCD4] & turn_on;
assign HEX5 = seven_segment[BCD5] & turn_on;

endmodule
