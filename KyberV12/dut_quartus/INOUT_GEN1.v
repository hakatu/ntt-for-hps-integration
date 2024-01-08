`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/24/2023 03:04:48 PM
// Design Name: 
// Module Name: INOUT_GEN1
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


module INOUT_GEN1(clk,address1,a);

	input clk;
	input [8:0] address1;
	output reg [15:0] a;
	// Declare the ROM variable
	reg [15:0] mem_ROMWRAP [127:0];


	// Initialize the ROM with $readmemb.  Put the memory contents
	// in the file dual_port_rom_init.txt.  Without this file,
	// this design will not compile.
	// See Verilog LRM 1364-2001 Section 17.2.8 for details on the
	// format of this file.

	initial 
	begin 
              mem_ROMWRAP[0] = {8'd0,8'd1};
            mem_ROMWRAP[1] = {8'd2,8'd3};
            mem_ROMWRAP[2] = {8'd4,8'd5};
            mem_ROMWRAP[3] = {8'd6,8'd7};
            mem_ROMWRAP[4] = {8'd8,8'd9};
            mem_ROMWRAP[5] = {8'd10,8'd11};
            mem_ROMWRAP[6] = {8'd12,8'd13};
            mem_ROMWRAP[7] = {8'd14,8'd15};
            mem_ROMWRAP[8] = {8'd16,8'd17};
            mem_ROMWRAP[9] = {8'd18,8'd19};
            mem_ROMWRAP[10] = {8'd20,8'd21};
            mem_ROMWRAP[11] = {8'd22,8'd23};
            mem_ROMWRAP[12] = {8'd24,8'd25};
            mem_ROMWRAP[13] = {8'd26,8'd27};
            mem_ROMWRAP[14] = {8'd28,8'd29};
            mem_ROMWRAP[15] = {8'd30,8'd31};
            mem_ROMWRAP[16] = {8'd32,8'd33};
            mem_ROMWRAP[17] = {8'd34,8'd35};
            mem_ROMWRAP[18] = {8'd36,8'd37};
            mem_ROMWRAP[19] = {8'd38,8'd39};
            mem_ROMWRAP[20] = {8'd40,8'd41};
            mem_ROMWRAP[21] = {8'd42,8'd43};
            mem_ROMWRAP[22] = {8'd44,8'd45};
            mem_ROMWRAP[23] = {8'd46,8'd47};
            mem_ROMWRAP[24] = {8'd48,8'd49};
            mem_ROMWRAP[25] = {8'd50,8'd51};
            mem_ROMWRAP[26] = {8'd52,8'd53};
            mem_ROMWRAP[27] = {8'd54,8'd55};
            mem_ROMWRAP[28] = {8'd56,8'd57};
            mem_ROMWRAP[29] = {8'd58,8'd59};
            mem_ROMWRAP[30] = {8'd60,8'd61};
            mem_ROMWRAP[31] = {8'd62,8'd63};
            mem_ROMWRAP[32] = {8'd64,8'd65};
            mem_ROMWRAP[33] = {8'd66,8'd67};
            mem_ROMWRAP[34] = {8'd68,8'd69};
            mem_ROMWRAP[35] = {8'd70,8'd71};
            mem_ROMWRAP[36] = {8'd72,8'd73};
            mem_ROMWRAP[37] = {8'd74,8'd75};
            mem_ROMWRAP[38] = {8'd76,8'd77};
            mem_ROMWRAP[39] = {8'd78,8'd79};
            mem_ROMWRAP[40] = {8'd80,8'd81};
            mem_ROMWRAP[41] = {8'd82,8'd83};
            mem_ROMWRAP[42] = {8'd84,8'd85};
            mem_ROMWRAP[43] = {8'd86,8'd87};
            mem_ROMWRAP[44] = {8'd88,8'd89};
            mem_ROMWRAP[45] = {8'd90,8'd91};
            mem_ROMWRAP[46] = {8'd92,8'd93};
            mem_ROMWRAP[47] = {8'd94,8'd95};
            mem_ROMWRAP[48] = {8'd96,8'd97};
            mem_ROMWRAP[49] = {8'd98,8'd99};
            mem_ROMWRAP[50] = {8'd100,8'd101};
            mem_ROMWRAP[51] = {8'd102,8'd103};
            mem_ROMWRAP[52] = {8'd104,8'd105};
            mem_ROMWRAP[53] = {8'd106,8'd107};
            mem_ROMWRAP[54] = {8'd108,8'd109};
            mem_ROMWRAP[55] = {8'd110,8'd111};
            mem_ROMWRAP[56] = {8'd112,8'd113};
            mem_ROMWRAP[57] = {8'd114,8'd115};
            mem_ROMWRAP[58] = {8'd116,8'd117};
            mem_ROMWRAP[59] = {8'd118,8'd119};
            mem_ROMWRAP[60] = {8'd120,8'd121};
            mem_ROMWRAP[61] = {8'd122,8'd123};
            mem_ROMWRAP[62] = {8'd124,8'd125};
            mem_ROMWRAP[63] = {8'd126,8'd127};
            mem_ROMWRAP[64] = {8'd128,8'd129};
            mem_ROMWRAP[65] = {8'd130,8'd131};
            mem_ROMWRAP[66] = {8'd132,8'd133};
            mem_ROMWRAP[67] = {8'd134,8'd135};
            mem_ROMWRAP[68] = {8'd136,8'd137};
            mem_ROMWRAP[69] = {8'd138,8'd139};
            mem_ROMWRAP[70] = {8'd140,8'd141};
            mem_ROMWRAP[71] = {8'd142,8'd143};
            mem_ROMWRAP[72] = {8'd144,8'd145};
            mem_ROMWRAP[73] = {8'd146,8'd147};
            mem_ROMWRAP[74] = {8'd148,8'd149};
            mem_ROMWRAP[75] = {8'd150,8'd151};
            mem_ROMWRAP[76] = {8'd152,8'd153};
            mem_ROMWRAP[77] = {8'd154,8'd155};
            mem_ROMWRAP[78] = {8'd156,8'd157};
            mem_ROMWRAP[79] = {8'd158,8'd159};
            mem_ROMWRAP[80] = {8'd160,8'd161};
            mem_ROMWRAP[81] = {8'd162,8'd163};
            mem_ROMWRAP[82] = {8'd164,8'd165};
            mem_ROMWRAP[83] = {8'd166,8'd167};
            mem_ROMWRAP[84] = {8'd168,8'd169};
            mem_ROMWRAP[85] = {8'd170,8'd171};
            mem_ROMWRAP[86] = {8'd172,8'd173};
            mem_ROMWRAP[87] = {8'd174,8'd175};
            mem_ROMWRAP[88] = {8'd176,8'd177};
            mem_ROMWRAP[89] = {8'd178,8'd179};
            mem_ROMWRAP[90] = {8'd180,8'd181};
            mem_ROMWRAP[91] = {8'd182,8'd183};
            mem_ROMWRAP[92] = {8'd184,8'd185};
            mem_ROMWRAP[93] = {8'd186,8'd187};
            mem_ROMWRAP[94] = {8'd188,8'd189};
            mem_ROMWRAP[95] = {8'd190,8'd191};
            mem_ROMWRAP[96] = {8'd192,8'd193};
            mem_ROMWRAP[97] = {8'd194,8'd195};
            mem_ROMWRAP[98] = {8'd196,8'd197};
            mem_ROMWRAP[99] = {8'd198,8'd199};
            mem_ROMWRAP[100] = {8'd200,8'd201};
            mem_ROMWRAP[101] = {8'd202,8'd203};
            mem_ROMWRAP[102] = {8'd204,8'd205};
            mem_ROMWRAP[103] = {8'd206,8'd207};
            mem_ROMWRAP[104] = {8'd208,8'd209};
            mem_ROMWRAP[105] = {8'd210,8'd211};
            mem_ROMWRAP[106] = {8'd212,8'd213};
            mem_ROMWRAP[107] = {8'd214,8'd215};
            mem_ROMWRAP[108] = {8'd216,8'd217};
            mem_ROMWRAP[109] = {8'd218,8'd219};
            mem_ROMWRAP[110] = {8'd220,8'd221};
            mem_ROMWRAP[111] = {8'd222,8'd223};
            mem_ROMWRAP[112] = {8'd224,8'd225};
            mem_ROMWRAP[113] = {8'd226,8'd227};
            mem_ROMWRAP[114] = {8'd228,8'd229};
            mem_ROMWRAP[115] = {8'd230,8'd231};
            mem_ROMWRAP[116] = {8'd232,8'd233};
            mem_ROMWRAP[117] = {8'd234,8'd235};
            mem_ROMWRAP[118] = {8'd236,8'd237};
            mem_ROMWRAP[119] = {8'd238,8'd239};
            mem_ROMWRAP[120] = {8'd240,8'd241};
            mem_ROMWRAP[121] = {8'd242,8'd243};
            mem_ROMWRAP[122] = {8'd244,8'd245};
            mem_ROMWRAP[123] = {8'd246,8'd247};
            mem_ROMWRAP[124] = {8'd248,8'd249};
            mem_ROMWRAP[125] = {8'd250,8'd251};
            mem_ROMWRAP[126] = {8'd252,8'd253};
            mem_ROMWRAP[127] = {8'd254,8'd255};
	end

	always @(posedge clk)
	begin
		a <= mem_ROMWRAP[address1];
	end  
endmodule
