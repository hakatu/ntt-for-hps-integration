//`default_nettype none

// Starter code for Project 2.  See README.md for details

module ChipInterface
  (input  wire       CLOCK_50,
   input  wire [0:0] SW,
   input  wire [0:0] KEY,
   output wire [6:0] HEX5, HEX4, HEX3, HEX2, HEX1, HEX0);
	
	wire clk;
	assign clk = CLOCK_50;
	
	wire reset_n;
	assign reset_n = KEY[0];

  wire [9:0] cycle;
  wire [23:0] clock_cycles;
  assign clock_cycles = {14'd0, cycle};
  
  wire [23:0] sum;
  wire done;

  MyTop dut(.clk(CLOCK_50), .reset_n(reset_n), .sum(sum), .done(done), .cycle(cycle));

  wire [3:0] bcd0,bcd1,bcd2,bcd3,bcd4,bcd5;
  wire [6:0] hex0,hex1,hex2,hex3,hex4,hex5;
  
  assign bcd0 = ~SW[0] ? sum[3:0]   : clock_cycles[3:0]  ;
  assign bcd1 = ~SW[0] ? sum[7:4]   : clock_cycles[7:4]  ;
  assign bcd2 = ~SW[0] ? sum[11:8]  : clock_cycles[11:8] ;
  assign bcd3 = ~SW[0] ? sum[15:12] : clock_cycles[15:12];
  assign bcd4 = ~SW[0] ? sum[19:16] : clock_cycles[19:16];
  assign bcd5 = ~SW[0] ? sum[23:20] : clock_cycles[23:20];

  SevenSegmentControl s(.BCD0(bcd0),
                        .BCD1(bcd1),
                        .BCD2(bcd2),
                        .BCD3(bcd3),
                        .BCD4(bcd4),
                        .BCD5(bcd5),
                        .HEX0(hex0),
                        .HEX1(hex1),
                        .HEX2(hex2),
                        .HEX3(hex3),
                        .HEX4(hex4),
                        .HEX5(hex5),
                        .turn_on(7'b1111111));
								
assign HEX0 = hex0;
assign HEX1 = hex1;
assign HEX2 = hex2;
assign HEX3 = hex3;
assign HEX4 = hex4;
assign HEX5 = hex5;

endmodule:ChipInterface