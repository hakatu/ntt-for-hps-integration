// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (lin64) Build 3865809 Sun May  7 15:04:56 MDT 2023
// Date        : Wed Jan 10 13:01:26 2024
// Host        : vmd20 running 64-bit Debian GNU/Linux 10 (buster)
// Command     : write_verilog -force -mode funcsim
//               /home/haka/Desktop/KyberV13/dut_vivado_2bu/dut_vivado_2bu.gen/sources_1/ip/mult_gen_0/mult_gen_0_sim_netlist.v
// Design      : mult_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a200tffv1156-3
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "mult_gen_0,mult_gen_v12_0_18,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "mult_gen_v12_0_18,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module mult_gen_0
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
  (* C_LATENCY = "1" *) 
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
  mult_gen_0_mult_gen_v12_0_18 U0
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
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2023.1"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
KUaKzaiUy+PF6hJx6nRT61A3zj1MVbDVX6brdK11mV39kC05zIh1o5y1c5/Qs9BoLq9UL4RZ8k5f
PhBBUQzHHw+bW7ExufB5tahGiG/PbxoV1ksHXOIyYobGc92QVYyFdI0DCH3/mShH3dIPmGrdhxpS
TWsvdEw5yuZZvJEdWaA=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
GberH2b1XOkDbvTKGmSGGhU/Fy0asnk+Rz+wHciYmi1E54D3qLypHJqt74luk+uswRq5kgQw8X+V
SotRe37PYRcGPwUrz7oLVQf9h7jqBCfny6ubBFEZdHJzfKejbwONTKsoP0fV6pYvsomkz5oMp+l4
7C971VQbx8RU+E8SXuFEz9K8may1mWbEnMdOKSKWCH8RstMZfQulf4dWF6j66iYfBzMuegl2HemM
s0AHlQFWe9anszxR+LpTy691Xo08SJxLBok+RoZfe2SQGG9unFmFn3EqZdNeWWKErQbJJs8VRB26
bcTCAgiPskugXspU2E8SdZvk+xnvjtR4r4+6IQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
nHK/CVHR2PV0V8ZjGGHIFsN/exvygpUh8h066P7lahKCnmrPREwnWKld1lXHfh4kOhl28qi9/WDb
H3AL/4UXLmWER9kw80h5IBSw6yHNPQMv61FdqGBSfggqKYkHF3gC1FGSWA4zlii8NVPGXvlrs5RG
OgNKyncA6lM9KGVGDZM=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
l3xGeg9CwZgotBkJBFaQD5sGcp1L3pSFplSdYso7dOPw7sKIRmPxOpxGjvUbT4nBnndT7bFBhGhM
y00UOg4Oj96DGjm46YX+ESp4r0FqzCbB3uPWSHb4mYLvuZEqf++NWkODANxT+2VPhTkGVmkbR37r
xipajr8FHFniud+8ohnz/SWeVykaTY7nI04i4LH5W9/ThSzfBeNYJsRNAEFuWSz6oQ+ngpz8fUa2
PPtBXf5t/QWrb8a02bHWfIrv/8xUlcPYt5ujanJhaH8+GZq//GeaNk73C/azKONpxpHOVb7K6+vR
YfDqJ/5gMnSJFpzdS2Ki4l56QsAi5Kos8ZIpHQ==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
bz6+PTye4yzmbPqUAt58ZSSfgUFWYJUsW7WngKOl6FaQSaWmYyC6+UIEHjSJ46zGL1UkzMt7ftmb
Ygk8nZuuAwL8nTa6WsUiytgyjJGgkuS6lExFU7HkO/x+OjPOdUmVv+6QqBy+lD75r5TQsCqVbEuT
nKmyuAMIbYwxTzgGv7c5ks73KdQLQ22LzNDfPNySaJ2ov9qHF7eY81s+viQTYWhYLX3ckIYiPhy8
OOxci4isH7SuQKkPrv4NQWN9h2tUwd1mlRegrgs/lPcaRP8OT2Gp9JoBYxzxLONHC9wc39Y3fflD
Qfxw+bjglr5xGvXc9p4fE3TvvB3ArSIHcxhQJQ==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2022_10", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
IGAOeTNlmlEi+iWEJt9fUt/wm7+7Jhp06DIfcj5iM98jb7dROg5DG5mDH149JCyvhlzB2pQGs4g8
owRbbHjJoRYB4sQkdq/PCfk5lDsJXgW7D86M/V5CAaHd5TUGynMgSlKAWkZWL3ING6cHLcoPiCQb
ybfmIXg0dFCkM/ygKawGu1K1Qp6Jn62yLc3yGyGcwJlBwAejUprLmkGWJLhKxSAaZiraIPLsUPHy
8+nj9+hjDomSqlXxrCaU/P3c+7QJ/mkXWkQ1TvTMJrpyyB3SkvGY16rf0gcS4edq0SXRhA0OuVum
UD2b8sdP6zrkXxJjOIGJFBtBC5FWBDJva+lAdg==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
jJGb0fDk5wJq4PUkUAzmDXiu5nBx5xFPbQ8faDe0yxazQT3L4+3WMgo0SAG3mFDI4UXC7gx837fK
YBV37OMFtaQ/aVqti1/IXwqABxZCM5fd+YTDMuOJLvTv9oXXzTSrasGsOgExG5/pDDvhP/s8MQA+
Tw4xAaJa79xQmNVSvmWGyecwvlIEdT5hmHfecs82lPjJvtTcieProVnUMwcU8pRk3q2m5+5g7vYV
5bL5F7skGgy1dkt26i776w/BzljMXPUlShXC11Z3OHKdBIEnT5oB4NpGDTww5RGJLxywsbkCRMkk
XiYCWJgmeQjmHUZ1uIe0JqyxsvKV8asjI1YUUw==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
N3JiRa6NhBC3KawTT6EPvyj//Pt745fGHnOBVgu+8uJp65V7lTVeR1v0adczGA4hegoxI6ymmmaZ
ZtFA4xF2jY3/Fzah91XS2SWiW2NqzYQrozAtG9FJ+HzgAkeX/Sy9GdDVrzgYcZW7oalsBuJ7sulr
+l3dc++GnFkq+IZfS4677VmmzQW4/ZASU9kNE9r2rIR0RN5jT9HWwCCxarCqTvQHnJRsbYG2725H
/RQC+pFpN3sLfE//Vu6pjC2g6LfYE34jpdeb8yN5GkU6ybRZqTOQLtEN8N304pGmRmBfAOWyl6VA
d8txy7ejPGaiu1Hwt+MVXJo4po7vVHRmpLvtP3CKLewHfCG+UykdYqrT8IdaxypDjxAk+puc9jsc
P69yR/HjjWoIBlQ5btY3+sKJe3SardsSOx/55XhjMfWhM6O1VkDGQ8R77WzL9/dP3N+n3zp3hI/K
Og4aveX1HAXDBbbGF89RNpZ4e4elDwDN8o7ZbTI1nZz4y+G7S1GzLg5X

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
F47PXxCoL2GWTplpURu09s8RDF1DBSe6qbHV7iO4X3sgsSC775pbojdSvgqaCuFdgk0D/YZ9UvQQ
AShB+KYwaK+JndRHv8siGXzdvud0Ls+Ls96QKnnoo6Sp5vtX5UwZA+O5bT0kE31HrwGrw9W2y+CA
tdV1E9RQ4Wp6UaootE0aZNFZtDyocXcL0j8J0RbA5CGktFfcB5pNUEl99wvwJCE+PlTnakInMBhn
J8SxJ2OnAx1VKPi1Mr2boRa/S9QiM0I6EKmjgG+p6mbX2uDX56RyDgZ7RThkWmKSLTjV9ylE7v7l
irdRR1Yb+h6xiyssSQEg81ZGk0l2Tn0gTyPulA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
RzQipwxfyYFbg6Jb5SMTgEwL0PDVapDha1n0d8HIPmQ0reBBxfR8jZ8iHX9oflMFQljO0Aj694Pc
X8RqVtc7JvsUn2g+VAhXi5QlpAeHSSq/TI776BbxuNUbFyRXb9VEBy9ZbiNun6KUsTVR48wN2my/
+Hk47Cj47gKqcKLapRAaNgrbV+3JHuNx8rji47w6ognVuIwk2YaOyOffTBs8nh85r0lAD26qBRR6
2R/yl3RCRrbNsoythjYKQ07C0Ocg6Mn3nxqwteD48ItB4u5eY6nU7hmGYx+KuUWs8GkVg8eHssZa
3VoeCoIek+aaMXQf4+D1xwyVUZa/ObqK0e0M7Q==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
pR/75HNIZW/VuBPM8nvWLJV8jP+zzzrpEyihDpqld7FYbzbIR50gModMZ8RrdvqaJyj5LR+u0pm+
y6Nb5477LaTOuaeCxgsTn1Z+cCHKvMURkgpgyVDF7+neW8LKRYZvDZpRTOImKtEIOVSGXdcVGdct
aM8n6gmm7qbqJsg0xrf0K/pUuuJ+vB+zBxxyxPjQcmT0fC8ob3/dVuEYOnZP8FDR2iNoDFThOvXs
WPwWIDiPsxw6hIb3da3k/IKUDQaqkFBaWGwSSYycLrgFucwZLfD3Zr2Bx+8xxP1VE4pLJXfPmK2/
aHz9obj+ZK95LVgLlGF70R2PfT4iUnQZYySQCQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 11120)
`pragma protect data_block
L+MUSLo7BwEtXISzqKAgssJhj6ZKvyqETjPvkyD2XV5kkmjCmw/948mEJeD0rk3BC7KdK9tbNnH/
0TaQvEVHjtG1JNoTbK1sVcZ2G56ffyCFeenl9MJ0tl3uoT7H8OCAxVtkAINSODjdDlHEOhA0E7qq
Bwk8V7RuvsyhWD4SiAn8/mtuzkq09vsIcVC2eFatMEy7DtsvhBIAezo9WPh88PQeeedR7zw+U4cP
Wy6rT6uhkQ1SnGViqkYM8kBPJ6UojhS/ERlnA7Ypvp/cBSHUV4WkV82c+B3NsdEwoNbi41WA9wjH
idMBsmL5V3btmgtjckiJYWxW9jhr80DTNpTT6IC615OckEBhvSwE6Q4iSOInJzDJifcVfdSO/nUh
si0upf068hlYXSItbXixXOVHtiYj2o/V/LXdJi3sjoFRHmCfUxIv1hAQtamWi2ypGFj/w7g9XoNZ
FIpXd6YIzjMP77iCrEl/uN9mer8vAGJsETKpgIqHEG8y1WPKZmUCvdKGr8He/H18+088qiDiKlQV
TJK72MyevSiWKTbJSIGmfBQKAth33MruaDrwWALbcZOcqyW4A+YSvXin31s8gQFNQIMkKAh2imIB
CXDsEDeOLE9AGCRUaueW1agJXL8jNm4VGkdi65fGh6OC+ueYsrdFVPL5keBTRgy0WHMtweD9KmUz
OIfPsrchNn+RucH6Rh5XwHBqU4F//90AMeqwgm2JG+hFQULDHzBm7WsL5u6/l8P/0jB0Nw3uJIFm
VZjV/88T65FXO5HV5ewpS19WNVeJY8oKnvBsTs8wi539fGj2aKB0XV9FJIjDd/nDe/kMOWjYO0m4
kV4hjwP9DZ+OEa6NOO5Uv/cPHBUrDSbi8Qfb04MBXpo+E7YqYUW29TEYEo7NfiAP/pJQefkFUu+7
Oa8mOi0WlNgH9ihynWjA/WImV6yO0CTU/G9XYfzStyeSZjFnFPaYlP1dW8bOgsxbFeRWxk8U0N4L
E7eHIovM88nMxl8gC32sOFN81CFV9R9FeT16mObA+8KFgQ+AZihbpLaCNkkjfS7AZ7AdQXxOtCVc
AKpY6motIFMF5+zUMLlglgMBUND5gccUR2+ENmeuG3HjcYY0bKU3WSvgByKUm8asny4s2ZJu+wrG
fc+no4sal4Yv1kLcslMtJWL7DB4zd43ctGd1kjOl6UcbLFS81BKgPdBAG0TAUJMKDaL8tm1g5RYM
NQBOBlU5FV12H7Y4pn6U8Q9SVDd24y0JtfF2BfL4v5vPSTw2hYjSz4e8kh4jBsVGzWTcPD/nm+N+
j+Ttrmr/GR6o/30FujbeSuVHf+tZwRRQ01k50O2n9kwJOadkvFfaQE/5NIS61BBBZIlw/yg/Zbuj
3uX+JjFoE6u/u/O54RsDD2m0TMOihT2Q6VuVOmzqPcbGgFS/Bqad3Cxpds1XJ5GHsenJEfBRbHCQ
kTYYRKF3hElgxiaLkBHD/sW2B2BElqu73uPOP0fdh7EVTDYgciU3xabLJPen3C+Up40Kwr91Iwb2
x+aawaLRxLF57AeZ7O6OnNbT0V+ZBgUbeHM+yhU8u9bJ0TK6enZrHwLs1jygee2WvgvPuWJgE90l
vDD9Orkb2JM96MViStc6fuR2fKPYQDYD03tLpXKCkNt4IoVMvkKgzSUTP4RyVSEIb3q+WSWALQyY
aZT2LktLFfUvXuuwee6kvsEJFmbdP2WLlllrf76n3dJ4Pk/eOkm+z7PILN8KCmhVMIYFdFJ+4wnk
Kn21htEJZ5pSx9rrphtw5HqrqG3IJzcZXSqr7IGEqbr9EOqnRfVnI32hrnLeGCHwfFradRbZAJom
CfOAC/83/CgevqOAWjWMuTZpOmTQuU10dW4LMzorD/ZW8GfJ5nDVT8b+C3M4MyqUZTBT6oUHrOd4
qGpY1eWqwwzLK/EbYy9oNfriVs7+MHAPIVJcpYolJoNWPfKOrJo7alJpxivjEf3Ph2mUp4YzmhIe
BhyQjf9FD398wOZOoRQDWysOQRLzgY5KzfZhzVbdz0wqoU4EgjZ343sYdbnmFz+ToP0O85I80B2/
CuwvdcDbEFJhlGUyWnqwx82/B1V6LYS29T6DcLcNi5Eb0MT4m/tCfPaOuNvezdzXxhAmJR13M3Ep
GaKx41DZ/HFWeRePhVIbyJifsItWvKQDm6inXU7/uP+4BmPtYX5mNmUwSn23o7LQ4Y9Ci7MUPneF
owHFdjp4PYJ07ZmSsPNjrhLw35Kieny09Sj6d0FhFcICqqZL1qGC3e3dNWn1tLlT0aldGkkNSl3T
O3uMXaKCTqbukoeLQ3e5g15B4WSFXx4pQ6beuyfJyn1P1Ddlfs/j3jqKt3AQSVqHPhUIPY5A2CHT
J1Mr6PlKMlGM5Qy0B+NaQa4w1DfdC+24p125cCCLeEIlvRCAoTcuGyh4IduKWCtDwE96uQkDtV9E
O1jYcOf+VGmNvupChptIvQwkl8F8gkdR1DHzR4HKM/h3H/hjDcYEM7jPz4ag3mKp7gJubdNKfdgc
vz6G9f+1VmEkSjm6lrJwJt/q+XY4Iu04ddFeY7sOSMrZ0o0V4DxjCO8S2Xxyi62p6l6V1JRFEU0e
rKkT1gDCeCj5JdqPv0T8QD0jnlLgkD7p+0Tec8y3SH0KdL3EfZ53MRghIC5LfjZ52odV0CYnw0mH
pp5CSkCQEa6TKANzketLLt8Jqy98kc80vD51ObXXWjUKQfyt1vmsVe7oBwfmWMmaK8vQ2jl0vDjz
pzM1NVFMWI+JHbQFlqg4tzuMC2Lvlhj00WpOuGyO9TxzsN8i7aRxnJ+m3G7qFUBzWkDUuu7LQ1Qf
EWdLCIoGu5faFDTq1oIs04N3AWhZXTH4rrae0DOI3YIY7KZ8V6HEblR1CWsdAD/PcnbuJkvvv26b
fg0poPJiUwpRhOFEF0BGS9z4YaBsyzEEgQCurZ4R9Ao9cJNAFO190hLSLcpaxLwd3PRpbgFhAuwA
+sZQd6xI3vQ2pdK2QXB+pFyoUxjM9QebaUSdOF4W4+a5EEKTXrW82GlPJ2ZBFhnz5p9OZllczhDV
jfjcjnM37y+6y4TEmS6bQA+hu8KAnSwe6WIdGXjxN4E6VsAQXh6Q2fOG29CjbaAdBuIavlu02GsN
0Vq/AuTgLgF1QFkKbDMbhZHplaRrzTSEeqcXaagrNd87N5+jNVtHE0gTcEK2Ju5XuY2z57A7Jv46
cjms3gA2Je9sVmre9GVIErFVSenpvm0lV09MEsGKdAH6vT1MGTQQRtBOAEib/SCt0cUZ1gjfMGr1
Ji3K25QBQuIHb3jsDGdXDZ9fxYZ7C6/Y8VJIk+J1YuWdKTXPxU1+q8WW2pu8v+eMQtB37o2mSxx0
Ht/1wa/1QvdGT9QkCJbj5szjWqD+4MgHKohCxxzX+u2+xIVGFP8B3lxFl1kso7cIkup1Vt7QyoTn
cz1nAMeqdEccprUJv/YtoD2ApaXV8+cAaQLraqkSzKSgwTTVoTbWMn1WjPOMe4yHbO2bedL20rdg
U1gnkR8pqINm0lMlbw5NxMmyN9smJymn7Lp6lz7EN5FClmYTPr95fiSwMWOkAaEekCjdnk4qh/fD
Pd3od9zmOgnTIKS/PKML417B2xDDKBni0GY8n24U6iz3h1XQSVlnktkHY5Tq317j/SPRs35DKeDW
v76nmzoUKF7KCJ3yvjh/J2oTsTISYA+nQXP3L4eI+HQgxjE45jB/1ZJAwBIvoAsmDAZD8izTo2Ff
XToX8XvdQRQb3rpmV/Vv/b9SgudAkzTvNhCf7JCKaete0t0QH5RD1LrJIZ0GdrowhL5+YbWhu6pZ
48Mu17s29yaK+4AT827KjplulvIqPsit9WHdA7K6XylmZ7/+248dHR3nyTVJDD4IimHJagSYJ0wu
VAUDolZX646d2SrExJWx0UW+PlPsJ2a/1zKVYceo0qoc0wxIgqMm4CZOpTqmokTY06Xb3rVz/3P1
Tf0LCFxSLxE5xpmtJ3oCI7vnweN2Fr1nJsFFM6LTd0tSUsT22rTMkA2FNrGJXkgy6vpeDIhEhfeh
XWwYNesdXYokIa9L2DqRfOLVt1kKsql+qgyFNwOn/VJGze4DYFNcTIbHV4FsJcDa7OBYdUfUOq7b
/XGr8HEPXyjYyfCs7fo+L8jdY1iNdhtXbAFZj0IXvL8Hcb/5xlDUrhaakk0SBWJZ8NHOkA0bMLFE
H0wVRS+2LvM/BejGAPbg/ioYSvX9S1GXqRqwoehSkEpRJafHCTr+8gXt3sDKguUPp8XFrmGVcnn6
oSlA1/8uLK4DnMo/EWokvfsgOSt4+ee0e5KSCed6Nb6qMuJjONMoJnl8/N0WA/c8rTGFwPDvtqvN
cf+dCpxl4zIqjQ2QPvzJbrenGf07Qcq6UJxddwrot2M/SmR/uXMaFB5Y16vMUM82Hn5SfdLosRii
5aSPNztRmsT8TwTGLvMeh47jQdKMiBn2snAaqKNKbuTBDRl+cqnD+zEjFMdjN5AYuG18PGtW+WQN
FBiXh89FzI+jcZyz/nebP17FqURyEPNMXm1Zs3A5p3AHNggELKsVmmdeUFYzoUFvXFKAav4+Ri58
1XDzQbQ6wFDRQMq9RMCECF7MJEb3gbH8/o3nLCmweUzubvS/ur/3zuv/abHenzJfUu/v9OORfVz2
wpqaWQHOS8Zd1yJOXpPGCeQ7W3MeYzmZ030BZ2ZRWJWEeX2Q5MH1kUaTnCAmAkMdI7pvwmOPUkr2
cOUyhY1w7duWrx38iNzC/gfEx43qAgWkktSGI9HzEk+zje2ji1f+x4yYbm+YymKhBzX0rwK8Q0TL
Md0bmS9VVpy6xu7aFPpd0tgV7tQ4a3iPJzgOn/C+tNjMMobejto0RD4MaCd3IrGNKO+wqv/fe73x
8UNxhnz8HBgaUiSVbcZ5h4E0auZh4NOit1+/5Z+R0wKgG7gKG5WroMGYS5x1FozcCNp2zLrJ3q6f
FVe0PEW6VIs05lEKXPO5qLg3WYhVi9v2pSM5PoyoL8P/wPm+KrO19AOpWICTfNba+mb8EQiLIGAQ
85crP8i59oPgyt6hFkIdTXzLqnNwsgOep2dlLcl6Ttpq65PYoi6eXPi7NgKShuFl7a2ownmA8qLO
E4te5eL8vUfAgl2+/qe5u5vFrLsCFzp3guFnPau8sepxfZEvdJv1B4n40F3jBRKbzo4CCZ9R8y7V
3lAiIX/mDBW5DlcD3zt9K9sSz3WRs8m7dZwPD+49YJ8RLiSq53yImoVQEvz84GUIEHzfRk1XWVAB
UuCJ7YtfYvVnDdl9C3MEMdS89C4Jaiq6xnKYcBjKMm1kld1oc4JonstIfUNbwHVfl0ruGBkBuYGJ
z6Zz0bDhSB2Oebf4OOHyG3oBs42fvLX8GF/r3cZYCQrMbBWycLxvwAG7dswaCIgHznXLLjbng8A0
LXk+w3SQicEJZUpBy1L19C0jvgziUE0MjGA7g2l7yvEMqe8B7TT/4J5QY/mpbucUrVMbixihkAgj
cXb1prP0M1yCESGVmk8q/5Vb2fZ48QUzEjznYI1Rs324nUupLHdmoD9Ab8iOV688BSeTZ7Afu4Wg
8qGd7kjeB6EMNKoeS8XpieO5Xgzzt6SfDnB/mlF0n5Une9iiog9P+wIQgm+TdG0i8ZevMMxPA7pk
LAs+Ai+8oFrFfAMUkqbGDS6WiSnE0LjVcyrla+lM5GHggPItlfpOfYvDmSur0r+sv54WbFAUuIIj
sli4BH2Tm7o1JZ68GmW0hNH2nXk5+IAYi1jFx1MWlc4wSBquUf5hZ4WBE8JW4NE08rQ0ovUaMzL/
547Ti0QgXsMD6hScJazhBAW/XW758PY8QdrREdiGp8/BjGBZ5Guh9U4VK700yi3ScCCrGwFL48Y9
Ac2oqoDqGcPqbnetOxddd+RJFOeSUGod4HCXcQ1fxBQ6tadvVF33kgGzwlrloV1FTB9KWEmZINEI
tIz4xTrUAsb6+URFTQTXxjPn1nTq2zGKZQNx7ga29xKj861ZbaCNZdRLv0XXGQPl/f00ovmBbiLs
XpheGrjGpZDVU9DSA6WVMyXESA7lWJcryZ5xu87sijXP/jIyuTaVUfUP2PP88v0c8TSBzYEebSfd
BEpfiRWYPd3lMqupowj/mqag0kK31HoqY37c4+Ek/+h9mhCchukAsXSjGL5PeqP7SsSMZ/ZFF0Tc
IWhiyySWfOdQ+o1u6A0BmoKJ1zTPyTLxIWc1BsLbOefmN2CVMRp9FvRjkziZS81PmL7jMjce7zZA
8ElrL+5Vw6UzElQGdfHhrzzUDsnTEKHJbXco+fbZq3jp3KLFh6/RHL9HFsDXAuUZ8KDfBnGwezVS
lmVlmMhVZ+M9tBgDVJuT69Jcjdy6b44BQM3rSaDVMFoHDpSkz/x5iiU9fhZ0UuXVDecIWhJTRJwC
tpPT8z7+RqijNulylhURPeLLPZ7B+RMzeAFyPmJqDXTkfZygOu0HFUKPWtkCgqxN6prR53tUthNI
ScO/44LsnhhQuyytrwrL5svKiqzdvUGVPXf+5NoXHo+NQIT/2EYwmgTNXbP2SX55MXk30nqpd27g
3LFo3JlmFeseOfITnIzQVJdigq5tzO43/cKZbDMHNTkRksLpjjNRALxmsLtNDs7OvsN9bO7isc5y
3kPwBxs15jX7nKcTJ3QwIfcp7dprFlVjeYaCP671q3/xpFfBvVaq75FMzhCAUf46gkP58bMPr7gB
N1VTu12zCQrk+bXuWciUrBHMzrdcxHSR//u5Pk4VQ9/TmmdlToFn0DyNSrghkV37IrFwE72y2nDP
yjluQx/2GmsFqFl4bWKzbZTvGx+fnAXL5jrjTPW4JuSTx+SQ/xoA4YeTIubuRKGTYL8kjrO2/o3N
qB+0I9nPzUy6v5/b1IYfXb7gL4L+Bf9MVQ86NVHKC2Mj5F05oF9TyyFHQEbpb92+XQMxaj1/8ZgH
LZavER/OOmncvYKcRzA9+ThSlcBWzPudJnZGe6HXisjSS8qCMoND24UhhAPknyySXnHlhHzKmEIJ
0/L8Uu07xNF9LV5XPWXAD0QbUGfGAmyfXHRpFqiPWv0aY5Mln+wMRkYxJbQSLrgytPPCtQ4xZtws
JohGcP3pMZ3BtbsmhVsLaQahqXEqjSdiWKN5kEw5BC8SuBN1fVS5YQgrWZFP2UZNTCb3cjJ5hoE5
r1EZpVPJlQe77ELLL8D6M9VEy4QJRsCHB5bNM7v/FucE6cRDaTkqiwq7BLwwlM+KNsh+sy5hLef5
cYgyclek4+/Q6oZsnyKJmUG7u+nyvAGZaoUoeAnLY0XgDSaZqOp9tmYRiNguM7fJ3AYKzo+n/9x5
2q+oidfF50/rXB7v/Gth01nWT1CNKIKky2lYfoFwrgum91jqxp0AV5QJlHif/NHzd1ViB7XI35Xj
3of8pDcyG6xCcn9etZ0Ou2cxiTRlgIoDu5fp97dLp6y2VGMe7sjnje1TYLKoo7CaLUQjRpQNlDCN
OlMvk8c2BhULADWGRl0t5hRTHp/cNnGF6xs8w5FDS1qE5hXoqEQyBByNMHIjnteClBOLaLNYx8yC
MMSvut85EjOcJcWreHVs83NJwW6fZeuK1b1waY4B2+ECrWJ2tjn7unGYT7IWEB0f3cu5uw7NudMx
0bZX67kBVf097znfdsNNgHCpKrNgQKZxuyRwuaUTVN7eVB/7OBfpxTXgA+ArhUjMfagMgrM9aHQA
ZAwstGztjrOsM6T8Ab5qQn3TQn8A3m8wu5nrYvGn9V3iYUUe6KNv8J/5jraLjUF6nsDbFXj6pECu
Hk2cg/L+i9aQkZx+PzJTHNdOAsJEsE4q9C1pjfeJisi3Pwa+E7wdpvZ/FGeLGgw3S/7ouVq+n+1E
XJ0OcYSDZrqRESmk9hAnUAJFbteg5/HL9lGd+XunKuit7PVEi3Or4wl76oN5RmDL0XK96lkaP1MG
v3eZ0HYp27maNvq1GiDrfDLVMlRdxb1AvA3mzNSd7OViPra5l554lIUGSoOUlOWb7vSWToWMe7/q
bTGZe/OXKTXTLefkPAWRlWborJ3eyP3EHrBCZAC0i+bE2Eq0Y/y+s6CIbOWkE7tbtaYleKgQWesy
aB+FX/ucY6RxoNff1GWH4ZcFBxY8mVADCJvDF2bB9tHwxGdCmoEsd4C9gAyfLQPYWzpdFE1Zexyn
2hklQOgrPxAgxVLG1/C3662iT7/5161smQ7Cf/SGKYmXvFHTLr5y9swDsAEeATtXgvUWz3+FMk7B
ZoxipoBIRgti0fR+052s2aBtTJnjaj6SQb/nMbD5dqtzcJkxcxEHjGoTjDC/SsNUxOJ4+A4WUPV3
QCZu3JZn5GZjH9sMZGENMVNWaaArZeigbhmZPZ0k7kuuDpWDtp29P1ZTn0/K1zUy4tgXctqTuxsX
JEcS4+4O/3ybKOs4RAdtNwKTO+us3MFwEUon3PMpPnIzpqO/3RleHknxCxPaz6DGadsHa9JhTgUS
nP8vUC82d4VCsA/Ul9qHKhKCeor82cNswymVYt0sE4umLITLfZa7z/DjLXrJwjvPf0v2gF93cl6I
PNxpLjlXbekULI+AKdqSSmBemH83hR7K7yJ9koCZqCwn+gJwALzw7ynf7zFiLjkjde4zSnu/xsx4
PYqXtiOgz/bnHKPl231Co+3TardxdJ8bNQy0JW0fmSmcaw4Q7XDbgdjctx9VY85Ug/M5A9zK1EU2
bOc39tQU/HrOC5nsJbIv2EHjyinET0MnPseVFZJHOgAzgjpsYB9X/a2KllBPG9D/ZbkeicYfo0TQ
9TbqbN8cYkqgL7eMQjlFNa4pUzX/J4/QJ/4usAcAAI9jD3JGq8ulB2RPVKIALP6E6PH5ciIuZ8Xr
LQKT+Tn6O4/M/6iCmiw4ZxZSckpXDXwfrhkMrlJGKblV/M1jmSK66xHfryvDj8QApojjb8G8uICp
Wfus44+EcQqnugZdZx2VIXrPGL5kenxfnJvr170YnI5iVpNqLrkGJBQfuTw9q+EAwjfn4by83Pgh
l/3t/PJeeYFZcKPw06mzoQ3wlwrXXGMLJkdhJ3sofAGA/Ewn3I9Lcej1TuXhkJl5XalVogJzpIKQ
MmRTwTP34e1IzUH0EBdYl6XuN+6+CF+j3+2kOwMegArn1rXDxGkcRy9P5yAQnYHNJGD0J1Gww9l1
KJaCa7CVX2nXRj8JvKi7I4dYaSd+BEpikVkzHQRUOGuNbwqK9VzSNbEFxO0Gyzcwk5kKQmlS24V0
NABpNOscstXbQlm/dj7+V9NGhgOoYmN+GmFEhXFCGS3vD6a/tkFOun1u4BhUgavN1rpON/YeZ2Wy
xPEjFfl+7DJKnrYadZ+AwLKc2X10IiC5u6nQgq1/D/MdW7Nbe5Ea2/6j3mSnb/XdtrU8Snlz/oQA
JrE5ILD2G43RLtCeHnm7+RUDbu2uMRtZ85eaPM3ZTImv0EoNKD0bCyjp/13UoDWHkngCoeQmE/Mm
L5LO4UEBNp2+Wmw3DY9oKfJj7tGDb8vJuHT3X4F6yHOp3UOLfsoKPXfPMYdYXPcqkYw4S7Ge+rzi
SucXCM2zA/52dRY16QSm5fNXYO9zAhLtIvLSbDnkOpk0NN0ASfbDiB27fUpHI0KJ4YCE3J6ujhUY
/xxuKXE7hhZ++GKvUUsao1sj2VEMaoNqmZthUP4+eG+KWMkXCaZ97J5Yo5Nmel91Zt+bxx8BmZVH
CWxt2/leCUpgRM4AujfJBxva1ics1FR0wI/bjrdmBKKNA2770a7Rm9kI389EX2r1yrGi44u8+AIF
c+WOFL9pBppbTQ/u8Wg+atNntc+LwF3ixdyZ3bxAfUynUtR7n9XIs9N1N8/zygYZdXrnvvxy7WZw
wuAPjMDsL1BJePRT5xgcEKkBadz0mWUHUgk+qpAdRqNrM8ovmLEIblf/ze5OzjTNR7ySDRVECYY/
WUkc0OgmzXsxO2rtrEsIUoZu16Iq4io6O4wjK4bfMdjgNF1p1+6k+DmPkHCE1HubBxHUs7XgUSjj
o5cY64KF5e2351br3S8X5Hgx53onJVDmVFQ+Z0yXeq9nm9AnMAjC7RFydbooQPeTqGTcdbggSxYW
86R0CS83yB23ZGp417FKu5y1k53WLM8K9pqrZJyC8LHId9i1IiK0TMcg8L8odBCRxdZrXlZzv7yG
QAFBWinOaXZd9PDOb1VzxDx/0cQFaGinHTqnNskKVfbyuztOpLkOWa0NcWrvgztgTN/lD9yPqRIZ
19dPMQyqZPn26t5dgfWveDQ31pA3zSj4Ot5bLxICd8kwmLg7kATbk33wZA/4/sT5lgR0SDLhS53i
vbj3Z7F6XFPyxz+9TBwxtWglGRiW7hPnC73MoXRB+gwlOL/HaQmRKL3QAiWGLt1B5fBGARQh9Pii
+HFS7sw+nZHYW+/Z2gWDd6X9DqnsHrWnegTDxHbNQd4ZfNg47Dz1mfmQL3nc+RxZMlhJ/e35+jat
BZguQrFpVSY1HrdNfTdY41LKFgGQPNbdevlE0qEyk2AyfbZU41SYlVsNyDpjYQ4YgiSpHX76s6KU
HYVEAgxH3QIAW4UUGXoQOVJOio+plTWl1m3q2G6vxtgexSh6Tu9TXcqkzIqZ65jPrKOzN8BhLEnF
1exYI2P58MYY9ASopxUlUZGpuNAgBqpxe4AvwnMY3Rcq3nsEBPyIZiJHrP+Xs3WxyBD9KphD8Xey
lDTGq+V3EfCis2E5Wpu/63i+IhMke2hj1SZaljx57YQDfTlN0MZ/rZGBRZP1VLVN4X3wxt+HMcz3
cM5Qq1b7DXAmPSqjlmNlLadL1nPoR/+wTtaCRR6Z+W2W7IlgHTJ/TgCEAcBlXx1c4/AOWfE/up4t
1YWthQb4htwQx57HJX3jKVuHXvc6Hn6Btppq2Esu04+disC2g+784hnp+NOkS8j03sSxDzfEzXPv
sM5xv3LohYY2fUio2BWQFwwm42kyks3LJMzcOE9QInGRTIU2YsU92362ulXNOKYojJSdPBDpNgmu
XMPVA5qMYHLS95Mlz0fWLXeGfkjjwxDDmnXKVAw2f4nEh7Vs5Goq02qLVDVgcDGFf8kyriPjErvQ
tTonlGj7ayVdjPqArhWiogbaqcQyEraRWJkHmy+ugANGb/nWCKFFVO9MrXu53dngA5I+BFsf+1ab
/4tm4rP0tBAUjGPi1K5xCfVdkZWpT59IZLVMRcnrPWrdBHTUM7+qDgLl43JT5kmap7RGKZ7zC2EW
Z384M4WNWJNmi+5iXGsFI95/b4ipDywG6ZSNiqR9aM0pNGtbMsQYMDGEv7MKz3X+ira2pmjCbm2u
xZsmW1t49gaM6nu3scSHjD2QlpNt7xYQdQYH473dCnOXcZ4FYK6Q9fuvM6yepTjD9JC7GJbXhTJU
4zgXfrxSNmx8StJL35l6o0wws8sVES2EvE+TV3FCW5EyppG6fP9B/XHPvZkVd2kFeWpK4VkDH4xa
GpcjotYm3p3nxs9f8hWckiMk9V/7IWQNRVCVr+RoJJcaF7Rg00GeqSSPCB5zdwCrsLTqut3TEjBX
vg3lp7QRDN2+VlPO8c5uyr4sJ6F0lz2PznmMkDie+dIsl9Cm1mwSI2eiLNy+z/d0j4gnA2Bw66P/
o/uqH4dHl34jRDRUIwUcifLwYAKqLIDyFfWiqO3dDf5t8pHECnXb1yDO65bMuJu7twou2Uj7qylq
DiMUMMoMw2fbmM/C2lwPcfmWFYtxbMi/3Qk3OFL2P8vN7OD75jdN5xzdazBjtzDfQ5DSKP/a7Prp
9jq+xzCcwWXey4VjaF1vOm/bBWXWhq+ZZADejJXHd7gJalPuPQPG0AH9qVVA7jCTMUaWeY1e5lB3
U1nvKKB0/JRQCe0HagKEx4Yqlztj2Sip0zKqFxzXJSIZslx2cci5FCgHpcZccjlIPQraiZrO78Pp
1oSiCOQU+21ikZqjbTkJLfO0UEOrkK0Exw6Uag/iIJVdtRVDJGTjKfhn6lfKMU59Z8BROiLXDNJF
VCtJjAPjd/V+GsbPZQFwAbHB+MBJuUiMIvUfP1XwuUZ1lbJFfU/4vPDGPHVdcP+OAFm/UmXEpO9g
fa0lrbK/XPDao0QvvcTS3UayRA5f/bmg03gVKgv/M2Jh5AQrrcW3knmw8/Z4uoVSHGCVS2TqIG2h
FUTue6xf4uvr+yLwkoalm89pbHO+Thp1fu55O+9uo3Rk6jzUCUNj3IarLFYErpLaXHiS6oaMB6g+
A3Y+UUvTaOVUYQPWfHbufn5IrP160pG/k0OVU5PLaU+d9g/aNXm7u668S8vFKwRdtdjmqO5v0jZb
X372cy2oTUeVu1W0OzgrKlsPg8YCLomjKm3A4upC8/EndQWNfYAucSkRK8ggm+pLF/JchrmK9022
UVyXAEgUGH8P20ylxgdy1dd7PwsgRdUNutSSKXq+CarXX6B6b5E6Y/8bx8p/RNS4WNlrX8bCGR0w
A+qHrELkJKyHtT5JYIfX+ObCci9rbAnbHZuafRgL5H1V0pADcAWwdWWM7tL1E1+DmNQrntc8vjgm
XOqbtV+pWijPfVVEGAs8GaQmTQTxm1zXKN3qH5oAkBEILC3W6GctqJD3V9Httm2dM0hwtnwIU7F+
fgaXJwTgyBemvXSFK/wrz6bzsFgIvm5OR5zST4SV9RDLPxyc02RZQ5eIApcZ+05uEqmU44XoIv2A
dQONnwblbPWK8ljN+oJRuefQLkChTljEUvjHKJ63vIm0oN8jJLXfo6oeN7spHJraEkVNkW6ZtcyO
cWykOdmfgc8PMd99VwP4YemTgFJtmTD+VwLNUsaPH2FMa8SPkkczAVI4luxom5AAZkmL+NOvSMPj
NP5F6B6G40B/jIHyo04lnmPjskAsKGmJSxysnZdpcP5OW6uwfLs5Wm/Iq67VtCSh1q7/Q4kxVsW+
W6tK8lYBRmprA6L6r1RIkea+xU7ckfofP94lLZPx/Y6BiO/YnpCN99175FBPVhFTbAD8kf4gURY7
xGvIcrDjx8vfA8Xi14n59DbqKjDgeYikgW+iadcQUu94bu2QafvmKxHwqGvHEyR7OSQcWKjXfW2B
eGdLRW3HelZlPMXv+Ywoo1TVwp7cTAWKzdAKIo8vdy8dAB7SKtDoVOQUipnHVuUsEpk3HULVoh4t
I1TrlJyrNcZ9KNzFxh6IQkLM4n4wj3Jag9U4p3SyPW/rge5g1k5YdyLQtGy2Z3kiWtgdWG99uf8n
LB6C+G0CCj3nKKzyIseKmYxuAH4Z8tauT2h3z5RFBOZ8CgIcXnTSg7KFGeiQmh6IdxNCn78SxsFU
8MUcoxVuo5qqdzdnLyoJk3CrISC7uuwG5Kb8LigxgPOxczHQbwzUdBG7WcqlZE81Y+8B+MrUKovl
jCKdqhycbsO8vl/A6X3ad3ff5NWWpK4de+OHx0vfutIybo9Y8s04P1tjfniABXRK4Li9FqRyUnEs
0vu33d5rQDO1l6pq+io6+DIddbfmwQFbOxL5oLSUEDIra5P7Bqr3gi5/jkKMhj1yqwCKkHTBq8La
n5JkoDDir4VL/MAyg1OJLHrGTSj324o77jUhBDsckgy+Ypi4Gejfskw2TP5IuYuh0+5srPek4ca0
lB5Sg2vI5Pl0Y8qAZsqVhDMVGxRcVcvemVQ3pdNlvuYk/G0qIwwgnl4ukAYCNMg04oBBslXaNrPj
6Lyb9M+MM/gIr0XWQg/HiGcj6iY3vEo1He1wtRkOCICvf94aHutnlCicVQDLW3GZYyQnUrdUAPeS
HlUYmQQtwavnPekZ47SECfX0vTvM8ORGvRkXiPUax4ptT5xIObN7hneyNuyIYgmIXvOBcHPZ87Mq
ivr10WMwUA3VIgZ9ODSq6PZ0eUsTrAnuCEEIotG0ZMMBTUT8MkThLu3MLJE+hl5rYamsLwxdX2fV
//5VNgAVqzYouOPs3YKz+CT2LT39jvpdxv1VXmyQERc5qq2U9bbxeAEuI90hLLoZ5VIaZuTDDc9s
6esuAel6wxQobD1cn0dODBw2tB02HCDpsFLWIkZ57uaxubVMlA+hgScUB/hC4ev4jd1SBFWuDi9t
5q1hfudLFfseLbyRLDtjEGBN/zxYkaIHqhhw87mzOQD21JaJC2mVqf+HuCzEd7wYdFkj7I1x5Fy0
IMKQnzmqbUwfA5b39inGgdIgY20gFSAbuUkxEb47NojbbV+U/LXlFOWy9sN+1PZSpZg98JSzRQqV
jDpqKfUdYuZbkDmhlz8qVtMAFULUcqnlUp7Um7zzoHZ+zya1og8dqdOUt4Js15phJaftsH/21xfR
ZOaspU66MSZBBD/UOc2QZqYLtzryJOiuCIeEgA0+tnBMQLyIQhzV7vqzYime7adC1erhzVRUISwP
TksgaTse/kPLTO4oCHFiESWxUfMj34yvzFoejLhB39zG/XNA+HRpYS8AV5Uddw5mG4fxThV/4odG
DhDUKO8gyx+D/L8S5hirM2ikyYYQfmwT7TRf5q3QEuTudywfUaX7iWjyEOVpJ+JWaWA9SLKc9iUl
uZ/RS+Hljvb7Yb+Oiwv+O03vK59IcC+Hi3WTVqIcedrqbawa3qwxzC5cf4QlDKuQoMVbA4JUG2BX
F9tqAsvS0IbN3FJdyaIr5q7P8YCjLfdSDaJ+HaOzFFdkMlKmoxrauJvqihUJujbUmzE13bBir4Ga
8JGjsaWCgzFCBNsY7DgLrt8+9TyG+linn6i9fZAvqvvE5+wUwZHJu+7/buEIml89ozrYkKio++Rb
Y/yhX0eL5H/qAqG5fbeDVdt1/1XCR6QLceS5khmMtxBBSRU5EkEH7DBpGZ9y1aQJUD1/kz7HXRaG
vokPfVNrpMEERMAvq+GISunQd86d0I3twyKhbIgGDiD3ayrcFnvEhhUqMKi322nJSJeGssXggqDA
3gownPI=
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
