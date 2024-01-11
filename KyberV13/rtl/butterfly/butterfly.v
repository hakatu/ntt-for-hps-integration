`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/15/2023 04:09:59 PM
// Design Name: 
// Module Name: butterfly
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

module butterfly(clk,rst_n,mode,a,b,w,c,d);
    
	input clk;
	input rst_n;
	input [15:0] a;
	input [15:0] b;
	input [15:0] w;
	input [1:0] mode; //00: NTT; 01:NTT; 10:Bypass; 11: Idle
//	output reg [31:0] c;
//	output reg [31:0] d;
	output [15:0] c;
	output [15:0] d;

	wire [15:0] c_ntt,c_intt,c_bp;
	wire [15:0] d_ntt,d_intt,d_bp;
	wire [15:0] sum,sub; 
	wire [31:0] mult_vw, mult_out;
	wire [15:0] ba_vw, ba_out;
	wire [15:0] add_a,add_b,sub_a,sub_b;
	wire [15:0] cmux,dmux;
	wire [15:0] sum_reduce;
	reg [15:0] add_a_temp,add_b_temp,sub_a_temp,sub_b_temp,sum_temp,sub_temp;
   reg [31:0] mult_vw_temp, mult_uw_temp;
	reg [15:0] a1,b1,w1,w2,w3;

 

	MULT3 iMULT_0(clk,b,w,mult_vw);
	
		always @(posedge clk,negedge rst_n) begin
		   if(!rst_n) begin
			   w1 <= 'd0;
	         mult_vw_temp <= 'd0;
			   a1 <= 'd0;
			   b1 <= 'd0;
		   end else begin
			   w1 <= w;
	         mult_vw_temp <= mult_vw;
			   a1 <= a;
			   b1 <= b;
		   end
		end
		
	mont_reduce imont_reduce_0 (mult_vw_temp,ba_vw);
	
	assign add_a = a1;
	assign add_b = (mode==2'b00)? ba_vw : b1;
	
	assign sub_a = (mode==2'b00)? a1 : b1;
	assign sub_b = (mode==2'b00)? ba_vw : a1;
		
	   always @(posedge clk,negedge rst_n) begin
		   if(!rst_n) begin
			   w2 <= 'd0;
	         add_a_temp <= 'd0;
		      add_b_temp <= 'd0;
				sub_a_temp <= 'd0;
				sub_b_temp <= 'd0;
		   end else begin
			   w2 <= w1;
	         add_a_temp <= add_a;
		      add_b_temp <= add_b;
				sub_a_temp <= sub_a;
				sub_b_temp <= sub_b;
		   end
		end
		
	BKmodADD  iBKmodADD (add_a_temp,add_b_temp,sum);
	BKmodSUB iBKmodSUB (sub_a_temp,sub_b_temp,sub);

	always @(posedge clk,negedge rst_n) begin
		if(!rst_n) begin
		   w3 <= 'd0;
	      sum_temp <= 'd0;
			sub_temp <= 'd0;
		end else begin
		   w3 <= w2;
	      sum_temp <= sum;
		   sub_temp <= sub;
		end
	end
	
	MULT3 iMULT_1(clk,sub_temp,w3,mult_out);		
	mont_reduce imont_reduce_1 (mult_out,ba_out);
	barret_reduce ibarret_reduce(sum_temp,sum_reduce);
	
	//////////OUTPUT-mux///////////
	//mode NTT
	assign c_ntt = sum_temp;
	assign d_ntt = sub_temp;
	//////////
	//mode INTT
	assign c_intt  = sum_reduce;
	assign d_intt = ba_out;
	//mode bypass
	assign c_bp = a;
	assign d_bp = b;

	
	mux_xx2_p imux_xx21 (clk,rst_n,c_ntt,c_intt,c_bp,16'b0,mode,cmux);
	mux_xx2_p imux_xx22 (clk,rst_n,d_ntt,d_intt,d_bp,16'b0,mode,dmux);
	
	assign c = cmux;
	assign d = dmux;
endmodule