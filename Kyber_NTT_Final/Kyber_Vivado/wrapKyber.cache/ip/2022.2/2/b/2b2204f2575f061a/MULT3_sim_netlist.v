// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Mon Nov 27 15:38:37 2023
// Host        : DESKTOP-21L0LE9 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ MULT3_sim_netlist.v
// Design      : MULT3
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a200tffg1156-3
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "MULT3,mult_gen_v12_0_18,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "mult_gen_v12_0_18,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mult_gen_v12_0_18 U0
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
j5tytvhNremrcJkXuNUb72wpVzmTD9v7ZAWH4gTADwSB94BpfJ1WSrFb46Gj53wlg1wJZ/jWdqvG
myyJAbkTkZbRL9mLkHNVddmHog6IgGLhlDrP9ncqrdlC58+Y1v8Z16urnBIJ7OATm1TEv4fXK+0q
xQiBfaef8fpr2Uk+EqEJqhE7lsFBa8WkOPST3lQGWWC+KVvX5pj/Sf3mGJB1Olh4LDKWJQ8mrs4j
RrZKlzKj040IgbYvxM/DkC8uRLpwvfBVegAc6Wc5mTlAEzKAIx9IubjVUbifQVLZ8PXE8cXhcjiq
WCPKT5JNWdwEVTqNOa85BMX3aQeXLqL9GolUog==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
BqccjHCv9xiJEV1DxrDB876ujdUfkUyaPhekbZf1czEwjjD6qMhWvt2OOA/y6S4Hh9d+IUL68Tx2
jiXhgJlN+rIkArfkHg3EmWNx/GdtAib+55RlL1PIiwh3wun5a3THz8dJ7Ve9Rw1efKS3gOFXpTW8
SRwDkrsv4t9sxCJX4ETQ8sNF0P0MLcRebkHnH6fe+z5tY7N1FpDQbG8vuzsvBXerVnfnfGXPre1K
28syjFHUckw+vtESPEa3G8+KSnVOUdnGvcsJKsPP7BMhGBX5QRrm4P+iqu8r3Q9c6iWobBc9SlxY
Km+4ZgoYTT6+13O1Qw6JF9ZaVLW5fAKug8ZUCA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 11120)
`pragma protect data_block
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
RkYHuIc=
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
