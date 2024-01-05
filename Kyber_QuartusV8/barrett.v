`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/03/2023 08:12:42 PM
// Design Name: 
// Module Name: barrett
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


//module barrett(clk,rst,c,r);
//	input clk,rst;
//    input [63:0] c;
//    output reg [31:0] r;
     
//    localparam m = 32'd268697824;
//    localparam q = 32'd8380417;
    
    
//    reg  [31:0] quo;
//	 always @(posedge clk) begin
//		quo <= ((c >> (23 - 2)) * m) >> 30;
//		r <= c - q*quo;
//	end
  
//endmodule 
//module barrett(clk,rst,c,r);
//	input clk,rst;
//    input [63:0] c;
//    output [31:0] r;
//     
//    localparam m = 32'd268697824;
//    localparam q = 32'd8380417;
//    
//    wire  [63:0] c_w;
//    wire  [31:0] quo;
//    wire  [31:0] r_w;
//        assign c_w = c;
//		assign quo = ((c_w >> 21) * m) >> 30;
//		assign r_w = c_w - q*quo;
//		assign r = r_w;
//  
//endmodule 
//
module barrett(c,result);
    input [31:0] c;      // 32-bit number to be reduced
    output [15:0] result;  // Result of c mod q
    // Define q and mu as parameters
    parameter q = 16'hD01; // 3329 in hex
    //parameter k = 32;       // Bit length for reduction
    parameter mu = 32'h13AFB7; // Precomputed value of floor(2^k / q)

    // Compute c * mu
   /* verilator lint_off UNUSEDSIGNAL */
   wire [63:0] c_mu;

    assign c_mu = c * mu;

    wire [31:0] c_mu_l;

    assign c_mu_l = c_mu[63:32];

    // Compute floor(c_mu / 2^k) * q
    wire [31:0] floor_c_mu_q;

    assign floor_c_mu_q = c_mu_l * q;

wire [15:0] result_temp;
    // Compute c - floor_c_mu_q
/* verilator lint_off WIDTHTRUNC */
    assign result_temp = c - floor_c_mu_q;
/* verilator lint_off WIDTHTRUNC */

assign result = (result_temp >= q)? result_temp - q : result_temp;

endmodule