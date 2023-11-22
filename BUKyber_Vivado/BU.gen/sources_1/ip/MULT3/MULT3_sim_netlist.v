// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Mon Nov 20 17:06:07 2023
// Host        : DESKTOP-21L0LE9 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim {d:/STUDY/Hardware implementation of
//               CRYSTALS-Dlithium/Kyber/code/BU/BU.gen/sources_1/ip/MULT3/MULT3_sim_netlist.v}
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
Ak4WTKiR5t2fbpxpO4I54oc2pc2fDjVHDnSfwtX2ICKijc5t9sUsGwOLem9aWOX1ymhhHm1qgKKK
JxFeomZvkBV5QzNaxvtrjaIYVAaA6+SvBU1xZY6LrTTQ2B6fhRWoSf+RBSCmadegfVi+O1eSD20X
JkoD1lKsozFJqv2O4Y4W+JfKeAj0kl+E9tqPNsE4W0mq3SNC1XtX6lvA2P5PnfRxcxWkGtUnU3Fd
c+yqpg8m5Jxi/tdw3uBqf1EgreXut5QsVezs6noZRuwIQmpvPjHJThIGYe3EHrTCDpsQEyCaBfGO
BbHtkvhimSow3uU6ZrtkZtf6YLkhARTpbwYf/A==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
2FJ0v+07M2rYOabs9O2zOdPfvEO/lgoyrZ6TRDkFINJFFOSov1e5x7OodtZKdXR+CDCUpGg+0vj8
0p0Bgw0j7GKeKprDQlX4xOttS/ZQCnOY29eviTfQ+WbVXZed44DPyo9gBQ9bD4aChkNGaquoBw9f
gpd/S8xeQBPzZAgubHhPfALY5I2KEYegM03SUdWYggeRiTIfUF4Q2VknXyk/VX0W1HRqICUFhvvo
NZbj5/DD2yrc3gDnszKykUslzIE42BeJj9ctqsN5QIIY/kuUO2525wt7P0vOozUxNvQ3sP7DNVbo
qu6D+sRYeZ0xQFRhMB9WoBBTjTQi2EzLdXfTyQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 11440)
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
