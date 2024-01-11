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
`define SIMULATION
  

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

$display("Finished the NTT test");

        rst = 1; 

        //#1000 
		start = 1;	 
		mode = 1;

        // Reset for a few clock cycles 

        #1000  

        rst = 0; 
        
        #1000  
        we = 1;

///copy data here/
address_ina = 0;
address_inb = 1;
data_ina = 16'hFA0C;
data_inb = 16'hFE0B;
#10;
address_ina = 2;
address_inb = 3;
data_ina = 16'h04AF;
data_inb = 16'h0073;
#10;
address_ina = 4;
address_inb = 5;
data_ina = 16'h04DA;
data_inb = 16'hFBF4;
#10;
address_ina = 6;
address_inb = 7;
data_ina = 16'h0026;
data_inb = 16'hFB5D;
#10;
address_ina = 8;
address_inb = 9;
data_ina = 16'h0469;
data_inb = 16'hFBD2;
#10;
address_ina = 10;
address_inb = 11;
data_ina = 16'hF9C7;
data_inb = 16'hFC25;
#10;
address_ina = 12;
address_inb = 13;
data_ina = 16'h02F8;
data_inb = 16'h0038;
#10;
address_ina = 14;
address_inb = 15;
data_ina = 16'h00DB;
data_inb = 16'h01DE;
#10;
address_ina = 16;
address_inb = 17;
data_ina = 16'h02C0;
data_inb = 16'h0077;
#10;
address_ina = 18;
address_inb = 19;
data_ina = 16'hFD71;
data_inb = 16'h00C1;
#10;
address_ina = 20;
address_inb = 21;
data_ina = 16'h0191;
data_inb = 16'hFC39;
#10;
address_ina = 22;
address_inb = 23;
data_ina = 16'hFD4A;
data_inb = 16'h031B;
#10;
address_ina = 24;
address_inb = 25;
data_ina = 16'h0056;
data_inb = 16'h05D2;
#10;
address_ina = 26;
address_inb = 27;
data_ina = 16'h02D6;
data_inb = 16'h0439;
#10;
address_ina = 28;
address_inb = 29;
data_ina = 16'h02C8;
data_inb = 16'h0180;
#10;
address_ina = 30;
address_inb = 31;
data_ina = 16'h0000;
data_inb = 16'h0530;
#10;
address_ina = 32;
address_inb = 33;
data_ina = 16'hFA49;
data_inb = 16'h00FD;
#10;
address_ina = 34;
address_inb = 35;
data_ina = 16'hFEBB;
data_inb = 16'h02D3;
#10;
address_ina = 36;
address_inb = 37;
data_ina = 16'h0210;
data_inb = 16'hFBB7;
#10;
address_ina = 38;
address_inb = 39;
data_ina = 16'hFCC3;
data_inb = 16'hFBB9;
#10;
address_ina = 40;
address_inb = 41;
data_ina = 16'h0481;
data_inb = 16'hFAB2;
#10;
address_ina = 42;
address_inb = 43;
data_ina = 16'h0370;
data_inb = 16'h02FB;
#10;
address_ina = 44;
address_inb = 45;
data_ina = 16'hFB8A;
data_inb = 16'hFDC4;
#10;
address_ina = 46;
address_inb = 47;
data_ina = 16'h04A4;
data_inb = 16'hFA47;
#10;
address_ina = 48;
address_inb = 49;
data_ina = 16'hFD97;
data_inb = 16'h020C;
#10;
address_ina = 50;
address_inb = 51;
data_ina = 16'hFE59;
data_inb = 16'h0238;
#10;
address_ina = 52;
address_inb = 53;
data_ina = 16'h02DF;
data_inb = 16'h04C5;
#10;
address_ina = 54;
address_inb = 55;
data_ina = 16'hF986;
data_inb = 16'h051F;
#10;
address_ina = 56;
address_inb = 57;
data_ina = 16'h0034;
data_inb = 16'h053B;
#10;
address_ina = 58;
address_inb = 59;
data_ina = 16'h03BA;
data_inb = 16'h002B;
#10;
address_ina = 60;
address_inb = 61;
data_ina = 16'hFD2A;
data_inb = 16'hFBBB;
#10;
address_ina = 62;
address_inb = 63;
data_ina = 16'hFE78;
data_inb = 16'hFBF5;
#10;
address_ina = 64;
address_inb = 65;
data_ina = 16'hFD97;
data_inb = 16'h01AF;
#10;
address_ina = 66;
address_inb = 67;
data_ina = 16'h0321;
data_inb = 16'hFCD9;
#10;
address_ina = 68;
address_inb = 69;
data_ina = 16'hFCBC;
data_inb = 16'h0509;
#10;
address_ina = 70;
address_inb = 71;
data_ina = 16'h04CE;
data_inb = 16'h039B;
#10;
address_ina = 72;
address_inb = 73;
data_ina = 16'hFD3F;
data_inb = 16'hF9F7;
#10;
address_ina = 74;
address_inb = 75;
data_ina = 16'hFC9F;
data_inb = 16'h0515;
#10;
address_ina = 76;
address_inb = 77;
data_ina = 16'hFC3D;
data_inb = 16'hFD90;
#10;
address_ina = 78;
address_inb = 79;
data_ina = 16'h03D5;
data_inb = 16'h040F;
#10;
address_ina = 80;
address_inb = 81;
data_ina = 16'hFC6A;
data_inb = 16'h03D0;
#10;
address_ina = 82;
address_inb = 83;
data_ina = 16'h0619;
data_inb = 16'h037F;
#10;
address_ina = 84;
address_inb = 85;
data_ina = 16'h0587;
data_inb = 16'hFF9E;
#10;
address_ina = 86;
address_inb = 87;
data_ina = 16'h0430;
data_inb = 16'hF9F5;
#10;
address_ina = 88;
address_inb = 89;
data_ina = 16'hFD1D;
data_inb = 16'h0363;
#10;
address_ina = 90;
address_inb = 91;
data_ina = 16'hF9A1;
data_inb = 16'hFA96;
#10;
address_ina = 92;
address_inb = 93;
data_ina = 16'h05A2;
data_inb = 16'hFDE8;
#10;
address_ina = 94;
address_inb = 95;
data_ina = 16'hFE84;
data_inb = 16'h036B;
#10;
address_ina = 96;
address_inb = 97;
data_ina = 16'hFC9A;
data_inb = 16'hFD0C;
#10;
address_ina = 98;
address_inb = 99;
data_ina = 16'hFC7E;
data_inb = 16'hFF1E;
#10;
address_ina = 100;
address_inb = 101;
data_ina = 16'hFDAD;
data_inb = 16'h0277;
#10;
address_ina = 102;
address_inb = 103;
data_ina = 16'h060B;
data_inb = 16'h027F;
#10;
address_ina = 104;
address_inb = 105;
data_ina = 16'h0434;
data_inb = 16'h03F4;
#10;
address_ina = 106;
address_inb = 107;
data_ina = 16'hFF31;
data_inb = 16'h010C;
#10;
address_ina = 108;
address_inb = 109;
data_ina = 16'h0442;
data_inb = 16'hFBC5;
#10;
address_ina = 110;
address_inb = 111;
data_ina = 16'hFB1A;
data_inb = 16'hFBF8;
#10;
address_ina = 112;
address_inb = 113;
data_ina = 16'hFEB6;
data_inb = 16'h0552;
#10;
address_ina = 114;
address_inb = 115;
data_ina = 16'h03E9;
data_inb = 16'h04CD;
#10;
address_ina = 116;
address_inb = 117;
data_ina = 16'hFA7B;
data_inb = 16'h05AE;
#10;
address_ina = 118;
address_inb = 119;
data_ina = 16'hFF77;
data_inb = 16'hF9B5;
#10;
address_ina = 120;
address_inb = 121;
data_ina = 16'h0159;
data_inb = 16'hFF8A;
#10;
address_ina = 122;
address_inb = 123;
data_ina = 16'h0554;
data_inb = 16'h04BE;
#10;
address_ina = 124;
address_inb = 125;
data_ina = 16'hFA93;
data_inb = 16'h042D;
#10;
address_ina = 126;
address_inb = 127;
data_ina = 16'hFCB5;
data_inb = 16'h0450;
#10;
address_ina = 128;
address_inb = 129;
data_ina = 16'hFF6F;
data_inb = 16'h0420;
#10;
address_ina = 130;
address_inb = 131;
data_ina = 16'h047D;
data_inb = 16'hFAE8;
#10;
address_ina = 132;
address_inb = 133;
data_ina = 16'hFCCF;
data_inb = 16'hFC71;
#10;
address_ina = 134;
address_inb = 135;
data_ina = 16'hFBDD;
data_inb = 16'hFF9E;
#10;
address_ina = 136;
address_inb = 137;
data_ina = 16'hFB35;
data_inb = 16'h0280;
#10;
address_ina = 138;
address_inb = 139;
data_ina = 16'h05A7;
data_inb = 16'h008D;
#10;
address_ina = 140;
address_inb = 141;
data_ina = 16'h005E;
data_inb = 16'h04AE;
#10;
address_ina = 142;
address_inb = 143;
data_ina = 16'h048B;
data_inb = 16'hFD6E;
#10;
address_ina = 144;
address_inb = 145;
data_ina = 16'h031D;
data_inb = 16'hFEDC;
#10;
address_ina = 146;
address_inb = 147;
data_ina = 16'hFB04;
data_inb = 16'h0428;
#10;
address_ina = 148;
address_inb = 149;
data_ina = 16'hFB0B;
data_inb = 16'h05F4;
#10;
address_ina = 150;
address_inb = 151;
data_ina = 16'hFBB8;
data_inb = 16'h0364;
#10;
address_ina = 152;
address_inb = 153;
data_ina = 16'h05AF;
data_inb = 16'hFD31;
#10;
address_ina = 154;
address_inb = 155;
data_ina = 16'hF9F3;
data_inb = 16'h040F;
#10;
address_ina = 156;
address_inb = 157;
data_ina = 16'h01C2;
data_inb = 16'h0172;
#10;
address_ina = 158;
address_inb = 159;
data_ina = 16'hFAF6;
data_inb = 16'hFD10;
#10;
address_ina = 160;
address_inb = 161;
data_ina = 16'hF9E8;
data_inb = 16'hFF3B;
#10;
address_ina = 162;
address_inb = 163;
data_ina = 16'hFEC1;
data_inb = 16'h03FA;
#10;
address_ina = 164;
address_inb = 165;
data_ina = 16'hF9B5;
data_inb = 16'h02F9;
#10;
address_ina = 166;
address_inb = 167;
data_ina = 16'h00B0;
data_inb = 16'hFBC7;
#10;
address_ina = 168;
address_inb = 169;
data_ina = 16'hFD34;
data_inb = 16'hFCD4;
#10;
address_ina = 170;
address_inb = 171;
data_ina = 16'h047A;
data_inb = 16'hFFA0;
#10;
address_ina = 172;
address_inb = 173;
data_ina = 16'h0127;
data_inb = 16'h066C;
#10;
address_ina = 174;
address_inb = 175;
data_ina = 16'hF9A9;
data_inb = 16'h01F3;
#10;
address_ina = 176;
address_inb = 177;
data_ina = 16'h028A;
data_inb = 16'h033C;
#10;
address_ina = 178;
address_inb = 179;
data_ina = 16'hFD64;
data_inb = 16'hFFA7;
#10;
address_ina = 180;
address_inb = 181;
data_ina = 16'h0270;
data_inb = 16'h025F;
#10;
address_ina = 182;
address_inb = 183;
data_ina = 16'hFEA6;
data_inb = 16'h0291;
#10;
address_ina = 184;
address_inb = 185;
data_ina = 16'h0013;
data_inb = 16'h017E;
#10;
address_ina = 186;
address_inb = 187;
data_ina = 16'h02C6;
data_inb = 16'hFEB8;
#10;
address_ina = 188;
address_inb = 189;
data_ina = 16'hFCEB;
data_inb = 16'h00BA;
#10;
address_ina = 190;
address_inb = 191;
data_ina = 16'hFA0E;
data_inb = 16'h0040;
#10;
address_ina = 192;
address_inb = 193;
data_ina = 16'hFB03;
data_inb = 16'h0639;
#10;
address_ina = 194;
address_inb = 195;
data_ina = 16'hFC29;
data_inb = 16'hFA2C;
#10;
address_ina = 196;
address_inb = 197;
data_ina = 16'h054D;
data_inb = 16'h03B4;
#10;
address_ina = 198;
address_inb = 199;
data_ina = 16'h0607;
data_inb = 16'h01D3;
#10;
address_ina = 200;
address_inb = 201;
data_ina = 16'hFCDD;
data_inb = 16'h0193;
#10;
address_ina = 202;
address_inb = 203;
data_ina = 16'hFBF9;
data_inb = 16'h05BE;
#10;
address_ina = 204;
address_inb = 205;
data_ina = 16'h00A9;
data_inb = 16'h032B;
#10;
address_ina = 206;
address_inb = 207;
data_ina = 16'h033F;
data_inb = 16'hFA11;
#10;
address_ina = 208;
address_inb = 209;
data_ina = 16'hFA55;
data_inb = 16'h01D9;
#10;
address_ina = 210;
address_inb = 211;
data_ina = 16'h0200;
data_inb = 16'hFD88;
#10;
address_ina = 212;
address_inb = 213;
data_ina = 16'hFF2B;
data_inb = 16'h00E5;
#10;
address_ina = 214;
address_inb = 215;
data_ina = 16'hFCAB;
data_inb = 16'hFE62;
#10;
address_ina = 216;
address_inb = 217;
data_ina = 16'hFD30;
data_inb = 16'hFAA0;
#10;
address_ina = 218;
address_inb = 219;
data_ina = 16'h0103;
data_inb = 16'hFE46;
#10;
address_ina = 220;
address_inb = 221;
data_ina = 16'hFE1B;
data_inb = 16'h03F4;
#10;
address_ina = 222;
address_inb = 223;
data_ina = 16'hFFB9;
data_inb = 16'h0265;
#10;
address_ina = 224;
address_inb = 225;
data_ina = 16'hFDEF;
data_inb = 16'h0047;
#10;
address_ina = 226;
address_inb = 227;
data_ina = 16'h001F;
data_inb = 16'hFBD0;
#10;
address_ina = 228;
address_inb = 229;
data_ina = 16'hFBA9;
data_inb = 16'h053A;
#10;
address_ina = 230;
address_inb = 231;
data_ina = 16'h04C8;
data_inb = 16'h0530;
#10;
address_ina = 232;
address_inb = 233;
data_ina = 16'hFED3;
data_inb = 16'hF989;
#10;
address_ina = 234;
address_inb = 235;
data_ina = 16'hFA16;
data_inb = 16'hFD2E;
#10;
address_ina = 236;
address_inb = 237;
data_ina = 16'hFE5D;
data_inb = 16'h04AE;
#10;
address_ina = 238;
address_inb = 239;
data_ina = 16'hFBDF;
data_inb = 16'hFD62;
#10;
address_ina = 240;
address_inb = 241;
data_ina = 16'hFE10;
data_inb = 16'hFB59;
#10;
address_ina = 242;
address_inb = 243;
data_ina = 16'hFCA3;
data_inb = 16'h0634;
#10;
address_ina = 244;
address_inb = 245;
data_ina = 16'hFA6E;
data_inb = 16'hFCEA;
#10;
address_ina = 246;
address_inb = 247;
data_ina = 16'hFBDD;
data_inb = 16'hFDF5;
#10;
address_ina = 248;
address_inb = 249;
data_ina = 16'h0178;
data_inb = 16'h0236;
#10;
address_ina = 250;
address_inb = 251;
data_ina = 16'h0514;
data_inb = 16'hFF9A;
#10;
address_ina = 252;
address_inb = 253;
data_ina = 16'hFAA1;
data_inb = 16'h01A9;
#10;
address_ina = 254;
address_inb = 255;
data_ina = 16'hFCBE;
data_inb = 16'h02CD;
#10;

///////////////////

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
$display("Finished the INTT test");
        $finish; 
    end 

  

endmodule 

 

 