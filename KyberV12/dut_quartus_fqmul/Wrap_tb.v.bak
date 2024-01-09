`timescale 1ns / 1ps 

////////////////////////////////////////////////////////////////////////////////// 

// Company:  

// Engineer:  

//  

// Create Date: 09/15/2023 04:17:28 PM 

// Design Name:  

// Module Name: wrap_tb 

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

  

module Wrap_tb; 

  
    reg aclr = 0;
	 
	 reg rd_req = 0;
	 
    reg clk = 0; 
    
    reg rst = 0; 
    
    reg start = 1;
    
    reg mode = 0; 
    
    reg we = 0;
    
    reg [7:0] address_ina;
    
    reg [7:0] address_inb;
    
    reg [15:0] data_ina;
    
    reg [15:0] data_inb;
    
    wire [15:0] data_out1;
    
    wire [15:0] data_out2;
    
    wire init_done;
    
    wire in_done;
    
    wire cal_done;
    
    wire done;
    
    wire wr_req;
	 
	 wire [31:0] rd_dat;
	 
	 wire rd_empty;
	 
	 wire [8:0] rd_used;
	 
	 wire wr_full;
	 
	 wire [8:0] wr_used;
	 
	 wire [31:0] temp;


  // Instantiate the wrap module 
	
//	wrap dut (
//		.clk(clk),
//		.rst(rst),
//		.start(start),
//		.mode(mode),
//		.we(we),
//		.address_ina(address_ina),
//		.address_inb(address_inb),
//		.data_ina(data_ina),
//		.data_inb(data_inb),
//		.data_out1(data_out1),
//		.data_out2(data_out2),
//		.init_done(init_done),
//		.in_done(in_done),
//		.cal_done(cal_done),
//		.done(done),
//		.wr_req(wr_req)
//		);

	wrap dut (
		.aclr(aclr),
		.rd_req(rd_req),
		.clk(clk),
		.rd_clk(clk),
		.rst(rst),
		.start(start),
		.mode(mode),
		.we(we),
		.address_ina(address_ina),
		.address_inb(address_inb),
		.data_ina(data_ina),
		.data_inb(data_inb),
		.data_out1(data_out1),
		.data_out2(data_out2),
		.init_done(init_done),
		.in_done(in_done),
		.cal_done(cal_done),
		.done(done),
		.wr_req(wr_req),
		.rd_dat(rd_dat),
		.rd_empty(rd_empty),
		.rd_used(rd_used),
		.wr_full(wr_full),
		.wr_used(wr_used),
		.temp(temp)
		);



  // Clock generation 

    always #5 clk = ~clk; 

  

  // Reset generation 

    initial begin 
			rst = 0;
			aclr = 1;
			#1000 
			aclr = 0;
        rst = 1; 

        //#1000 
		  start = 1;	 
		  mode = 0;

        // Reset for a few clock cycles 

        #1000  

        rst = 0; 
        
        #1000  
        we = 1;
address_ina = 0;
address_inb = 1;
data_ina = 16'h0000;
data_inb = 16'hFFFE;
#10;
address_ina = 2;
address_inb = 3;
data_ina = 16'h0000;
data_inb = 16'h0002;
#10;
address_ina = 4;
address_inb = 5;
data_ina = 16'hFFFE;
data_inb = 16'hFFFE;
#10;
address_ina = 6;
address_inb = 7;
data_ina = 16'h0001;
data_inb = 16'hFFFF;
#10;
address_ina = 8;
address_inb = 9;
data_ina = 16'h0001;
data_inb = 16'hFFFF;
#10;
address_ina = 10;
address_inb = 11;
data_ina = 16'h0000;
data_inb = 16'h0002;
#10;
address_ina = 12;
address_inb = 13;
data_ina = 16'h0000;
data_inb = 16'h0000;
#10;
address_ina = 14;
address_inb = 15;
data_ina = 16'h0001;
data_inb = 16'hFFFF;
#10;
address_ina = 16;
address_inb = 17;
data_ina = 16'h0001;
data_inb = 16'h0000;
#10;
address_ina = 18;
address_inb = 19;
data_ina = 16'h0001;
data_inb = 16'h0002;
#10;
address_ina = 20;
address_inb = 21;
data_ina = 16'hFFFF;
data_inb = 16'h0000;
#10;
address_ina = 22;
address_inb = 23;
data_ina = 16'h0001;
data_inb = 16'hFFFE;
#10;
address_ina = 24;
address_inb = 25;
data_ina = 16'hFFFF;
data_inb = 16'h0000;
#10;
address_ina = 26;
address_inb = 27;
data_ina = 16'hFFFE;
data_inb = 16'h0001;
#10;
address_ina = 28;
address_inb = 29;
data_ina = 16'hFFFF;
data_inb = 16'h0001;
#10;
address_ina = 30;
address_inb = 31;
data_ina = 16'h0000;
data_inb = 16'h0000;
#10;
address_ina = 32;
address_inb = 33;
data_ina = 16'hFFFF;
data_inb = 16'h0000;
#10;
address_ina = 34;
address_inb = 35;
data_ina = 16'h0000;
data_inb = 16'h0000;
#10;
address_ina = 36;
address_inb = 37;
data_ina = 16'h0001;
data_inb = 16'h0000;
#10;
address_ina = 38;
address_inb = 39;
data_ina = 16'hFFFF;
data_inb = 16'hFFFE;
#10;
address_ina = 40;
address_inb = 41;
data_ina = 16'h0000;
data_inb = 16'h0002;
#10;
address_ina = 42;
address_inb = 43;
data_ina = 16'h0000;
data_inb = 16'h0001;
#10;
address_ina = 44;
address_inb = 45;
data_ina = 16'hFFFF;
data_inb = 16'h0001;
#10;
address_ina = 46;
address_inb = 47;
data_ina = 16'h0000;
data_inb = 16'h0001;
#10;
address_ina = 48;
address_inb = 49;
data_ina = 16'h0000;
data_inb = 16'hFFFE;
#10;
address_ina = 50;
address_inb = 51;
data_ina = 16'h0000;
data_inb = 16'h0000;
#10;
address_ina = 52;
address_inb = 53;
data_ina = 16'h0000;
data_inb = 16'hFFFF;
#10;
address_ina = 54;
address_inb = 55;
data_ina = 16'h0000;
data_inb = 16'h0000;
#10;
address_ina = 56;
address_inb = 57;
data_ina = 16'hFFFE;
data_inb = 16'hFFFF;
#10;
address_ina = 58;
address_inb = 59;
data_ina = 16'h0000;
data_inb = 16'hFFFF;
#10;
address_ina = 60;
address_inb = 61;
data_ina = 16'hFFFE;
data_inb = 16'h0001;
#10;
address_ina = 62;
address_inb = 63;
data_ina = 16'h0000;
data_inb = 16'h0000;
#10;
address_ina = 64;
address_inb = 65;
data_ina = 16'hFFFF;
data_inb = 16'hFFFF;
#10;
address_ina = 66;
address_inb = 67;
data_ina = 16'h0000;
data_inb = 16'h0000;
#10;
address_ina = 68;
address_inb = 69;
data_ina = 16'h0000;
data_inb = 16'h0000;
#10;
address_ina = 70;
address_inb = 71;
data_ina = 16'hFFFE;
data_inb = 16'h0000;
#10;
address_ina = 72;
address_inb = 73;
data_ina = 16'h0000;
data_inb = 16'h0000;
#10;
address_ina = 74;
address_inb = 75;
data_ina = 16'hFFFE;
data_inb = 16'hFFFF;
#10;
address_ina = 76;
address_inb = 77;
data_ina = 16'hFFFE;
data_inb = 16'h0000;
#10;
address_ina = 78;
address_inb = 79;
data_ina = 16'h0000;
data_inb = 16'h0002;
#10;
address_ina = 80;
address_inb = 81;
data_ina = 16'h0000;
data_inb = 16'h0001;
#10;
address_ina = 82;
address_inb = 83;
data_ina = 16'h0000;
data_inb = 16'h0000;
#10;
address_ina = 84;
address_inb = 85;
data_ina = 16'h0001;
data_inb = 16'h0001;
#10;
address_ina = 86;
address_inb = 87;
data_ina = 16'hFFFF;
data_inb = 16'h0001;
#10;
address_ina = 88;
address_inb = 89;
data_ina = 16'h0000;
data_inb = 16'h0000;
#10;
address_ina = 90;
address_inb = 91;
data_ina = 16'h0000;
data_inb = 16'h0000;
#10;
address_ina = 92;
address_inb = 93;
data_ina = 16'hFFFF;
data_inb = 16'hFFFF;
#10;
address_ina = 94;
address_inb = 95;
data_ina = 16'h0001;
data_inb = 16'hFFFF;
#10;
address_ina = 96;
address_inb = 97;
data_ina = 16'h0000;
data_inb = 16'hFFFE;
#10;
address_ina = 98;
address_inb = 99;
data_ina = 16'hFFFF;
data_inb = 16'h0001;
#10;
address_ina = 100;
address_inb = 101;
data_ina = 16'h0000;
data_inb = 16'h0002;
#10;
address_ina = 102;
address_inb = 103;
data_ina = 16'h0002;
data_inb = 16'h0001;
#10;
address_ina = 104;
address_inb = 105;
data_ina = 16'hFFFF;
data_inb = 16'hFFFF;
#10;
address_ina = 106;
address_inb = 107;
data_ina = 16'h0000;
data_inb = 16'h0000;
#10;
address_ina = 108;
address_inb = 109;
data_ina = 16'h0000;
data_inb = 16'h0001;
#10;
address_ina = 110;
address_inb = 111;
data_ina = 16'hFFFF;
data_inb = 16'h0000;
#10;
address_ina = 112;
address_inb = 113;
data_ina = 16'h0000;
data_inb = 16'h0000;
#10;
address_ina = 114;
address_inb = 115;
data_ina = 16'h0001;
data_inb = 16'hFFFF;
#10;
address_ina = 116;
address_inb = 117;
data_ina = 16'hFFFF;
data_inb = 16'h0000;
#10;
address_ina = 118;
address_inb = 119;
data_ina = 16'h0002;
data_inb = 16'h0000;
#10;
address_ina = 120;
address_inb = 121;
data_ina = 16'h0000;
data_inb = 16'hFFFF;
#10;
address_ina = 122;
address_inb = 123;
data_ina = 16'h0000;
data_inb = 16'h0000;
#10;
address_ina = 124;
address_inb = 125;
data_ina = 16'h0001;
data_inb = 16'h0000;
#10;
address_ina = 126;
address_inb = 127;
data_ina = 16'h0001;
data_inb = 16'hFFFF;
#10;
address_ina = 128;
address_inb = 129;
data_ina = 16'h0000;
data_inb = 16'h0000;
#10;
address_ina = 130;
address_inb = 131;
data_ina = 16'hFFFF;
data_inb = 16'h0000;
#10;
address_ina = 132;
address_inb = 133;
data_ina = 16'h0000;
data_inb = 16'h0001;
#10;
address_ina = 134;
address_inb = 135;
data_ina = 16'hFFFF;
data_inb = 16'h0002;
#10;
address_ina = 136;
address_inb = 137;
data_ina = 16'h0000;
data_inb = 16'h0001;
#10;
address_ina = 138;
address_inb = 139;
data_ina = 16'h0000;
data_inb = 16'h0001;
#10;
address_ina = 140;
address_inb = 141;
data_ina = 16'h0002;
data_inb = 16'h0000;
#10;
address_ina = 142;
address_inb = 143;
data_ina = 16'h0000;
data_inb = 16'hFFFF;
#10;
address_ina = 144;
address_inb = 145;
data_ina = 16'h0000;
data_inb = 16'hFFFF;
#10;
address_ina = 146;
address_inb = 147;
data_ina = 16'h0000;
data_inb = 16'h0001;
#10;
address_ina = 148;
address_inb = 149;
data_ina = 16'h0000;
data_inb = 16'hFFFF;
#10;
address_ina = 150;
address_inb = 151;
data_ina = 16'h0000;
data_inb = 16'h0001;
#10;
address_ina = 152;
address_inb = 153;
data_ina = 16'hFFFF;
data_inb = 16'h0000;
#10;
address_ina = 154;
address_inb = 155;
data_ina = 16'h0000;
data_inb = 16'h0000;
#10;
address_ina = 156;
address_inb = 157;
data_ina = 16'h0002;
data_inb = 16'h0000;
#10;
address_ina = 158;
address_inb = 159;
data_ina = 16'h0000;
data_inb = 16'h0001;
#10;
address_ina = 160;
address_inb = 161;
data_ina = 16'h0000;
data_inb = 16'h0000;
#10;
address_ina = 162;
address_inb = 163;
data_ina = 16'h0000;
data_inb = 16'h0000;
#10;
address_ina = 164;
address_inb = 165;
data_ina = 16'hFFFF;
data_inb = 16'h0001;
#10;
address_ina = 166;
address_inb = 167;
data_ina = 16'h0001;
data_inb = 16'hFFFF;
#10;
address_ina = 168;
address_inb = 169;
data_ina = 16'hFFFF;
data_inb = 16'h0000;
#10;
address_ina = 170;
address_inb = 171;
data_ina = 16'h0000;
data_inb = 16'hFFFE;
#10;
address_ina = 172;
address_inb = 173;
data_ina = 16'h0000;
data_inb = 16'h0001;
#10;
address_ina = 174;
address_inb = 175;
data_ina = 16'h0000;
data_inb = 16'hFFFF;
#10;
address_ina = 176;
address_inb = 177;
data_ina = 16'h0000;
data_inb = 16'h0002;
#10;
address_ina = 178;
address_inb = 179;
data_ina = 16'h0001;
data_inb = 16'h0001;
#10;
address_ina = 180;
address_inb = 181;
data_ina = 16'hFFFE;
data_inb = 16'h0001;
#10;
address_ina = 182;
address_inb = 183;
data_ina = 16'h0001;
data_inb = 16'hFFFF;
#10;
address_ina = 184;
address_inb = 185;
data_ina = 16'h0000;
data_inb = 16'h0001;
#10;
address_ina = 186;
address_inb = 187;
data_ina = 16'h0000;
data_inb = 16'hFFFF;
#10;
address_ina = 188;
address_inb = 189;
data_ina = 16'hFFFE;
data_inb = 16'h0000;
#10;
address_ina = 190;
address_inb = 191;
data_ina = 16'h0000;
data_inb = 16'hFFFF;
#10;
address_ina = 192;
address_inb = 193;
data_ina = 16'h0000;
data_inb = 16'h0001;
#10;
address_ina = 194;
address_inb = 195;
data_ina = 16'h0001;
data_inb = 16'hFFFF;
#10;
address_ina = 196;
address_inb = 197;
data_ina = 16'hFFFF;
data_inb = 16'h0001;
#10;
address_ina = 198;
address_inb = 199;
data_ina = 16'h0000;
data_inb = 16'h0001;
#10;
address_ina = 200;
address_inb = 201;
data_ina = 16'h0000;
data_inb = 16'h0000;
#10;
address_ina = 202;
address_inb = 203;
data_ina = 16'h0000;
data_inb = 16'h0002;
#10;
address_ina = 204;
address_inb = 205;
data_ina = 16'h0001;
data_inb = 16'h0000;
#10;
address_ina = 206;
address_inb = 207;
data_ina = 16'h0000;
data_inb = 16'h0000;
#10;
address_ina = 208;
address_inb = 209;
data_ina = 16'hFFFF;
data_inb = 16'hFFFF;
#10;
address_ina = 210;
address_inb = 211;
data_ina = 16'hFFFE;
data_inb = 16'hFFFF;
#10;
address_ina = 212;
address_inb = 213;
data_ina = 16'h0002;
data_inb = 16'h0000;
#10;
address_ina = 214;
address_inb = 215;
data_ina = 16'h0001;
data_inb = 16'h0002;
#10;
address_ina = 216;
address_inb = 217;
data_ina = 16'h0001;
data_inb = 16'h0000;
#10;
address_ina = 218;
address_inb = 219;
data_ina = 16'hFFFF;
data_inb = 16'h0000;
#10;
address_ina = 220;
address_inb = 221;
data_ina = 16'h0000;
data_inb = 16'hFFFF;
#10;
address_ina = 222;
address_inb = 223;
data_ina = 16'hFFFF;
data_inb = 16'h0001;
#10;
address_ina = 224;
address_inb = 225;
data_ina = 16'hFFFF;
data_inb = 16'hFFFF;
#10;
address_ina = 226;
address_inb = 227;
data_ina = 16'hFFFF;
data_inb = 16'hFFFF;
#10;
address_ina = 228;
address_inb = 229;
data_ina = 16'hFFFF;
data_inb = 16'hFFFF;
#10;
address_ina = 230;
address_inb = 231;
data_ina = 16'h0000;
data_inb = 16'hFFFF;
#10;
address_ina = 232;
address_inb = 233;
data_ina = 16'h0000;
data_inb = 16'hFFFF;
#10;
address_ina = 234;
address_inb = 235;
data_ina = 16'hFFFF;
data_inb = 16'hFFFF;
#10;
address_ina = 236;
address_inb = 237;
data_ina = 16'hFFFE;
data_inb = 16'h0000;
#10;
address_ina = 238;
address_inb = 239;
data_ina = 16'h0000;
data_inb = 16'h0001;
#10;
address_ina = 240;
address_inb = 241;
data_ina = 16'h0002;
data_inb = 16'h0000;
#10;
address_ina = 242;
address_inb = 243;
data_ina = 16'h0000;
data_inb = 16'h0001;
#10;
address_ina = 244;
address_inb = 245;
data_ina = 16'h0000;
data_inb = 16'h0001;
#10;
address_ina = 246;
address_inb = 247;
data_ina = 16'hFFFF;
data_inb = 16'hFFFF;
#10;
address_ina = 248;
address_inb = 249;
data_ina = 16'h0001;
data_inb = 16'hFFFF;
#10;
address_ina = 250;
address_inb = 251;
data_ina = 16'h0001;
data_inb = 16'h0000;
#10;
address_ina = 252;
address_inb = 253;
data_ina = 16'h0001;
data_inb = 16'hFFFE;
#10;
address_ina = 254;
address_inb = 255;
data_ina = 16'h0002;
data_inb = 16'h0000;
#10
        wait(init_done);
        #30
        we = 0;
        // Start processing 
         
		  #38000  

        start = 0; 
        
//        wait (wr_req);
//		  wait (!wr_req);
//		   rd_req = 1;
		  wait(done);
		  #20000
rd_req = 1;
        #70 
		  start = 1;
		 #80 
wait(rd_empty)
rd_req = 0;

        $finish; 
    end 

  

endmodule 

 

 