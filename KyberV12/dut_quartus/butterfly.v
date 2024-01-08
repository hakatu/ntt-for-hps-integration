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
	wire [31:0] mult_vw, mult_uw;
	wire [15:0] ba_vw, ba_uw;
	wire [15:0] add_a,add_b,sub_a,sub_b;
	wire [15:0] cmux,dmux;
	wire [15:0] sum_reduce;
		reg [15:0] add_a_temp,add_b_temp,sub_a_temp,sub_b_temp,sum_temp;
      reg [31:0] mult_vw_temp, mult_uw_temp;
		

 

	MULTP iMULT_0(clk,a,w,mult_vw);
	MULTP iMULT_1(clk,b,w,mult_uw);
	
		always @(posedge clk,negedge rst_n) begin
		   if(!rst_n) begin
	         mult_vw_temp <= 'd0;
		      mult_uw_temp <= 'd0;
		   end else begin
	         mult_vw_temp <= mult_vw;
		      mult_uw_temp <= mult_uw;
		   end
		end
		
	mont_reduce imont_reduce_0 (mult_vw_temp,ba_vw);
	mont_reduce imont_reduce_1 (mult_uw_temp,ba_uw);
	
	assign add_a = a;
	assign add_b = (mode==2'b00)? ba_vw : b;
	
	assign sub_a = (mode==2'b00)? a : ba_uw;
	assign sub_b = ba_vw;
		
	   always @(posedge clk,negedge rst_n) begin
		   if(!rst_n) begin
	         add_a_temp <= 'd0;
		      add_b_temp <= 'd0;
				sub_a_temp <= 'd0;
				sub_b_temp <= 'd0;
		   end else begin
	         add_a_temp <= add_a;
		      add_b_temp <= add_b;
				sub_a_temp <= sub_a;
				sub_b_temp <= sub_b;
		   end
		end
		
	BKmodADD  iBKmodADD (add_a_temp,add_b_temp,sum);
	
		always @(posedge clk,negedge rst_n) begin
		   if(!rst_n) begin
	         sum_temp <= 'd0;
		   end else begin
	         sum_temp <= sum;
		   end
		end
		
	barret_reduce ibarret_reduce(sum_temp,sum_reduce);
	BKmodSUB iBKmodSUB (sub_a_temp,sub_b_temp,sub);
	
	
	//////////OUTPUT-mux///////////
	//mode NTT
	assign c_ntt = sum;
	assign d_ntt = sub;
	//////////
	//mode INTT
	assign c_intt  = sum_reduce;
	assign d_intt = sub;
	//mode bypass
	assign c_bp = a;
	assign d_bp = b;

	
	mux_xx2_p imux_xx21 (clk,rst_n,c_ntt,c_intt,c_bp,16'b0,mode,cmux);
	mux_xx2_p imux_xx22 (clk,rst_n,d_ntt,d_intt,d_bp,16'b0,mode,dmux);
	
	assign c = cmux;
	assign d = dmux;
endmodule