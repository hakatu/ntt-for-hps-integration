// Copyright 2007 Altera Corporation. All rights reserved.  
// Altera products are protected under numerous U.S. and foreign patents, 
// maskwork rights, copyrights and other intellectual property laws.  
//
// This reference design file, and your use thereof, is subject to and governed
// by the terms and conditions of the applicable Altera Reference Design 
// License Agreement (either as signed by you or found at www.altera.com).  By
// using this reference design file, you indicate your acceptance of such terms
// and conditions between you and Altera Corporation.  In the event that you do
// not agree with such terms and conditions, you may not use the reference 
// design file and please promptly destroy any copies you have made.
//
// This reference design file is being provided on an "as-is" basis and as an 
// accommodation and therefore all warranties, representations or guarantees of 
// any kind (whether express, implied or statutory) including, without 
// limitation, warranties of merchantability, non-infringement, or fitness for
// a particular purpose, are specifically disclaimed.  By making this reference
// design file available, Altera expressly does not recommend, suggest or 
// require that this reference design file be used in combination with any 
// other product not provided by Altera.
/////////////////////////////////////////////////////////////////////////////

// baeckler - 04-15-2007
`define SIMULATION

module fifo (
	aclr,

	rd_dat,
	rd_clk,
	rd_req,
	rd_empty,
	rd_used,

	wr_dat,
	wr_clk,
	wr_req,
	wr_full,
	wr_used
);

parameter DAT_WIDTH = 64;
parameter ADDR_WIDTH = 7; // ram address width, internal width is 1 bit more
parameter SIMULATION = 1'b0;

input aclr;

output [DAT_WIDTH-1:0] rd_dat;
input rd_clk, rd_req;
output rd_empty;
output [ADDR_WIDTH:0] rd_used;

input [DAT_WIDTH-1:0] wr_dat;
input wr_clk,wr_req;
output wr_full;
output [ADDR_WIDTH:0] wr_used;


function [ADDR_WIDTH:0] gray_to_bin;
	input [ADDR_WIDTH:0] gray;
	integer i;
	begin
		gray_to_bin[ADDR_WIDTH] = gray[ADDR_WIDTH];
		for (i=ADDR_WIDTH-1; i>=0; i=i-1)
		begin: gry_to_bin
			gray_to_bin[i] = gray_to_bin[i+1] ^ gray[i];
		end
	end
endfunction


reg [ADDR_WIDTH:0] rd_ptr, gray_rd_ptr, wr_side_gray_rd_ptr, wr_side_rd_ptr;
reg [ADDR_WIDTH:0] wr_ptr, gray_wr_ptr, rd_side_gray_wr_ptr, rd_side_wr_ptr;

reg rd_sclr,wr_sclr;
wire rd_ok, wr_ok;

// read address pointer - bin and gray
always @(posedge rd_clk) begin
	if (rd_sclr) begin
		rd_ptr <= 0;
		gray_rd_ptr <= 0;
	end
	else begin
		gray_rd_ptr <= rd_ptr ^ (rd_ptr >> 1'b1);
		if (rd_req & rd_ok) rd_ptr <= rd_ptr + 1'b1;
	end
end

// write address pointer - bin and gray
always @(posedge wr_clk) begin
	if (wr_sclr) begin
		wr_ptr <= 0;
		gray_wr_ptr <= 0;
	end
	else begin
		gray_wr_ptr <= wr_ptr ^ (wr_ptr >> 1'b1);
		if (wr_req & wr_ok) wr_ptr <= wr_ptr + 1'b1;
	end
end

// read pointer crossing to write side
always @(posedge wr_clk) begin
	if (wr_sclr) begin
		wr_side_gray_rd_ptr <= 0;
		wr_side_rd_ptr <= 0;
	end
	else begin
		wr_side_gray_rd_ptr <= gray_rd_ptr;	
		wr_side_rd_ptr <= gray_to_bin (wr_side_gray_rd_ptr);
	end
end

// write pointer crossing to read side
always @(posedge rd_clk) begin
	if (rd_sclr) begin
		rd_side_gray_wr_ptr <= 0;
		rd_side_wr_ptr <= 0;
	end
	else begin
		rd_side_gray_wr_ptr <= gray_wr_ptr;	
		rd_side_wr_ptr <= gray_to_bin (rd_side_gray_wr_ptr);
	end
end

// Full / Empty / Overflow controls
// note used words can be 1 bit wider than address
reg [ADDR_WIDTH:0] rd_used, wr_used;

assign rd_ok = rd_side_wr_ptr != rd_ptr;

always @(posedge rd_clk) begin
	if (rd_sclr) begin
		rd_used <= 0;
	end
	else begin
		rd_used <= rd_side_wr_ptr - rd_ptr;
	end
end

assign wr_ok = ((wr_side_rd_ptr[ADDR_WIDTH-1:0] != wr_ptr[ADDR_WIDTH-1:0]) ||
			(wr_side_rd_ptr[ADDR_WIDTH] == wr_ptr[ADDR_WIDTH]))
			& !wr_sclr;

always @(posedge wr_clk) begin
	if (wr_sclr) begin
		wr_used <= 0;
	end
	else begin
		wr_used <= wr_ptr - wr_side_rd_ptr;
	end
end

assign wr_full = !wr_ok;
assign rd_empty = !rd_ok; 

// reset sync
reg [3:0] wr_aclr, rd_aclr;

always @(posedge wr_clk) begin
	wr_aclr <= (wr_aclr << 1'b1) | aclr;
	wr_sclr <= |wr_aclr;
end
always @(posedge rd_clk) begin
	rd_aclr <= (rd_aclr << 1'b1) | aclr;
	rd_sclr <= |rd_aclr;
end

// RAM storage
wire wr_ena = 1'b1;
wire rd_ena = (rd_req & rd_ok) | rd_sclr;
generate
		// simulation RAM model
		reg  [DAT_WIDTH-1:0] store [0:(1<<ADDR_WIDTH)-1];
		reg [ADDR_WIDTH-1:0] rdaddr,wraddr;
		reg [DAT_WIDTH-1:0] q,wrdata;
		reg wr;

		initial begin
			rdaddr <= 0;
			wraddr <= 0;
			q <= 0;
			wr <= 0;
		end
		
		always @(posedge wr_clk) begin
			wraddr <= wr_ptr[ADDR_WIDTH-1:0];
			wrdata <= wr_dat;
			if (wr_req & wr_ok) begin
				wr <= 1'b1;
			end	
			else wr <= 1'b0;	
		end
		
		always @(negedge wr_clk) begin
			if (wr) begin
				store[wraddr] <= wrdata; 
			end
		end

		always @(posedge rd_clk) begin
			if (rd_ena) begin
				rdaddr <= rd_ptr[ADDR_WIDTH-1:0] + (rd_sclr ? 1'b0 : 1'b1);
				q <= store [rdaddr];
			end
		end				

		assign rd_dat = q;
endgenerate

endmodule

