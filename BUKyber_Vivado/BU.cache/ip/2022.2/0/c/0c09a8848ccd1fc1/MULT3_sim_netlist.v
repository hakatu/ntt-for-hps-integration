// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Mon Nov 20 17:06:04 2023
// Host        : DESKTOP-21L0LE9 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ MULT3_sim_netlist.v
// Design      : MULT3
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcau25p-sfvb784-2-e
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
  (* C_XDEVICEFAMILY = "artixuplus" *) 
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
jeEjc0boCoEpDfBWPCcLXS4Obkq6kX/cKHjV0WucViTmOXAPMjAKDHaKIU6nNbLyr9/tDpof3YQS
AWuQliKtQAONkJmJR5P3MceK5HlUjop4hMqT6UFQRYpPBIjnr68nBOxVu17xWfTJie4D8V4r72CC
5IpZ3Rp3jO02JRtqYW2Mu6PWvIyCpJp2R3VanSDdc7j7oPHgi+211UsDM/LZ6DDnXMPZLmdM/vBT
dyvqg7pdW2gxMli3cQgfT+ss9WskgA8paR35BE8ktXb/hlq7TryL1geifRoasmGP9wbwRl4OxsN1
G1QkIABNDgM0kp3vwxT1lYBmmpB2UXbocsf9Pg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
qDi1PiaqdfGLu9tC70rtJ96G7hNWApztNd8unHQO/F/ctYqu2jCLS2PxTt3PlTVfy5U6GeylKLV0
hW0PMsuots3VOYcrB+KmzpZvHSNUFVVKTmR5MEp0xsYWwsfYuCJZv7Hj0HZwTTUH+WX1HBQlU5OO
bUNWpHEbQ/1qLUZ753lo5y+YbZsEHPRqAucUwyAiHSZuHaHlzBeoULuMOMQTKcUP/wC8p1p9B0DB
yzzE4FjX4b8oOB58zTtpkiYDh5ytA6rO+HgZAiBzHYH7tJn0OxE9BAMq7U/BhFgwNzTfgZywEYzK
T5IkqHH7dQUth1MdbNNpg3QGJ8Lgl/mcAyZ+HQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 11504)
`pragma protect data_block
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
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
