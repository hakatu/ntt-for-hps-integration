// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Wed Nov 22 07:37:36 2023
// Host        : DESKTOP-21L0LE9 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim {d:/STUDY/Hardware implementation of
//               CRYSTALS-Dlithium/Kyber/code/Vivado/wrapKyber/wrapKyber.gen/sources_1/ip/MULT3/MULT3_sim_netlist.v}
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
hOMe9Ew/bMYQUvhPKM1PD5jsoR6q91r0ZH3LjKw3sm+6lEHLZntDC4VyUozgUMIJV4QcY/JBPA2b
azZYCV2ZuxROP9cRducWd/cZ76J1PvaAYrkFLzn1jpzXTiggyFslSvW+ipwRr3bu0xVFzbZZPfkj
lJBFQl0trVBrmlyxylEvdA8f1ZdURG1mNPjiGl3+wxA4+c1LGZqP2vg2rb4cQnpNqHREeWimNwmP
Lc56KDNQ65WtwyX8qd1tTAmmWwfXo2vLXulotw37/ORcZ27W9XMVZ6FbWvrRj1YcGBpG06fRu7RJ
m3TXTC1mzQOOvT2+Iv6kOfGBjVqIAXJSwNZOKA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
zKZ5UmPMI5FB/w03Onov/JXyq4UiGPMZXquLc5yH61c5g/7ax5W1+Teoe5EldkwoOcOknohrv4mi
sVm71bS3DcltGnWr65qJ16oky6fRHfPkCF1/As9VSyI/YzyY/3ixITFfE151cU260Tv/aY46OC3A
MXbWMM9Kyh0/tuHJn/FKn1tmjDKW0LkhowKuzv7VVOkloX21sS1b7z0oS2S/bFeZpWkuA0sumq31
0QhyZydS14758APd/X64xyXF5sE0N805wO0COzCe3WWpHJts3Vz9ifnXsp/kBVe3BbZux9saor7p
VtA4/A1BTJdzV0I+cgpAn7me4SXeTUJf+v+AyA==

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
