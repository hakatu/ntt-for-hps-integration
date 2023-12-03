// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Wed Nov 22 07:37:34 2023
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 11504)
`pragma protect data_block
sH5EZRCkUVRqWu9G4zQwHJDDjL2aSqUwDA+QXbhbkWxDKvyGoJueDekR0A7h7QKLObRNgteUsUiI
gl7AU62lH0jbBLvyW90WsYpI3dvL8TTa3arxXV39YeeTXZBNI3J9teGrqtxuRwp8vFHt1y0M/KyX
qvfEDi1vr8M740hJQK4JtHEHKoc7NOClDjL9uy/JR0imDkIiOvxAsryJSrNFZXGC9WJQJoG2etnJ
BI1cU9Dkibi/RmlUsEQhldSOm25eky++1xPRdIMsOYy1SS4Qeb94+AV4LlH6Voaunr/8Z6WEmLem
o43bvaJSgiWg6mas8D6qDRmdds07mN/v/k5yD80C9K1T5tCW+Zi/FVxuQ04t0Tnr+2EDsQeQoVe7
5NufuwR5mJDaZmlitCG8FZ7MzKpd66WEWq8nzs1YJyYUONUxqqtXHdPtMWmPWjG8d4qjt8gn9c2/
K1aUcADoGeklxKne4fsBOv8o4kPiRXKJeir0H//Qb4CgnwzbAPiMB5MYSTGyl5i1dAvr+YX1gy5C
xWDfLZ1JrtkNr6p8M6nsFdHevdqYX5BCa+IKiehY/AN7C31DRNkYMOSJBjzDliet5sUrxFA/cv2X
rdcSNElqMwSSGmMnE+w5/gAMpjN+HpB3f01o2tAB/w6Qw3negZTy63VRaF/VfhRGoHpQdJBdCF+H
FO/rYq6EKF0f24x/syNGftGtocxYE7aCSVeg+f3SoBdc0kfb0Gm8eFBZJCQpWRIh8mDivRiTqjRB
sOd2X7bqU0FyutuWMDQFGtHE+gRME72paE7MTpSrEgB+m7QmQZUd85C1+Om+Qo+pZtwhEsEmGf4I
+alUF7zgpAvB36ZrpTWmjozgV6uWjPAdR/wWGjaMpxE6pgDDmH7tUauxOPltrRDEsv5tLYBzBtBr
GPf648foptuYlyYXQox/WLUs+pVGWUTOyw1jZf90rfbYzSNfTs3i/EsJGFTxxClR/qWMqX/nPjZf
XgUimqA6IB9NkRL7UEPziCGgOMVw4bA8rTLfiNy7zi2oRUk9WN1A1aUPkMz/AFXjIl5aRMcQGDxM
NRMs7QrG2BKQjAxnlPUGg5R3ZjElaM2KYStpj0QEK3ssbJj7qqZ5wEz7ynmmiCVLeA3mEsfyACpo
X9vZ7IoZeqy9EBMJl7iNZrsiyohLz20w4UDUyD3sMWDvReZYx1so+lbDC1fkTFpQm3EdICB+GyoA
4ME/Vtq+luN1p2VXPg2/Ta4MKuCa926ih9qhLbz/T4YHCuTOQyHnGdH8+PSi1F7mCLqTgzr5G8ju
3j7GxhRzZu60Yb/kkheOKXnZwSCzT1MBgNWLq4Iba/9n5Lx9qb4wvaoo0AWFogUYuQTACz8ORZsI
SLx8dc0rjQwL41Voj1aBVGhe01G98/pe2/6kF+EZXP5wKzKO3XGjvfYNxDQj3ksuiiFkj1ijTKAY
LHuY4u/4E8bq6Nbodd/PZQCDKngHCdWcyoFld6G0azVPchYmzVrLEKca6uVXYc8HKmq1rvKPCOxo
qPDHqH7Dh8vO2fa9DSX1zVc6W13sQ71bQCoMYHoE6iwYNok0j61anHs0Q3r+buhzCT/bCAz9pjDW
2kGsRe1va7EgiSJGW5uN9zZl8P64qSzWYGiiXa5GHtSFX4ubPHlPpuT1XiYUUX6uU/gt4xPXKNG4
wonss0c1cWdeOzNymAyVD/5t321IaBvAKVY7/daM9nsQrOA41Hp0BAHKM7oCUowUtxH4MeXphfj9
LfEjBKTAvB0wTI1s1iQQBsSo7gtaN3XqIWSlO2m/pFMoFRP5731q5JgnmiyK9qHV/0vHeFoVjk09
Kr3wMl22pgJWdx3WAYYWw51nVvNrd7uBeEcBnAzLGpNMVEEplJMaDhzZKFVbCuAXH7Zg2N1aaaTO
soHeX2flhYgDIfEZkgtEH7u21pNtVUDlH/BgDUvj+aSfLqnU2SPOLIaT1KFILzNUK2pB6N3/+CS+
zOol3kKV7KGoxT3MlPAP0Ydc3bmoMFQof8b9Pq0EufOqpka4zB8zEcu7IN4XSJmbS0xLcgt1uQO2
APayPL+LR7f40wx2MenZO8q8BuXmbPRzzToV6I461AnXzKc1Z3iWfIMnfXqqTralk2dvBE9MgRNT
gUz+mFZo3HDCVu3deyJIzCIv4cjPhTOdmhLHgK3IPR8dPPLf4JDFYehdlox7iD4/d3+8cz18dW58
4EnJMGhf+5mBXC+oRPvNPDz+RT/YOvnavzjTBRIm1/pZLy5GNLAqB+1Gx8oJcacT/8aoVw+PFvi5
fVq4Dfo3UzvFLvN8TmDjmX7GeuA/frKNoJvTdQodZ4rMapV67v173UFFYgfniASgXjlYx9awWpAc
8DiHcJT6K+5amPqVwclrnTX6Y/VrTbC6MXhNcKCTnAN41Fp/3eGGLXtikujiHEubNDCoRnBwCQJI
+sLrnvwGccwbg2ul4C4S7s9CBmsQoVFrDwEAbxmQUY076ICmGdvRUon3JOtRKfjzdxjzA7At64XV
1eY10DGDZtMaxrB57R8Cyv/3dFPL0Cvj4JKkITlV+7oieosGyxGonmZu7tT0MOp7p6epw6ymzehb
mS5af4FYjTAS3gAUmdcZ1DKHoIGHFgAVcXANDJam52C4owNVapawvG1ZAeXEr4vMgXpOmELPdHpr
09k4zU0Jmxj96EXjy4T1IUCMGatNcKNZHAcx6IAqKtEtT2h4N5xaZnOTBJXaBY6WzeewcolyUG0g
XSnz9TfGgZ4JIYovBInLUqPmDPBNDjEt5SPZ84XXwL1etnJ58K6rJH11BvdDmqYQH+A5WiHgm3ps
rUZwJpXhH6UzM6GDkHU9Gx9p/FRX3NH/goH+THD9DJhLfdufAT+FrMEVAeCEZVCWvMX4p7LfJL4R
xD2Xo1BJqCjkOur1r0KAyRVf+uAwCe1/RKgTCPf6cUe8NEb8Qr7wfYNxbGYxcX4ZQxd7IBdi5sAz
0X0yOzDbSKgxifu4TBwj3w3dE6A/x4+8LDtEdeeYrZDVv2PCPtiV88BWHO9EMtNSM4WtA1zr/Pe5
Uyvxvj8d09VZLAdbV4uiChIFZzWb1+QwuWb3SoI6Li4MXxUazEV4KQcfNJBT3RIvm5FG0Ol2W05U
73sllg238BvkDh+pvAwJuMfAYn6DdBSWYj+v/91LUdFH+dxIIAZPWvMJYvEGcCwetsprNI1v5Y7l
swpilRx5n7nxyqkbi66nhm1H1CdZ/KUqTaduWSzWTQ/i8y3gs5IUkapb5RdUpgp9xpvzVSCutlkm
KgslUGw+E9RzTgVb/0JsLgHdjz5Wam/4ibzRY4x2SqJDTP83O4ERvGPCijwM2U6zFJok252U3fYZ
EhP5B4R4yhY4UZFYToR+V5Wn7nhuDmfiUYU3F3nbK6bEHY8PrXReJjJyOWEbLG0aGXRpjXlDIdTp
OTQ9Z54xnwyS59XduyRt8yb5mgRdLfGfj7Ss/19wPhgamkqVoVJMjDHQHkxhHn6tro4NdvTHsoFF
3n5zX2+eRujt36j8lzN0vkKTtNlOsTTa7wVEQToZO4/3cYT1/prfW0+Gec9tIVLii9BF5UkqoprR
aPnoVmehboXYL1n73ifQOyMY5lPzqRCOsNSKb2VSZ0czQB+a1/n0xyx2j+oUOQgR9uQVTf1gJ92n
K6PHeZ9qTVSKnNWIHbbtr9xRdJUKvzE/tBPAaClgSqOZcq0rVgHNqi1dPsZsiB7QCQr4Ap1Jg7jM
OWBagZiVijVf+tC97nzIy0D3q3TtWILFlOOyCv/QTs/yDFRXIZd2mp31frS1VtFgjajcQIIkE5Ji
INbRk9M53D0t7fagPsJ/igwX58vfx+v9e4v/B1KVAaZcLTxpxabciY77BEY9sCsqRUXwWt327Y4b
hHKdum7LXu7zXxEyRO7ObPB9CLs1TA5Ais+oU4KchJ8ZgUl0MZVA2gP7wf3Ocosw4Xt6XgSykaPq
DnMCdUijSKqPL+McmvRqYZHmvrcRzeiDVbE3l8bL4sPdRCODgHm36y4kXP/3k8VoPmWzb/Q9r/rw
xZ7oU8ZvLLZSqyHMJ4lDiySUY6i0T4eK46pBD4+lk1koABFlYcvE01QyQB3r9YyRyeDYQSnCgqrn
IlGOepRL5iY+b/bXe+URsQd/+Vl5FXpFMklKBDHr7J+Wx4cwBOh8WoYseTWlTCBzX6ROQE6sNOMo
akI0Lue0d5WIaFrGf/6r4x3HsUnQNqRc5kjk0UI3g+s1A2Upz4FMeMAsxaWwo0oaYpgOIaLX5YHU
tIRqeEQ8pTZcEhTkmTjoTJ3tcfkKVXESgDj7rBU9wER8kBIAHY3/ykyyliba0t7H5emwGEbj/0qI
Vkdt6j1ABKaW8FGh4f0NBXxljwKSgFeSE4fQW7sYWsFpxmbH4FZfcMCftM4BG7Rs06LqIUX6Va/8
UE6bzJjyemaLNbTyg/LiYL1v1BQSsIeSFQ0V2BnAxfJwoDsa1ZXRPDYpN3iAip0yAHL/lw8LvDuN
rMcrZnrFwkhE2SiINIkzLkZqY0RKKFvFbEXKXv/Mz/LlbCLVK2ZwTWl02/JfnQW+H1JIg2qkQ1sG
ZIgrOUM0VuC71/zeQ0x4BchEAnEwyn7IRBNwiH0/ofaEl8bbqgIlgVDNJlWBnv4P6k2ggwzy/U0E
b582rRuQiEJXwiyt9GVo8r1k0HvNWGZ3cNypKmchcktKbQdoY71hiYazU6ds1SPTCVybGxn21D0y
ONWVFXcSS1USFjbiOl9eBEYOXQMxXzSNp/g978eEr2OwFV6xIaGJs9l3aIEaEn2KOz5nRsVxd/5b
OiNHYZ/Bmq3viw6JtO0WUTpwKlY5vmefsyLphUyM6BwHerlVCNs0jXH2+hLHzMLsYWeyflEoFU/1
KdfPANfeO9cQWQLKYgEso3fymxFp+AYlBuNE8AH/Sbp8JN1FP/tF70PycvSQDTHpbwTbq197bvwy
1czgeV5h2vjskeHs9hRCdBche0lSnPUF4psUEpVU1y/Lwg1rhyk5CV9PjYKPdGOFSWr8hcU18JMc
XBrw2xv21Y2ovs1IyqlZWGKHNB6zjId1QbJleC8odNtQtnmAKB9370EF/y8g76VJY2It6cpBFal9
R0R0UWP5d5R0qMWWiRJOE7EFIYF1eu8ZCJ7ekRUeRSnCyNCYazB3LUsxXssHC/LF22NoZHdSibZK
KVvsUNOgkbouyNcVRW6uIx0d4ba/1yBVHSeDXI9AfjJztleChrzcMmf7AcsAZKlpIMRJNkMHPjWV
tYQdBYM0dOjyOTcbQIaXZtwGcs3e48EZM2Whll5a+fXZodvp6lrL0dLrTrDABOOT8rjS/QV1XHJm
dmT9gTIPiVm8XIBkTDlsW1luQMMAriVdFO4wWlwkYxMiN0KrMSHN9CTIdYTY/LRiguboxxKF1+AO
CZN23oVUoVlDkxoyZWPM18i284RyLn7krP2vNBQopxtCQISdaV2zKMAj5pRD0rPmSyS8LEfIyUDt
e2vArJDVZazfsfdfX8s/wo0dCBV2GgAOSoWQnBoZTG6uOlHSZo0emn8i3Grj/vl/xoX6ZM4t4AFp
GqaDr1cBlsFN9hNX16L8ezOGgIY/rdMnLuQ45r0Wbu8g1nuElMX8xymnPZOTzynzV0UriiJVtQ4Q
coSXJ1I6vtqCvqNDYtIFiWweGQzIHmOwJhs8f0D9qT3Fj5o6lSIGpZEUoTeWRFPBW+Q2+sI6/+3j
n7atc6jE8XVqengFXl9PwwRvg+uFARKmp76mh6v0cOHpvpba254RJU8g/xXVjXA7ShYu5PmIDkWq
ip6QrLTfz8fUC71RhPVX8iGhnTQkZRzsSPSaIAqtI4jvpQwFcR9/bmtT78D+Zie3SvhWVVBR/JPm
5BL9BojdUqQk7FgW4qdRGhN/oUprLY+c6MBeAiRVYc5WXJdBNcncNjBJQQPULEb0BX7AGiowfBDL
+sfKTwvIVE9QHm/867ZRbLhshH1SXzOLN8uqWtdlFMeLknq3PRb7n0GRSefaq0PWV6Qpq/Esb7YP
xRb0qSMTI27LYxutwajUvwribGx4y9jbLjw/BK+Iln3NTh7DbPRQL1l1gZ41ssclJID1R8IKO8Bp
tyI194r3meHrq2VrEBjl7Fkmm3I7uvRfslE+62lMTHOnYsw6Yn3JzEjpqyxugAHayYprOaxig0LA
CiNirhMXyR8ciCz698Uajm/LZqwdqutK2ElnU0nYkj5hywO1Qskb/nBLMEnIMTyLmfqIa6ERwpGu
n3n3uPIixbErpZv0ntdfvUZIaxu9yg56GOIGqEYbK7Rm5PBidFqNNqO86uo/7q8GEVIgpWweJQj3
gYqt2Ackgrd7Zjbr3dRSC89ttfLlH59lWoNkEKAGzUW5u2RQO+nVTZar4O0nPdKq+X8BVg7ZOnFv
OB7W88eqc/SgmhQuCVDaPuTI0KXq6v30df1msF1nG0yfc8gCQXpmOfF04gJdOnT/XbRDbRujkQW0
66xWHrLapWD7bmr/AV8ct8AUzGgJEabnKv9/2smCjxvwnyuNIMDQYTwjE/D+Rx0u5zVUKxiz5YLL
ojHLJhW7fs4ryvSEa1t2kh5l0ZggM6zMCDGe9dSvvTd4RalyyjVNgxB3YuYDeV4ERfR/tXQ725Of
/FpdI8/Dx2DKb/UbvDuFZ05UH7PNdvpNz4Hfh9+zcseDeI51Wl9QDJ5ixHn5yCi1wj+yNguD18SW
VMKuG7JE5QF1K3slc8vo8JtfG76xYbA1g5z5zJTj/5VmuBuH/2JGBUfKcPo/qWYPzKWssjSpCkQw
lLmRao9kuyFyEUmKrefw2fpcWYxi0VHEWPqWPssAbeoHIi8yBjAk+fex91lXKQh8ZxJuEi03RZbx
Vp5Q1aGX6s2luVy4kYxfzk3c2tl247obUmU5jQcRzJ1PUGSac5dX3WK6y5TWLAURcHCrvz4A8SpG
fVC+A5WK0CIMG17p5A78d3wNRu4DUBXfBZCaZ4ojaG81CsRL5dtuDcn57iubL5vep60OFVgiu6xR
eY05YtZSGCiCOBMMo/vROkfLQE4OJhzwigG6GHLp433WQBcGnRXVDCbStwpD5Ji9oXiu3qN29aFi
B0fAIbLKWyBdqtiTw5B1Xaosm21Kh4dGNFL/CQaBuZh5awTQOdbB0KNYJMJ5iCUjuc7bWa9wctc/
Z+xvrOQ3sn6BfPJxp07Ls04Ga8P6q4YUz8erI/NOLXkm3qvxAdRZBwnkT1XS1hGGXMQjt2BPsVJy
UZcsY2MBr+1/wJNIvfIURvxuy8egY8IPJ58LwjQvatrvcdyeVK10MdKGDFFHuPQUjx8vKdoTfEK+
Hp/eDcczjU07sPEGyOa0A/LQtzdYrW4iVZF49V5vWqaIm1t8ZVgce5mVSpSl6lo9W5CtfkpgEB9T
psKRzeO8+zfuqxrMTGQGQ/L/rRmc2RA3UDgUhJ4HKnsNb1qMclBah9W3drE+X9J5dbDXQkl8v5hj
ufq2/RG5YUKY8/5xj0Go3X1agUlozL9ECrX8fgedHhvOeN34leZz/0nGI7AQMOaaowsMce1UIC/U
kTb/h8mkSjxQKnpDezVMwo7dFkvYm2OrHXzwImJC6RoB6LbQ+AP62DOQsZvL1KQYCxIJ0X159avj
3XeQX2o87l+Zt1+KAa8buwlfNzPOOShYCIibJSNR+++YYQHqmgp6CyjExHTXE9rj4yVqZU873+SH
zhrGIw+x3oH/wet4zxiTW3BYAraL3Pbj+5OoIhbv/I/z9b6NzQRbc4RJ/wVHUKzZ5qNzQiFb5m+0
n9Xvb3s6tIM4B/Q8kus/cz7TlZdabT/DlyPqFi49y4nknffpf/O16HjFD6sYopItju+lAVaiBuau
E90c3u6JdxahmKdym72yynKYDQ/ckT2z7mcaxgVYNZycSawDPvG/mE9XMWS4JkEKUJfup9J9Nz3Q
skJbdhLd3UrJLNTjh2lXH6Fg2lYXaY6LwTkp/Gi/+oJePy1wMTARVBz/iu/bCQwH0yaghP5FFpEN
rLsfNa4JtUVw3S8rzIsrEIF8Y4fWBw2Rzyu1pDbzGvsa7tPJjLt5OQPVLBVdnG4y1BN7DNHIIvD8
dWLGF+oDnNKrgwwJ7ivF/U39bIszOJxHWirox/bliHWI+pmmDjx9zm3VKIVisYb7ctn8k/S23jCU
OebtriZgfVBYS68ZqOjgOEGWkyHUeOrHFghwzlHoi+8am/H64isuy735vBBe3OmVGM0blXRGRNbZ
xsRO5zui9c02wAREHzAJYzCpIwodOS2+f958ldsWhZDauGEC2zx5RlnqtJHtVskAyyhJq2aQ+Os8
neqQ4bU/EBllPolFnsVWY/BbzvetnBKxsEybbclb4X/rLMsoFT1fpaSxwGOfDcSOHW5czya5WhBv
4SdJ2g0tOjp71exbZ30ccgrh4APJIbJ8uzj2Jr3lVN8EsqmF9+EWFETxJQAWekSvKMAo1RxaoKJj
8MniJBP7xwQsoiz6lNJWD6K6q2noDL01viAIv2zRP8D5kNLtl5hTdjjTSvqjapRyyssapqyu/bC5
6Q5+/OeHMRoEF8baOvGU6SjmSI4a7wvn0qHtX564qdIKKUDGMHAPiVagX7TIOaiNO3A/mO3nnQr/
XteqYl79G7P4DT4zVHKeCm4brfbVbFKX1TvF4lMYcsGyqjrLTycUVAVVCLgk2Y3sKg9El+5ZuBQb
b3Xty48oXqX9QRcpsgxGLleqLj49a64ZyANMQ1FBI+1j4kV+M6taQF7JAae6KqE2hz/pLbzyibdX
vSJW5W7lndA1nkd3P9tEF7E0VUQZQgtcgsWuus/BTdbn4wgnbLL+jDTPEYn0t1tW+FWIatwrnB3U
170c5EpOGNTs6bSq4tYhqhMvWgdD5JBY5eR1pPVnnm55WFbjpFDp7eyCbCFhMH/3U8TD3LGnTUwb
eu/IDzYbfWvcqrHjSeR961xRLcOm8CJPVc6ifRKi6JNs1vhqzjHh9x7of9ZdQqEHIuhlAEEGxMm5
/V1JBLVYyPuZtKsx+MvyXRJG+Fh/98pRSDVeK13PDeEkLg/jjwaAzw6A1AnpBfSEUNNNNFl0MD86
Mg/jQPc/AwLGUuyZNp4SmNbJMpjCMohTrkyCj2+8XKr9ZMzr8EJOHnL80SBS+XBVo4rsQ7J57W01
+lJLSkT63zkLgLAqfneJYfjfExQ4wqe8pReQxSUFK193MCDUmVdyZf1iaCUA12mYQghkzoWZe5Ab
eVd3/Om3gIa6bUlKna4b0FNbwPUj1BIIG707JaExizJgNIQlVHevVTg4htqOTaRnFFCqiXWMO7zY
w7UnM56hJgB7leuVrSyfVFpgGLbJiBRQYAe32DDyK36MK0jGnWMLbJIfmrS4Odi0MIhjjNkq7cGa
IWvRKdzXmXgNtZY80M4RoQrIyan0MktllwRC789KmUGa5oblxKdpG+BWLLYnimM1CBlaPnEh1Pyt
NF1CmG8NAeMe926JPxssob3a2bWjbJpQP1rxPoOyWNh7ttWGT/XD2cyBG+YzrFeQKy45r0scN3O0
sTUZ3gGrUFm2G4urIeppd4i8OuEEmRNlEwaoJ6uP9meAQIpLEkTFSDUKWaO5Llv+rUw8tucBm/bV
XeNRPciaffQpN7GskA9c62Y1efTKj4fSbv6Rh8Iq7dLEqvgjsvrQR9RW31iD+5KHuIQKA0/8Vsl9
Vo/ROZjmM+KmMJH9nOx4nO+dApmAasE2Q+6Wflh1wVIs+fZZnUCILiFC12SUnoZr5XqylGmLadMV
JCGmXy+/vKNnOEIPy5Xi4n5olcly/zFvquhlx0LYglVI5JeRI+aZRcKzdu2Xuwl7AcW3zcxEXh5N
2ivufAhF4+cAkXMU9wfmICX++5bi/oNHhyiKZA4kpsgNgyTtc5R/DwXomz8Nl81xlSRJZPOrzhfJ
kOCPAD0Chv5cJ1gEcu+vfs6K9S1Y4mMZmJYjYuEp5Y5EVfnWba3LiXtS3jclBkGSArP8hzZrtenN
nPO34qI2z3QFjYK4jXc2zasQYJUVPKOhGQdqJ2LzrMyRGzYKCI1CEfL8OSfJJBqSqDO8seEeiMHf
NqjyClvAOTx8Co9bYS6jX3XxZk9j/4hOL7cz3or6VDU03k6uKE9SMN8MDq1yf1sxMtqO5xeVMs1s
Ll6/9STUk+mKFtBi9guCikuGFwcgO8CLcG+x+Ji0A1GXPACL6diVwWC17CTYRf3s1QuvFIO3PbCR
40WoWmGcEM0chr+khHD2kTBBcJoY0vbZkXThTN20Ey+aW9Epaus8CZMA27ZZHBPDuTY3QRAyxe7L
v0JWFfUAj7k9q8s7wSu1Ht6KXdgMiTa4ra2PwnObGUaL19uRZLKmeGR2pmlzhRBrGr6+wx7RgJZR
c5qkN4h3JckRdXso7EeEPgnXYN1XqXO3XvRD89Sb6/1oiPSNd/muVTBuekkjP9OKbAa+V1O0A52H
tKqwzrL44WT/VflRUohe47BCVuSVnoELKeXzFJAocvK5zNvEl9G52q/LUDalXqYrzvddqdej1Cea
HFtaJqZ+W2YoQyBAWQ4z9PXQN7YMy7Zirn93jY120LFgoWlN90+sHZPLPjVqRHNpWAfdK9gxDDmC
dAeJdPH9pW/mUDUJ4O2e4M33vEGylUbJdZIaD6DwRTAe53GKDQgnauB/xglL3Q+BHrvXClV+h6Xy
3QFeD5TyaiwrhVFVblVFS1Mw247Pi3raPQsJJ7WaaY2eqMyjacbDtZon0VrF4h7XjKO+mTSk4aes
S88bLhjzmfrJHZv9iRhomlVTCv+390fHUW/c5vXJykcOmHyMTwh7zQPWjvF6M93pVwE5uykqaeGz
e1yELaDJ16qdxOQAViov7+3jqWLGUJzI3TL0X7ojqQLhCZ4/oT6dkEykk4HKcDM+5tmVEdRiUK9S
aCOXvWR6DD6lUKhMaTyZLOD0QO/sFPcfcQgdOpkAMsQSOK64hv/QBn2Mlb6QQ4R3G49sxnPFJOYt
JWJmYx817ZOMyj5tieAXrwzMha8DGuoA15VrCX1wGGwlSdF+bnVES1u3EzOtGRUaaFrzH+jEmbxW
8pl8Nw4QtGeT/R2vkKvZJ/TjjdPyuZKKB2ku/7TWZJ7tVFp+QTcfjZwhUUTUi4Gb75Q8sI0vq6k3
Lmaf7UeO8T+MXvpJSLYHNQvXIBvsj7wD3QduhLdthVei0bSnnqUrHofcwfmkfQQuGgQDaCzAJB+S
K1Drz7jXw2XpjFgx3iaGXXpeaFEnZrPrZGHtP7QN0fM66lmUN/4x4lTelJpOcpdUl5+Iia9t+fj0
249aZ6LKTzjJwazYZaxsZYCTrqgghw5B1PKbWWuSB5NIXYmhyEeCqJ3J+VoDKx6LmY9bBe45Y78p
eKTK0qJj+MSAlPLigYXr2JLvgxtxfE8hfB2ht8rZNrbeONJfeySmok3aecDiV0IeCPyJh9n4wYUp
7qV9FBA1T5vrli6iWnHmmR/zwdBzbCCmFndsYkTVq0AcBl1paKQYQZeTaLuv9WQYwUc2ItSdObfH
8x83IfSl5YsnR4HFd28B2GXXrqxUzRYyTUCri5y28YWRHKMuVQtHD6p9sVTQc0qbGvgGLAEgmFDq
x1CB2RSYUH4v5vmCXU4Xok0gX4hugdOGGOxUJ/sTf0z8ZDhP2CQYniNDdfXSdYOQzwM/TkhtTF0p
Azy9byFomqWXYW5uw2pxV1REvhHfeG79Hfq4o8J1JvdhjFhdI+GOnFASN7wsAsbc6+Z6SBxGPelc
8pRyCHPqJKkSLwRv93nUCvA2y0CE3gaUiqw3gLD/wNZtTHIdILakHQlCIkklG/josKoR94vytOaJ
Hmd8yiQcrLoE1GLEBcpmlt8msdwZHYHx/qFsxaR7y1sI+df7NG3tXnjyWuiQpR/HyJ/y0DGGtgPZ
rI7xv//7U2gdA29ZhY8Hnqx1gQvPrFu9F5Sz1pxZ4MxpMHPlgiDnqYCht3VQ1xJ9Yw8CJvM0Maah
qlqy/kilYd7vFM5tLdSvpSLIxbzZMhmyqLsERAh03mFLgD9nCzNfcOjXLtS0I83HsBrdqU2l6jhZ
oUg5VPnqkpd84ItquFkVVHOj22JMLBscbRY5phuuz2nlJdNubBHLz8IM6ZEGMdndq7u8th0s8Qbz
PX6dPelle//gSJH7/Lh/7aQ2eb+bKSRMoZOL4PkwRBpNZi/GO8PZG0C3VLL7Ic37gqXquHGdnsQC
HP2YvNJLYB1OV81OxYxu7uzg3TuOZyjkJfi/wf4RxVP/utvKVHFjz+eNa1c+ZMXExFIVIo8PVMhM
8g1GVsDwyST5OSeBlK+kRXwspRF5Qv2k9QJusxgRjxaJ1bZbZeYF0wvAZ+UnySusawYa2rjm2w0k
Zhb1oZeVVToSUIXwAvRg/Y8/HnZLQhvBOyhzRCK4POJUlhiCry+RbXM+n8t1yTWsASSahc+P+Ymx
Os+CuSvo6XwTv5s+Onu1hoCceF9/VRA9MxC7wavZ/lyJg6Alzr3uF877Pf14wYJkJLxhO09sJSXs
eU+l42Ao+qBzvMlkEaxe/wmt0bzjSK/MLkiAv9pvnrzHD6TvAXfLJH2sCIbgRcWrkEodE620lLB3
wrHY4O4xmKJ80jolPWDRh4kB/jCQk9QIw7hklI0WyNnPrR+Tuegj/DFWUCpuiqhbpqMGjPEZvIld
X6Fi/BOjPUkQpvSzJTWWGTDFsoilnnuzYFRzF1XN9OWgx6KIH7JpsqOkgQe4a9/Bm7btE3atHnus
MQ+y+9SHAUCPKjrv08rTNbJ5g2ylbUPlWDqU1+DQzuLc6foVQBAAgs0st2b53+UIc/8/65QwRI57
q3ock0ktp0mZu30IHHG2u/gaxHtsYOJHDl65kQ/78EKz1dqfFwCAGcK+nBT4RKaT9qaXNZwh6+6B
62z/qXKjPeqpjBwy7ZH84d3qBCGeFx5V71z0MZEAmtuLpU2zJ7Doj1HESRordhNGXVx7JFW2Ch1A
AzNFwXqar2LARZNBdfk+YN/dCPX8zQwtDFEvGYilmtPoz6QSagpc1ye4z0jfJ5orJNy41TmqvPNv
/Xm/94KrfE+davn4ZQOhG+SPMW3hLJ97KO9pJg1DVEv6eN6Rw5wuVTsanF1ULLY+lynD9WVZrEGd
Woh4X3aQTB47TLvAKpvwAS/U+gE6UzL535n79I6/vkuao+FerEVBRAQTfgpx/H1ARqwqirP8CH9V
9Nz7ss5dpItZ1gH7bk+DRliTSECz8F+MPcfymw7SGSEGLopNK0nVZJKjquzdKZHGhI7MpvkTQTGu
9WHgV6UDHHJZRY2H7fRl1YG1SAKSF2m5Qqga2rl2z6aveeP/vzdfCxZyRizkyCWSGryFVCJhwYuf
59HnjoXZpy6OmZ2x1b6T0Fl7TYejFvLDd/u2gV5HOb6ctqBDAIcSljiO4amkc353ML6t5b4Bj4oL
G15gw19xFh21K1Jao61ReSRDddbYUbVaUKglZBtpG2zgCKX6iVJMVrG+mHm7kpq+++vjt57b+cC3
3KtB7Hgpss2oMagedERezXTMeIqOwsXTCAp39WsdtHdtQJlGWYbf1fgjyU2BXfxRUO1+3GwY7ScU
9hR0Oduj5QXxPYDYvrns73n2TFHVbI0Zy7chx9Wtz5+azF067PJy/pqpFC7s58N9YC/ERWdpuaam
zgZBYFc4kEAI2eiiJVd0DFEI6G9+VRGFFxRXqT68ksTApAkz+Zpljh4YzwxmBJtZVFp4RwNeSxlW
0oxmH/CeTl02sePZRPLSXWvp53PPZ+T8DxwJVPoiFZrFEYyTNZ8DdeYp+Onne641ZHfyOVjc7gY/
SZfNynSwMGF2w/TDv3jyrOU8yUaUMZ2+QouwOoira59imrveuI/UvyJ1CSrK6DEXMGVii03UTU0V
JBSyNPptGfF/MG3oUX9zPJ6QPuKjtvoWELwOXXySJ9ZkN3zzOnVoaZUh8IjM5/9jp1bfj1Nuvwh4
cvWPKm7n9WNf4ACWEkbCMcfuwTIo4z2oiFQ1+MHmycDNkKddYhCnn66mtDTnkvY0W1RYt/XANHdh
5Op4taRm9PXt0jwHs6lDaqB7iXy+tQzUMllaAPZ9dJxyajrzP50ICu/KdvVY9eM6znMtSPyC1fTF
kBm7J5byFo8fD68jXeR8rjy60RNkNeA1nfM4cDY/NSpSDHEjp3PhrcmAI97mRALTkF8OQZuR9+2B
1cwL6KPsRP7b3BSHs0bUGp7v1nCFnOY7UZjkcSmUxCmtONIfkwsVCfyosDxbgaH5o/UV9BGArFOt
LX3lxq270HBe3FsowT5W3EzDkmqZbM5BnxI0kEuX2+sR6GnLo4hG0RlU3IFxHpyqxpESJcxcUF1H
lc+QGy2CJCKeY83AYKP170zDOGAC6ibjiZi5MVyjCoSmdCGLkrCELvn5HsWn5uJgaaZ2gXBNHVB8
0/HtSxQ6oygYdvTULc8yvghGbI71L2EcJRwTFGF4OrQXOnUcXa2JZDJCvp6S/h6CvIXGEm6WKCe4
RNCV9FL0xK1Y8LdZCOTv2fndrIpHQU5GFn5Xk6721RfLGGZjX+9Jx3Kn3SmfbdmHFpeRElxVvs+j
j56EAlPZXRqaHaxhAg7hXl6DzauaxLwqBAJJoh8t5WrPbQ+5XXzTGp0d6VhkQWtmf/560aNlJnJw
2iFUBAt/ffJVgXZKtFON8pOGjvS8CLrYD2Sx6IVK2mee19H8n+E+LjGhFQFMRarPlpO0t2TZMqdD
ruER/2/KwkN9u75k0iJTI3tJT5xbFp34CVrbfkjUX06Cu/PZhYcy7pgEpbzZJpeGA0SU64zieSl3
7AeYxhgdGHl4xmzdZw2F5w2W9sVmfPRoQxXoQyViK2cAyVGNOa+hiUzmUAi5+w8yL7dtvMhwtJK0
AvKxjpAGPr11mNFqLKWCmj9Go/i333IOZp9F+9Patkv8/ThCIAtyIhzTOpgZ+PKyft+E7tAY5yKp
Zzza2n9HM4Po/Fu/INiY+awwhlk/cm8WOSNZf2aiJzGZaA9DgDidBQ0I5dtPx3f9qzyzx/nhVZWD
WWLzGqKZ7aCnTod3gwNHiFCRBu7UTEMOkkedu5YSbtkhG3apPl3LKl99HeI+XgxCWXuggjiY3xES
N3dSRU50+cknDTkjuNmbbdA1zk/BCGJ9upNojPrT750Oa5cPk2d94sfkkhjvuCWNq9ezjGc+Blsr
J6itk6R+nN5Qj+mtOGutq6iP+s4e7KR9tQmComCi5UHaZ+07iZbUj5SzCkCJdD1tMWEhGxg4I94l
gGuU6blX3zbgoTQFP1THnftlZ+WZDM1GTYahtYNdOUIt5/AWHVlUdJOGSMY8K9GDciG+7WLhvEY2
x9L1hL8vmmi3BoeUA5xm55sUpLQfM9MGpYX4eu9qn2YaXMRgB9kIZ62i9GY7edc=
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
