`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/15/2023 04:00:41 PM
// Design Name: 
// Module Name: wrap
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

module wrap(aclr,rd_req,clk,rd_clk,rst,start,mode,we,address_ina,address_inb,data_ina,data_inb,data_out1,data_out2,init_done,in_done,cal_done,done,wr_req,rd_dat,rd_empty,rd_used,wr_full,wr_used,temp);
	 input aclr;
	 input rd_req;
	 input clk;
	 input rd_clk;
    input rst;
    input start;
    input mode; //0: NTT, 1: INTT
    input we;
    input [7:0] address_ina,address_inb;
    input [15:0] data_ina, data_inb;
    output [15:0] data_out1,data_out2;
    output init_done;
    output in_done;
    output cal_done;
    output done;
    output wr_req;
	 output [31:0] rd_dat;
	 output rd_empty;
	 output [8:0] rd_used;
	 output wr_full;
	 output [8:0] wr_used;
	 output [31:0] temp;

    wire newloop_w;
    wire [1:0] mode_w;
    wire crt_sig_w;
    wire wen_w;
    wire [7:0] Radda1_w;
    wire [7:0] Raddb1_w;
    //wire [7:0] TFadd1_w;
    //wire [15:0] tw1_w;
    wire [15:0] DA1in_w;
    wire [15:0] DA1in_bu;
    wire [15:0] DB1in_w;
    wire [15:0] DB1in_bu;
    wire [15:0] DA1out_w;
    //wire [15:0] DA1out_bu;
    wire [15:0] DB1out_w;
    //wire [15:0] DB1out_bu;
    wire [15:0] data_in1;
    wire [15:0] data_in2;

     
    wire [7:0] a_inout1,b_inout1;
    wire [7:0] a_intt1,b_intt1;
    wire [7:0] a_ntt1,b_ntt1;
    wire [7:0] aa1,bb1;
    wire [15:0] w_intt1,w_ntt1,ww1;
    //wire [7:0] aa2,bb2,cc2;
    
    wire [9:0] counterx1_w;
	wire [8:0] counterx2_w; 
	//wire [8:0] counterx3_w; 
    
    INOUT_GEN1 iINOUT_GEN1(
        .clk(clk),
        .address1(counterx2_w),
        .a({a_inout1,b_inout1}) //removed 8'd0
        );

    INTT_GEN1 iINTT_GEN1(
        .clk(clk),
        .address1(counterx1_w),
        .a({a_intt1,b_intt1,w_intt1})
        );
   
    NTT_GEN1 iNTT_GEN1(
        .clk(clk),
        .address1(counterx1_w),
        .a({a_ntt1,b_ntt1,w_ntt1})
        );
        
            
            
    assign aa1 = (mode_w == 2'b00) ? a_ntt1 : a_intt1;    
    //assign aa2 = (mode_w == 2'b00) ? a_ntt2 : a_intt2;  
    assign bb1 = (mode_w == 2'b00) ? b_ntt1 : b_intt1;  
    //assign bb2 = (mode_w == 2'b00) ? b_ntt2 : b_intt2;  
    assign ww1 = (mode_w == 2'b00) ? w_ntt1 : w_intt1;  
    //assign cc2 = (mode_w == 2'b00) ? c_ntt2 : c_intt2;  
    
    assign Radda1_w = (mode_w[1] == 1'b1) ? a_inout1 : aa1;
    //assign Radda2_w = (mode_w[1] == 1'b1) ? a_inout2 : aa2;
    assign Raddb1_w = (mode_w[1] == 1'b1) ? b_inout1 : bb1;
    //assign Raddb2_w = (mode_w[1] == 1'b1) ? b_inout2 : bb2;
    //assign TFadd1_w 
    
    wire [7:0] addressA1;
    wire [7:0] addressB1;
    assign init_done = (address_inb == 255) ? 1 : 0; 
    assign addressA1 = start ? address_ina  : Radda1_w;
    assign addressB1 = start ? address_inb  : Raddb1_w;
		
	RAM iRAM2 (
			.clk(clk),
			.DA1in(data_ina),
			.DB1in(data_inb),
			.A1radd(addressA1),
			.B1radd(addressB1),
			.DA1out(data_in1),
			.DB1out(data_in2),
			.we1(we),
			.we2(we)
			);	
		

	mode imode1 (
	   .clk(clk),
	   .mode_in(mode),
	   .cal_done(cal_done),
	   .in_done(in_done),
	   .mode(mode_w)
	   );
	
    Address_Gen iAddress_Gen (
		.clk(clk),
		.rst(rst),
		.newloop(newloop_w),
		.mode(mode_w),
		.ctr_sig(crt_sig_w),
		.counterx1(counterx1_w),
		.counterx2(counterx2_w)
		);   
		
	assign DA1in_w = (in_done == 1'b0)? data_in1 : DA1in_bu;
	//assign DA2in_w = (in_done == 1'b0)? data_in2 : DA2in_bu;
	assign DB1in_w = (in_done == 1'b0)? data_in2 : DB1in_bu;
	//assign DB2in_w = (in_done == 1'b0)? data_in4 : DB2in_bu;
	
	RAM iRAM1 (
			.clk(clk),
			.DA1in(DA1in_w),
			.DB1in(DB1in_w),
			.A1radd(Radda1_w),
			.B1radd(Raddb1_w),
			.DA1out(DA1out_w),
			.DB1out(DB1out_w),
			.we1(wen_w),
			.we2(wen_w)
			);		
			
     control icontrol (
         .clk(clk),
         .rst(rst),
         .start(start),
         .crt_sig(crt_sig_w),
         .mode_out(mode_w),
         .newloop(newloop_w),
         .wen(wen_w),
         .done(done),
         .cal_done(cal_done),
         .in_done(in_done)
         );

    butterfly ibutterfly1 (
        .clk(clk),
        .rst_n(!rst),
        .mode(mode_w),
        .a(DA1out_w),
        .b(DB1out_w),
        .w(ww1),
        .c(DA1in_bu),
        .d(DB1in_bu)
        );   
		
	wire wr_req_w;
	assign wr_req_w = ((mode_w == 2'b11) & (done == 0)) ? 1 : 0;
	wire [31:0] wr_dat_w;
	assign wr_dat_w = {DA1out_w,DB1out_w};
	
	fifo ififo1(
		.aclr(aclr),

		.rd_dat(rd_dat),
		.rd_clk(rd_clk),
		.rd_req(rd_req),
		.rd_empty(rd_empty),
		.rd_used(rd_used),

		.wr_dat(wr_dat_w),
		.wr_clk(clk),
		.wr_req(wr_req_w),
		.wr_full(wr_full),
		.wr_used(wr_used)
	);

	assign data_out1 = DA1out_w;
	assign data_out2 = DB1out_w;
   assign wr_req = wr_req_w;
	assign temp = wr_dat_w;

endmodule

