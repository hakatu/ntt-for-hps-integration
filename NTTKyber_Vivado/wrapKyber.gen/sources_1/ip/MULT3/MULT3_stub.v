// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Wed Nov 22 07:37:36 2023
// Host        : DESKTOP-21L0LE9 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub {d:/STUDY/Hardware implementation of
//               CRYSTALS-Dlithium/Kyber/code/Vivado/wrapKyber/wrapKyber.gen/sources_1/ip/MULT3/MULT3_stub.v}
// Design      : MULT3
// Purpose     : Stub declaration of top-level module interface
// Device      : xcau25p-sfvb784-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "mult_gen_v12_0_18,Vivado 2022.2" *)
module MULT3(CLK, A, B, P)
/* synthesis syn_black_box black_box_pad_pin="CLK,A[15:0],B[15:0],P[31:0]" */;
  input CLK;
  input [15:0]A;
  input [15:0]B;
  output [31:0]P;
endmodule