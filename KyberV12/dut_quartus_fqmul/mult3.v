// megafunction wizard: %LPM_MULT%VBB%
// GENERATION: STANDARD
// VERSION: WM1.0
// MODULE: lpm_mult 

// ============================================================
// File Name: MULT3.v
// Megafunction Name(s):
// 			lpm_mult
//
// Simulation Library Files(s):
// 			lpm

module MULT3 (
	clock,
	dataa,
	datab,
	result);

	input	  clock;
	input signed	[15:0]  dataa;
	input signed	[15:0]  datab;
	output signed	[31:0]  result;


assign result = dataa * datab;

endmodule