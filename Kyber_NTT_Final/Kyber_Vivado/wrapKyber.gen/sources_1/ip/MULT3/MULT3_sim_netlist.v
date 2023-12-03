// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Wed Nov 22 07:37:34 2023
// Host        : DESKTOP-21L0LE9 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top MULT3 -prefix
//               MULT3_ MULT3_sim_netlist.v
// Design      : MULT3
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcau25p-sfvb784-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "MULT3,mult_gen_v12_0_18,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "mult_gen_v12_0_18,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module MULT3
   (CLK,
    A,
    B,
    P);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF p_intf:b_intf:a_intf, ASSOCIATED_RESET sclr, ASSOCIATED_CLKEN ce, FREQ_HZ 10000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [15:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [15:0]B;
  (* x_interface_info = "xilinx.com:signal:data:1.0 p_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME p_intf, LAYERED_METADATA undef" *) output [31:0]P;

  wire [15:0]A;
  wire [15:0]B;
  wire CLK;
  wire [31:0]P;
  wire [47:0]NLW_U0_PCASC_UNCONNECTED;
  wire [1:0]NLW_U0_ZERO_DETECT_UNCONNECTED;

  (* C_A_TYPE = "0" *) 
  (* C_A_WIDTH = "16" *) 
  (* C_B_TYPE = "0" *) 
  (* C_B_VALUE = "10000001" *) 
  (* C_B_WIDTH = "16" *) 
  (* C_CCM_IMP = "0" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_ZERO_DETECT = "0" *) 
  (* C_LATENCY = "3" *) 
  (* C_MODEL_TYPE = "0" *) 
  (* C_MULT_TYPE = "1" *) 
  (* C_OPTIMIZE_GOAL = "1" *) 
  (* C_OUT_HIGH = "31" *) 
  (* C_OUT_LOW = "0" *) 
  (* C_ROUND_OUTPUT = "0" *) 
  (* C_ROUND_PT = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "artixuplus" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  MULT3_mult_gen_v12_0_18 U0
       (.A(A),
        .B(B),
        .CE(1'b1),
        .CLK(CLK),
        .P(P),
        .PCASC(NLW_U0_PCASC_UNCONNECTED[47:0]),
        .SCLR(1'b0),
        .ZERO_DETECT(NLW_U0_ZERO_DETECT_UNCONNECTED[1:0]));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2022.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
C/5Mh/YfQK+xvzcE2CGtETuPBeLiyJko5tNa9mMrxf8GTM/0mqqMZ+vYDutRWwlkGLoBJ0ubJ2JM
hSYnF9uwe22zt9N5LFdSRZxMoN1o6c2PdIJyFX9QiG+G0k5olg9eEzsigfNpc9kE5brQ+zVlZ0BV
klXrD05hnhWq+ZJys/w=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
nhu9PWmxjSOqIMDTXJV+4qo0FPiBJCygcWuN/bfQzqY2oUKKM8378Fb2UT55vg8n4G10m17vIBgN
+Wy6buZC7GhxULhm+9qKdG61k/7yfhvEyQUBzudlOBUaIUk7ZAeE6SGH26C8h1WgBFSBJBshielG
kmSnefelvtJmMqQynpqanYQE+2/nM45zHVEXMtgEl8NM+ittmjnbmsjMG+VmkcpjTiitr8v+SSgM
RUwmbOuITmj1SaUWkm+IJTDW4bnipSqF0iXScNDVurlEpJm4oLvKdM1ottYIIcXR6+Fa5dGLRubI
LjYe8sQ49kCgXyYdFk4JbJANd3OdYx/U0839pw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
oLOGB6O+5m7WVYa3aB6L+szJIkfErI3K6c0Z4Xd6Cc9YLnPbUoTR/E3N7bfACANo1RtCR1KrgOT9
QRzSpMaWuUNpHkoBWkpOvvqpujGg7n+KNjtsXpeAJDMZq0hpkCFMyTIbglQJfVL4ds7LBIztVpT+
XPSPp0rHN6MvUs/o0sQ=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
b3H7uIeGCIVDgn3FEC671rtMncRXCjR9RBfw6OuWzlyF5wFk4ElX2tB2gwrWUb2Com7mmOGUcT8m
dWBnb4fgFyaI4CcP0cDJZ1RBfKHzHsnVnUtydmh17jwFjOhuG4oqUfxDBVOziYixuf8xqsPD1kIx
AAGgp8eCh/3TTWsXe8MqUHFhWLAFBHiM+g9tiFtJxHBAyX5v+8avU7rSRQOteILiCl/aE/ZTg1U1
TZRYZm9xCtpTek8kcIXycf8cf1vmkeYfjYqsPcKnLXjswHKcSvCTgJBvdf6/NU1hADbYz5krZkN6
cP43YF8Es6pXZ5MZxRyvAulHMEmC1vBKEV4L2Q==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
hNojWTRiv5xJXFjSuajQtOI6VJWjSVIasMceSy/iOADWwlykMyPQqJwBZv9vgyG2lsbPzupIZZOt
sY4+VQKC49eSzzBiqlXJuuRgTh4eG5Sj78MJPFi8Z4JHdANbBDjcsfEyFcFinPG8C+6ObqSWv3sT
fh66lPvK05YKvRong1DaI4yDI+LeF0XCXF9jXawejRWPqZyQQRofEUn3P6/HL3rOQ9WrwtOgLOh4
eld6oolD6hKjdN6z7BtfypoG1+c9GyXB8peQYSYy2mC/UhPM2He7IScIeEh8FKNZOETke8ShtPdd
8KijcT3YF0mZbR+JEAYmPRwljDtmkR1nmLPJ5g==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2021_07", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
vNoNhNOiLgedrjzCipcIWa66MfCSJrQLJjludHrumavTx1oA+4ROcs5sx9EIY16AxVabVb6PSj/B
6g7QMmhWOHO5XWCGsLGngpWlMaz7FPJIrMDMH0FqHULVZgn+ytshKF3OiHU9DKUfGAkx2o6xKR8J
v2jv+NfcjYrjtp1y5L007VCIwcNtkKJJXaDQjJxbYYOB0uzxwQIXRo+SEib+esXDvZD6Ikc55nl4
wE0bh+voYoBpOgDoGMiOgpg8YJnYWFS+aCT4aHJqb0+12fK4HJHyN34p2V9mna/PBHxQttZEjbwL
t5GBDgl9IiQOzvoyMMwa3D9yJPGWNEJTOJaUbw==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
UWO1yL0EL8CXhMsuZN3v7pq9vqI3Hx8I4AdpxQRWS35PlhqAcAjYeBVG9msiPa5PzWiULLQfpvtc
jErP46XJGtGsEiYBMIv0Sy4sw0m1buhgPQC3ebkJgAk3bspWMUEsvYaN1IfFXabxN+RYANz3tJ2Y
oHgpnvvpm8OrlQUsgkwwn7FgVUGvBHoaj3vopWTMROl61+OL1aj+VLKQvwlZuA30e5yG7JAT159Y
e+xbMUxDz+W4RK0kPzZxnlU6X2HGieEEqGVzuAHvbaqUsRHZF294LqHX4u2WuTM74rvH69Kh5wL6
jYEYgCU9ma4gBAA98slrAnjNqn4bY2f9DG+now==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
iXm1XonW4ervg3D4DUJphNzJ6vN12GMfC70OgzuNrZ2kX9fFpWbL5IBPnCTMNnNWQy0GGe6hvPmb
j7EpeR3MIhJR5BcSdHMR4BVvSo0AEM+UmieNsuTc7dTw++8EucnKuLvloLldJo1b29DO+LZfqkGP
M9z2zkXfSVOqQRNGzxLR5gGJLHNfjxGz8MOIJ3HaDDAbO1eEgkWN9ZeesYwJrgERNSubcEhjLzl8
dVi5A1iTEa6WcsQ7XpUZkZTrHlM+/ZUnuZelrt2eHwx7m5XAZzHXbVz6YPrxLVx80IcJzqkykiEp
dMotGjzHWB0+tNy/gRFTUB5rpFt3LtF2+O9mZEf4nNluB9zmYqmvU9T4zeiID3NuEe4WOZjruJ0Q
gBPt5imaHECnAFxZ7QWVRp1rGkX8eS8I5qjfVJm8+pKqvjc1MGkAv2Vh4RG+n36yShUI44QIDYIY
zqj5fbexc27+CEmjJEFy/Cwik0yDg15IXyQYIkVLbBBdXfuQsGR6lI0A

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
e2TCE/IVroj0BoMutEWWgUoHdqmqHN4Vq1aGvl8tHLqPMgKPyusaF/EU/+MvsIWjDyZip1MmWOcx
jQu5Oy8IWt51LTRIQJ0x+kU2WDMNmZRHSdVAR8ORyzaV+63xJ+1FR21OuVBTsdN0zc5+xPOZn251
Ih7Dkw8u+guep7Yr4t3jgw+4crsiBVVM+5WJvUb5HgZZLCirWswHL2EOSwrlxmh1UfYzXoib6RPE
Ra/hqZSom0279kPBw6Fx+riPQZSw7jyFJal9sJMpp1RQHG0wo0DgA0V8Ot4NHxUc9Fwq4+hnCyfi
r2lvbn1yjpQbLFKBIZrlQAud1cQVbPc9abtdFA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
WtU8hWyXfBbTjE0+nqKbC2iCko9oNg3crZaHwq38XBU5r/TB6HRe5kyLeVJKivZS+csZXpfChsUY
/jn893xdoHiCR4Q20Ur0DdTlU7WPdwBgOVooaDczD95Gqxjrg6AW2CURVevK7MxA8iaUw8KJxXJf
2mg9GojNsgmIfHQ9iCnBgwGvxp3DcpgBSPkaXxRLS0R5pCHBoNBQz4UGVAwskVAY09gRvF8TTsGI
CiniLzprVtUcAmRcycxIaVRxTQSehzshdLDZ85z3JpHDkfDrXJef9TP+YH21QXG9L2wLA8I23xaa
dSELe3SgyfxhaLOuvGDyhxyOa9cs/dEvRMnROw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
PsoVlegNkGvwmhNkQ3HUvE3lQJ7kZ+zMcQXFPCKDOFAAdckLvLsowbpAEmSO8JtX5t55DWZjE7rV
2WAT6PMVtpPTk0wgpiYZaIyJXxpOI1ZXRWL1iA7k6v82nCDejQMnWBlywpvHVttqv25jNCzdYYi6
V+ICgt4b/rxB+nmO5DP97q9pgy51y+1+SPB1ocGVRb69X/kQJeWgvX1zGT9Z6qylsSqHAiX7AuUa
0I/JQnXowrTJm8iiieZAeH2xzmxPC5SLIK18p6tPaiUZH4ECtWCGjvyUeJaEVT8kgTB+I4K7aMGY
ZhSYWQohMkbwCmEeVAyK6qUHPTqxMz0yRpsyfQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 11312)
`pragma protect data_block
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
WHc0OQPR0wRnWfoYjUyhQPLAojMyEbK+3A4=
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
