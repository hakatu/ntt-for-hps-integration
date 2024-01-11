// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (lin64) Build 3865809 Sun May  7 15:04:56 MDT 2023
// Date        : Wed Jan 10 13:01:25 2024
// Host        : vmd20 running 64-bit Debian GNU/Linux 10 (buster)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ mult_gen_0_sim_netlist.v
// Design      : mult_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a200tffv1156-3
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "mult_gen_0,mult_gen_v12_0_18,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "mult_gen_v12_0_18,Vivado 2023.1" *) 
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
JXHoeG9YYrN4LqWSerwk0pk2RDm163g8i7946I+YxKE61TmWdyGMwbTBV6WP31c0QzGyIuI0Aph2
zyYr9OwMgwz7za+Upi5dGEe1c6mYKB8hlf0Uny3H/jwTfZxfDN5+iWybhSnU3vZfoi6lh5eXdEtA
pzB71FMA39dgMP/jI3nWnDaV1nz2hQTZ4vFZE5Kh9Va4RNgUiPWUPWa2lCIpzY21WBZ42kK3zyNv
5mZf07Hm7ANfKQpIo+sJ+YuNt1OHdIwHocJkMiQSfzDx9YrTljfkyEhit/VWth0f9kYc96d1Thsu
pobxseJfmLWu3uf2ec9tIkAhBkwxuPGt4Ej7+g==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
l/5a+q8FZ+WSOAj4mdhZ1b2t1P4PPwCZq02W1oUKA5yo7BJpeouQfdTRXsMiFTmmhb22wAXcE7BO
2guHUVMHYLe2Op0ne5yXTJbYo2f2yGylPTQOIvitcnARGlbsIJ74Q3EMGijZqB7JoeyBMqDEyyiu
qieLijT+xNpfal+em/JV16/WHPhkL+G1FBArqqsagwa3oWuhNWtMOZg+A/JeLsXtbM5jkMCiLz5o
jhScw2bmyxT+hCNZrtTIoQh/sDvGDRCmvxi/uw6LiKcpw4AR9SrvfuAAcpWc+3C48cLhgmr+S1UX
aEn0DdSFd+tptge3s0n+sms7CzMOT07A7HIhwg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 11168)
`pragma protect data_block
c0U3TDUkmjLVEqVApsCs2OMi9EVX5RiuqxFKxOE9yL3znOqIKfYK8mxEZA9Lq6TySded9Ga5381n
AR0f5DFqvUESmH9NWWcygTIFexQEOg6ETmkt0nikab5FtR7DzsfEpiO/LwR1w7M8C2frbq1t6l7v
pNWiphxJib70sPFUERuIaXGUnV6qFoIj6FYNoHuCzfO5Xg22xM5b0NFJ9dJKI7t2cEmPHXCLn7bP
B4LJdxeVMqnFsZxJkqkVvOsPdMuWbvng7Xt2ZUId87iZaMNE2wZCtsnMacmu+80fOw0hJJMFgccZ
HHRaLEF6h5Km4nV5i4a5xqNEAXIVb1zelHJ3XRQKqpxlgm8ueI9dK+0uXGpFsMVWooT+EejfJXy1
5edA53X4fQKxhNuLAkkK2+1tPJPQ7oXey4D8cqZCpRAflVWsYw2q/8N8Litcc3O8Viq/Us+iYqyw
btsSjQ8/8u6T8bibkbEGJepmHAggQCx9G/vdYJija+tY6rf/vXqVQ36TKOm4Oi8JNtQpAyGyqNO2
/m9Wt9t9mM6SOJO6CaIazSmens5zY4Lj/hI4KWe8Z7KH6zJqsIhX1cHixYMaedIgSpPPusrnSUED
FZJt+juWL0tvyWvSv93teiiL844HHWbxzuIjSIrEyDI6G8fuvm0falZ7xUTO4pcHnQVLasVHLEQ4
+/G9jnwM2Q9oGqmJDaAF/rQQtBSvPr84efynPeLjrOwvwrONArGgVVBN//nQkUNgMNBB6GqxzNA4
MFGElO+v2f0aEayAZfbW0ucLo/1uoVljm7yoESEYuiTjTMZIFHsLj0C04ydzcNySF7VK5v4QCHYO
p/286zQbLkPdk+7vENxFOWDNvgePb/Hgjwz6d31E080sDnzkdjBgUJRfzQLeElh7c8tIS+/eCzbx
HdBpk6wkeEajlQ7t8Sw+d6wYDcXNWa+ai1dyYmfgsthaiBDvKTu0XSKE91SdOJSu1Oh/Tsflyru6
2I6J/8mBcyLV+ZclSU0b1OKijVnIOKkGWUaZDUarZuf9n/vg2t8xVUlsK9ePWnZrQKcQIubxANlv
xioFvga2dk1zT5hZAy5Fgi0Rur86wNF2bLKmbSAf+wLW4BFFFRmw1aSV7AesnDG7ZXphXLH6gQWT
LKASb7AX4MwSNYiOuEoHCwweFYEDFO8VIoGNHcGDbUjTEbpWwHIcnyXSvh/E19NuJA+T37CgT4q5
D8WFtzPIMz0NQS2QeO4S+eV8F/DXoYm2IkVroghe+iN9n9GdRXcrtIB0QWH38IHreJCOl30oOe4N
i0m/iBLDtR8zZzOJOkdzwQJD8IlZsaDCBzeWyJ2NNUcverR+zHJdb2PMDbRTYU279LkMhVeb6yr0
T6ajRQp6xvyL33iaSqR1XYbx2/GjLTN2XVgmSrBi/O2tgZsKdtrxHT92PotOv+OHaG5MOGlFnBqg
dobXuMPq/h3dZc2tGLvLZOlHDz9T66c6QcxcLuFabEtWYIJA0RRaSP7YR3PETPYV8clnQu744hzs
0/fzqoXAajeNWx3ZwCGnyDr82cdKkhkFUVWIlWHd+aE/nHl3X8gqCweyLNj3k7mff7erTIzG4/lY
dR2xT3mp1rC1QczwD5tSMzqbRQNqUHFrkpqM8DxNgtcVCep5bqC3N6plMSjHZb5jMUdLMrp3G7Jm
UDlZ4V2J8FUvkXfWn1MsFC6vhpRWmOZpTKKXLv9k5sVJAVNCLwKrax89Eu0qsKxwvlrO3ThVi3Hx
2wBKYZbJUH+kuDZehAfInDOUF33CT6RiP/zuFWYq7+bEcNOpP0CNMgOkEd+6c7LH7ZapsNdgHQrf
MM1q7Ola+knuLU+KW//gvZLTRvsXds+XCrVYnEC+oCjqhMns/x7ex+14Xa9LL36zzUp4/y0+ZvNW
3sgBMenu1RKanXUAEAR1DiZO0dyulzOSlvN4Zx5sZXhGx0G8buZLdfX9W0fh0J7oRO8HoxCcmEbS
az4Dx696O636ahKzKZdINfwXfcL3MoJHGjVu+bYeApdMqsEBQSUWjN5MLILJqlaEm9yM3G9zdIbT
VMRbl4WIgRd4DcR9+7x6ezCbx8gLUKzzTa1px41y/YAaq0hn8MOAaIPYcmuKwvSq5ycOr2WkMXN1
dBc8jxYtQdXW3VFara7uUYuZb5YLaQt6fj6k7es2kNxoZTz/oWEFDKpXV5ElrPil9S+NoNI6BlM5
DVzVLE/yTIqwNYbzXL7bQYtMNqXSEagga7pWyFOAde2Pg4F7ImujNF+ZD5Ip52bcyr2Gko2ZlXO8
a//wgx+90SwSAVfcXwJ9UDIaq3JMiivvBbYeAKso4oEOLrJHX7jYmpeI4dhW+Jc6BLDcAMsUQOGi
rkiuEF2gFKlTHVKn9byYjjr4xoimcneY2gLhaTuSl8l/KRMNTY9jKek6hn7SwLw+c1ZqAeLDlrUu
QUvLJTOzfxUhlOWxjcph1bBKJVxsb8P2vvs3OD1fbjAw7Kex2NwibmGf/0cSTWTv0wpS4k3/amE+
0aDq0uJh79B2qg1Z9eZnpyASxm+7rq0hDsZ6xsBpzQ450iK5q8VfRNPFPgfMeddRu8dXuLJ1DZFU
DUtXrNbZ+hFWeTYN9iqOXgw10I1CXCOF2magqxhvD3ULklyktCy7+tPolOgM0EE9s5ZBk7yzkdOu
5udBKZ1sCtpHSbPx5wtYlrfrn+eaeBYeQvFwC6z9yEm6Uznudc6INkrYDYYZaaF+PJ55WnrQja1z
8mNwoPowT5PD1Ao5JuRCQyPlKVZQpeBlglVF7NkPSNHAXUubCu01aYFhnOym4yYmuCPjtde0jFDs
dsbrVsIXB2fZ5pCqEHXg2B6NGbfUqX2vxqe0LVCXD190NKgwzkXVPFiYtPzld0Wy9L2iwzdRVDLB
pL7Qop3KsYP9j+doPzw0XJcL4Q6iPbkpBG1+e7TZsWVhOVhkwY3K8KrKw2Q0AgtLuDxU84LHJrab
d+0uDkiKr4lZqhrGM5gF4coNUdo+FQnzuqYUh1gqeye5SwkNIePfgC+HzgyzEhHdh09+KWXZ9Nd3
T3cHn+jOpmXuRAZAUBz2CgP4c77XoMtjjFNalAWOxKdvkrPLSZZ8XDm+M/wgPpVX4IC2x1w3mNUn
B21dW47cVY/rl46HdoiUQifeqezMfYkstu3eHubclbR3dPcrQOtCAQMIx0vLloZAZ1BATcE6i2zF
IH0+wM7WQnN76bd6jmeseB921Jl0GvSUigdXZ/prmys/hMgjLP52g6zIofuPYdzXVWLBUidaK1ky
iAeOKVrmBT/hTLJl28w3NiW90GD6VANkT8X4QPNkcwb8BamNZI+F0tfA1bvb69vkNlp+xjk2aVjW
o197HO3nKGbFDxeNVZxb7lQ22DwVcY0mJKW8FoOECxBj7aNj6PT0aSWPmb2Onz7zd/bb0uVy6UBI
tfXGh703uvu3Nlu27NRpxiud85biyODy2zUGKHb1CtxMTjRWCe8gsJC24rSQae0sx+AQzGtEocXw
VFJKC7SQHPY37qtwAVeDUOlNtHBRXhHMrVTxf94XaQXHReqihtF/qQ7JCKxyNUmkTl3/jF5IB7nV
yYdltQLJVKNlVPP8dXQdTOLFb51oTqjLeSlZkTmYW2fhcH1XS+0AC5h834bzCneoJRfQZOJzYZ7s
WUipze4U7RYZt8P7RqoWaueBIQMX/pkeusD2kveouZxdYmrS7RYyINXDTvuf/uwOjK7i0YxzuOlx
l681UJDgrxR7NaKhrjcd2W485kZBO5hvi2skkB8s52h1RBbTozJZSAbDVEWQGxdO3qAPmWeAFRq2
+qR2/4yi4v3xqfJAj5ffU+teStuADShkms271tHSpHDJR32DgNtp7B+LAPR11Lj6tOgJ4bpYpQnM
08DrE5+JDHv5UyPwV6eRkQl4PoMuCTQSr1m+v5kUSXODnj5OX04ZyKjm6XlOZnKmLNPhYV+JNIDZ
yOhL8osAoneZTGj15tTrqiPeEZKXJA7WjYxZ80BIHUlcXwTkht5qsc5vMo2Peo8MIBNjnUgP2gBH
gGdq1qjaDPJMKZBC0Neyh02OrIzk4Xm6ZKAlL51Cmnsub9sdmKV9UQw5DZnwSrwgJt/QuLtZwvn1
tlT+6G7av2qL3yiGusO1GnYxJ6WDoDViSqPMdasCnKWgg1oMKBQfsijzNUjikWuJRxnZyTPdrp3C
Bmm/zXO3HqwKbNQGCUF6aDkwXXkzSz2EICr//UqBtvKFxAcK/gns7vtJuU8g83srIP7ILTOZXRfz
8+fLshJmGdQKCKv/X+rj2Qe6qSDJnF1DS/XrxBsRufTfrfySOaAs9pgsZN0eNW1AtFmIhVo2vvSe
IBsgwyhcrtyYxw2hvCRQ0aSXTaHeSUnAwdm8OP/sACW21lRQhydkgA/6NZbpVq/Gb9znHvzC8hhq
u0ljkPYGz0PE20l3Hbk0rNh3L0rwQkZGrs0O7twA+7c4e9qSDzL8d2aFf2tkrsrU5KM6xJqk9P61
H894TxurLxRm4dq0na2+na8yNVGdU8tdUMLbaCDC8ams/VkZ1m8aYL4Xana8FNlNSAqO4FE0/XEB
O7nxfB8uMyhnSuzlNahYyJuMStv+7K3jOTkjYG5ir1vtWJSmEMWQtKa8Y7YrFCOG0zYQYiREEx22
HSldZ6covTKdbFnv0uuNcXHvnBCiY83GZHiKysxToiQzTTIC01VH39QBKv1vhaS9p9khRwFAkjf7
Nfm/qc0qNQIu78A+64M6p7F0ekBpH4Hir99JQF4VIf2EpvBP907Lbrjv7YgSVq1Oz++Ut5zisbtr
D8U2qmjXD88nZmCP4nuVkx2GlarAqGAmkJjSkUkAf/X9oBleP7Zq1OShAGXul4Hs9GV4sFlQpKUr
GA0cHds5Bu6yK8nJV2nKBSiN14Fu/FY+h8mrYaKELARC5x1pRyqiHS2U+E11agTUKYP7dfd+jYdW
KkRvpqms5+asDis546BQMgY9+zmr7ShkaPqIjGuNy89bann+gW+gz/YlrhTPv3GhTSxcD6z+Ymzu
6MQ1Gu0wjCFL2vEzCYcpzQ0nLBkwHPEjnTUg8C5xVpkQzlSA1EQNjoK3AE7cxt27c1qUhAxpKOa8
1rklVf2KeCDz38tMYCwr4UOcRLbFCmNdcBRU/v/qExKrtjrvqv4iYJqpqDgvij+qdCy9d8y6hYNe
tK6dDVxfolEY2W0FZd7IAkyEFBZYPYG6vpRXh7dFKPeTiuaph69aB8uDhvgW3nUfSAXd36t0Cg6q
OFnYw2n6Uto9uHlOYTXs7q1fJ0r7ZnxFJMl3wJtALnizAdEznHx/TZmdj4qFpnqm6uBHbPvU/n95
d013hNKFkQFXeZlEMlpVMSJ9iDtMMyJFNE8+zTafWK2tbPQZao0N9aysUwiUB2r0NjzugrUzt90m
nAuuS7ORpyfsgvkOPb+ylQLQNV4Mp6wFsX/yXW6Eng1lDMGD+cXuKJQhH3LLB2CB8Ia3xG3YdOre
Kf82AwpGnP9PzQKBMp48cVwI2xEnSys6iLFANx5O1LSizudhYDva/KcpRqp27IFi7LAfMKOO3hF4
8jxMYXlkQkU+0nsYwMhvZvm5zpkYyb2WZEbq0Sg/4h8+y1do+1xWFUNXIRIPXF+iMJqj4RK9wj15
synpOphftEeyEjCw8JPpsNfM90ke4EhrACnNLqzHu4v9j30WGfQh+RL4ZfHkKSSQhE98AhDwJvR/
eyQkugFh3tQ2T8yM7+sbtMVVoAB24Ggn5U6ko1vSU5TdNg3ha9fZHnQCihRGY0MMk2shAIRcPQG+
cUe0uXeiggOX8vBCYYkFMgeYgulh8lGCkNVv1ShoqTDpLSwaQDoJstQkVnCTuxMEmzp4Pb7Oi3Sa
/yZ1QHsoIOuK2Sr/Sq1VfV+pmF4wb8rh53eqPI/tW49yCEOnXDB6DRB20FM7fjuomwzWHkTHON89
vT52n+KHCPuqbijMcuk10H1LYE5yYxMDuU7qi1yDC/SyoFR+pNXkwivCUl/1OQzHR0t9HVNT80BS
uSkpTL9SxjWNFUy5UUyTzz7zk0BDzrKzHVmdwDcQ3UpVYF+HYW8c2zXSmDowBCTgG5ddo7U+D+Lk
0jMxiAD7r20t6F7w9oQLbCSeekV7xt+5Ewl4Z6kRZQjibRwM0gOcieJ+Jpn1DimFqo4rkY7PyovE
nksz1vHcwBFEe+AFNqRLUjp21BOynDoVa7arIo84xapcWcwHkMuyQ7mkLU2royi/vsJVaiGWDBwg
FpOdF2BMHod7SQQ/NvemAhZjnK0d9tNBxjkxN3jTVemfZ6rR5q07JMtfBKDb+ew016oTBxEIwajv
Rs/D/PXQ79poLweAzEEQTs31MfvP57n5t3X0+vddGpMwW0vkioruHWQgTfQ8Eo/X0AMv66TLDkRq
JvpTNbw5s02gdENwd28Jfwffi+Eopcfu8jsRLvGcKRmeW0s/7+aE43QITPOPcBuylB0zG2Mbv76Q
RF41MHvUoix1qVU60F+aM9tt0eyEmiUr40n34tMvSV6PRgZBSXlgEcdrIPOnNHHOuuiJGkqxfUS8
SCo6ncVGXfmA2YoeD7BZJ6Qrc3csIjvs2c4uNfYKkquOFoiADOxrhwOH1V9dg6TjPADx7uZpnx1p
+utzBDEFbCGJ3/+bmT9NH2UG5u9o9H6qL7V+EQBc1GUIpFlzNNTe2I380yfCQ222NeoYXiIkdD06
50ijbCRwi+NKJjbl1hFD6ulICHjN6ghBJVB2f94OPjiCi/LSx5UXrmlPqFRQcZqTbyAawR+GI+cM
s+ul0D4sye8gfa7PQxIH/iw1qTdqqkjrzU7hNwxZz2ttXh5EAHNhgXhLxYZbnHXqmj65vxLU8Ky4
scbD0wHaD+/fv74SGIWOYcker/qeEmCC5cbH4y6+tNM5gWj3Kn/E892O1zLwbAWUtBdVsW9vsnke
3tVUvG2GJ1b9d2imlk3ppCm1M+ZN0Qjz33/D4NHBbYYxj8XIT9+1s5yMst1+/+kzUjaQhtofcRdY
/YdFScVntxoxquut7YH4vrBY3QlJi+X8wV3VUyePO2hxS9U/ab0AWR8o3rUH5g/4r0FWAUKwgluB
PKKKi0Ozdn+nhE4xcWvKzCf8/6sN1E86ftVL1AlZ3rMQBzMDqgcdkzDUgvWtMEjHPUQVDucP0p64
R4B1lwKvGpEqLi4tidv5ErVw3NsM8o2JYplfp6wO3js7PLbNyOmk5PmhM43CxIRZ1j3jUY92I3uH
lxFzHqK8liBcJE9KUYwCrWqDXJKfbgSwjwbmR8gB3ZQDpBQSO/SUWzGLZr6p344RxM0p78B87MjO
nMGCyxJQp5eIl6vZZafiEH60BZpHYsIoHdhuLrE1HyDBbrfW3ulPw6O9oRBy2XqjuIKmfvY2qdKx
hS1s0Sl4MmrjYLkL+Jhp7diX9iT2z5wo/0MvrXWN2YbjX/XSxMjG/m9f6EweevRTCA8hyEZoapJK
5JwQ4rHFGFMsbk3m1tUZeES9NoPa3CSrFO8T2fqTVX7VZI7RxChz6qAT49c0na6jFNNx7VAlmHNA
mUDomuySaNfIR3oj0++jT6rZSfa3redo/YVO0adOYXJJVY1Ka89XcBjr152x/dbsjBbiM9roqESE
2Fm1Nd31CLoll/I1T6ROLww2oAbUjAedtais6m16PmWd4nU6arzYe0chdRTIFHIltGyeTwFT4Cr5
7QoK1oDswoD+mAKvepJVjbC8vPT90iJGCFxtCsH88B5rwmFdyLrZk2NeQZLY6cNW11NqQTm/hFhi
kNJX2pH9sEund8KaDvPeAsk4+1Sjb+Ulbao9PNd8uWKTV5P4WFRjgLz78ojbEe83thEMQw6SYSiX
D3JLoORDI2chi3W2K/hZXSwhin7B6CUDyvGAAEHUWcQs518u0d1lCDbyBEe4BExLyCep8KSDzYS5
66o7DE0xHNtlnWmJdeTFxj4lAxJWLkaqFZm9Ts4e0DL59CBwxSNIV0Ky06r2Agj2n2Sq8s7ihuJA
DAJ9dttR2yp8Bn6b8x+6mdrxogDSHPCwUU3yF/aMMSDD9NZFpSqdt86sBsvrTKRRBA9fzHnLwO56
Gz+nMysWMtcOEHw8Lkk15RXv3b1MP/JXV0LXvF+inI98ksxXsAKOikirjfeFUx4pIKQX+uRn61Yi
QBP03NkR2a+vaEIXp75HgVPJkEg5mq+7qU1TDYuhi9wEeNtqIdg+knkBdfkWRbnqgXIJ6a/TffH6
tBIL5Q1qAZ45w0xsPt+uMPS4val2HXTGwyDC02soYbuaFk9zjpR8rvENoE7Cr+S3OtIbti2Zl9ir
uwSUKpY7hkvBlwUsmYX/ZsrI3JBkso1bA2KxCESiViJxQ5KZ3fgKkrXYKWIn9fxh02eL41Zh2gNA
1SvghXBRSO4aj8cQVEhevF5/c7RzWBgX+AqTvk0/q8YjQq7H3Id3YWOGS9O/XEGZNC3ktoOUyUCD
VnHYeNwXwDkwQdHNoUlDOP/GThBijyZ4fQVp2MhqL0ht0OnTZiyT9lzBY20PUrMiWoq4OlDYN0Zy
r473RmT5l/SUaAKWGo8xISYBdAoATUYRiGqjxTIblKTP2G5gnwd8eqWxbwgPWZmGKLxQRJ0Jgs/f
qt7GC4Alo3UIG0nglvzKQkMsifBzDpCcgrzMDW3XTtfAA5tSI24sdvd/uH+OwhJ+uAx36JGiuBm7
GVUIRT/FE/MJ9tTG1V9NXe9t3lPeTicmq8RCfjwQExgoHqc5CRB5LId7L1wJepAUEG18okAmOy2C
FCCB5J67iD8+yElvI0h/FCeY/UWrxB3eX5hcNtoKiMunMxzL9rbx50/RdcJSpdyEhom1jfg62gN6
e59L/qpmGSjw67omJrk/0slN79hDE32e/TS9lNaU+TSWsytnQgI5GXagf4eTQQZlvxyQ3PbKmAb3
vAVm/+6hoeZawFjTRQtsoStrcaCdrN8cNuXI6ssg4hkYjLjDzbN4A3aUIhoJs12ebb9RJybitlrk
78uTYoXKecJXuIjlvpLiMmBo/wetrA5OGO7n+2p87arLIhhVV2MnZ1yOiB1bs3wVlRdFwQfxwaxd
YWefauK0dLM2hrlIg22A+AsmuTbYXMWbjwkfPLRzkpDLrTGh/RIX/EAXv5yu8LVjH2uUSkErsrrG
XNU5UGdGKeiHLKGnJKpmPlSQsGSdYbSM6+dXE9PTBbxI+iEqePTEgP43wIwzdGrp/I8Kd44M+JCZ
bSUuQVONww7r6UuU/wHPmFXuM+OQsYEqRsWG1uMOBzL9GbuwIj6DIOwt+lqXfFdORvf+dmFor/ep
43XkVB+2wiezOxJ8UTm+6TR8yQkXMAJc2qorfWP0gqpaukJ27Im/NgWN83qCk/cKWmTdz46W2ZSX
RpCWMBujVcJ7coH19FVvrGIm7EeJSmhU+lP2105ow6OM34/h9SitRnvePjXetSRAm08xn2o1EAbn
N4U96KRERBv2McxOr2JRV6CJFAx4O5CxNKNaM63TJ1WauO7kRxkAXh4BLH0QOykHpoxDr6aJ4s89
OIChBoEBwIlJubKD4sWSKBO+lDrMB19tGGNMCkea3uvqFD6YEv9EAF4fVNCuMfPK4pYsbsTMGQqY
JgDAR37x2FFcXVQ7DhzjdJlSpwSmCMjygpOQjCnmHjT/FS7GQrVD6wZOJZ/1gSCRHWFDo1tnpkjC
dPQHWH2+rjyVYfJBz+AY2QvdpGdTErGnFsFEIRESPOfUUv1iTwTVAiEWrw9DB2tLgx/t90EAbM2x
MH/nclJcqBIU3HZISoLZf8ctSRew0yjX+z3V0nZsh1fNUrxFN9seZEEtKyzQ9WdsaEukHlDtvzRm
3cD18tTMBJfwd9tvP+9Kw1eTJIafcOej3zTzN9+22t/JeyMaaQC2bJphVM7mz04QDElLI/HsPzh4
aVGgcIHo7Z4LmhlqOoaGwnOVtCIrohnzGX4Mg4Gyd8LK/kQHxcCx4cxrRAT9pSFSrQBc9mf07vbu
1cotceIdpxzIFE6HgxSC/MqfECy0KBhJPheRI3cyMdyaxs9T8IfPJkzx/hI3MKs7AZ8HjhURmLtA
sCtN80/Gh9SqW5jCiGMC2P+iRc2Lixxi3JnoRBvHD3zZr5ZuweC9PMARR76XEE/dKNNJ6dBrID6T
Vzog2jjob5KCfym/hCnLBvqfYJNm5zNm1dw8M4MYmBsIvEF3EUR9IeDKTldNSU9+Fpv9LY2HUoaI
u2zQlPxsoEt6Dd+D+Q46OYWUgorrzNDcIvNrEv9vrsxUpOcF5rODg2PO6eJjY8lu0H2bhhVX2U5+
pVkI1glGpr6nJCqJwbAf1SoYcYJw2tc6qmyF6BqonAFoDl1987dbl7fsDdxEUfkIGU4zU06ruhKZ
7Dq5F1i8PbVYZTySafsfxuUISqgOGMZBJf5gxsTqWg2T/eBg7sZaE/JMwkLmxGCuFtzXBjtUcass
YOMYTaoKsavchtqjVeJAnUueKF0mP0gAmIwTrIpT49sgSDFJ3rfOpPekcQZxy5C7HpuUpV6NEY6/
5GMb+QAqkVdjzT8Q/oriXEbgT4GVCD5zcUq1UjgDjjCbrGgiwnL8oBWXCWjo0l/PmzX/aQrSSLMO
2M2rsDWqeDSGBeVW6W7DEC9Zb9yIQPRCNVu9yRn2nVGFbg1KrXCCSd4KlPLWClTWq6Ba7voto607
bVCzR+GxH+2qspkvxc216CyF/DJzZ9XBDnTSm2f5c0b6GipwPBim4uRKF5pPZ2rz9axl3o3UaTN+
KZ/rqqEz+rCmkANVytx+o22F1tgTgzIYQbZ+QAxXxuaLyLN4GA9LkDroPGwGuO6z4/VUSIHF4lAs
jiBsx1W87eOLCit5V7U1B4xrfhN2ENb5YK2H6AUZZJVKpfj1tAJXEj3wxnU9T2MDGzSCyk56osUZ
8cCrjDCITUbAQBNMDNNl19i/rEh7Ji//mcYc6dGpZFk/H6n1IuhvgaFAsrtXChbiQ2D42aTQWVCp
XHpdOqV1vS6ejoiykL9IoqydVabrV34sW9TBE2H4dULQqb81lV31F1toKQLRGg7AApGl3D9cqyHM
uo1iBpDzEjDi+JqnHX1lMEIjUlmFZouX71uya7jz02Wp0mVRLBUVAhSsJAhMuxdj6NBBSUM/z0iN
VTqwykIB7Sp6kVyTtaWrygicS7Td6YBSssRwwytfOB/SXkloebcGTkF7XJ5Ds4YbOPg6c2pdRtXS
0anSUjLLhLbPGeto0mwY14iyKOOpz2EPGlBnCw/j3sQPw7yB0snEfHIlxJlFqZeqhQr0OKaw12A/
yGJQLCqLojpYs35xBm0HRaJoJMF5erQwJz3TbH+36Owyoh/bPL2AX0rb7BY6xv3/mXguIkMCzp/K
Ao8xFhQBcwEry5/18j42YrHSPg+3ynyAZ7PkbSmPxf6Turb510wyPWP0P1GI0m9KH3DmrgJyGGdh
GcMiLLVEeaB1cRXvKeu/hAcYUyF1NJ/TBhV2B2PXnk9cplCq+VyltZyUBM22zIexkwMKsD2FIAUw
OMsWRlJAPPcY9idCPDYx2584wmFrenRaggA1NcxJK0J9K0mYuxEWHaBKNbb6E39QvT5efxhWmM8o
yEQ5UXoLi75LHXy1eYr+LbMA6AfmqVDz0VtaOkI2hvTLVMAsqwrTanvQwoTMVDSLMxUJSz8+Dix9
eGFdE6WtZ6YmB28X5oGbZErus6OFumeg6Xmd2aMURMwh8SU0PFN4DCFS6DJqIFBEoKZzJmNfmdl1
qQN+ukrpGdGo8NpCNapLKn24QlJZZcXacO8RZ7ojgGgCuwUwsg8zU9jR9z0IGqIMjYeHKfaBDY/T
b00/LSHJsMajfwXnQxDM+UlWvtyfUiv5N4VEjIEZqBmooOMZWjbSYcTiy+k2VW+cyFQBW+1oOvXa
gZr7FlV+LYkYSN/FYEQAFNyYNd4OHwG8FM6Oz8gA8sBMsVFo1+rw/6iTjwSIeZ/wnB8hYVCfruIL
nt1+bcEqJfNXSpav70OMadISnzGvmdcVksM2ub7o4YzROlM5kwr37at/24iyfnmQGdYfnqwAkpgr
2slJ5NGCz/ZXInp3gUNKoNWonopUpGTWevZ5USAGmBfOlMWH1MGSaKDXv5DnoJjewm0eAw2S4ieO
i/KVJVp9vEcL9DcQcjKhyKTHC6XtK39ZDXn10ZmQrAv6ARr59EQjI3CKTxRU/Ey4bFCmbh4pFw1l
MRzVtRDecJz6uWCtq31zUSuyFIaWuKNajmEstDZnUKaDoyUVAvTKu8MIZ7GDSsbp238GLOdiNrD5
KJyCTFeSRHipRio98qIHdfvC1T8jh+3YxMEtvbf4GIjbJ2CH1vxd7Rx49VQoejTgTRX/fNX60l42
tQsSzxJxHXnF/vYWd3V7n3lj9aiYNLhNRLFhk0JIC8SmRoFfDh8xx1jQg2G2x06Pg6aR8yDqCzyn
UPnKJZJObXaGbE82Y2RZz2madQ7z4d4JkTkUuccD5d/4cOcQ2qI5JBHsIddl0HTc9OlIqo67ppvp
SHFuzyiCpnqeCc8rtS3HKaG0whFf5h+MFoykBZb6iIsDjLKQLhmc/T12da/ZPs5F0aYEK5KMJGPc
PZg7uwatv6mE0NpmMssrKcnE6THV3aLyADPoHsP8afDaVaPpMfsSKm5dXarkpG9F4b9/eMudez8g
OA/+DAVlGWwI4ZYz1PN1XiEhAHgwVuFRxYP+IqmgdqLZff3h4ZHTU5FuT8SVCLDKbp5eGkX00zQl
2pXy6hbRJnEO2rdrido2/qI0MFk7Nwq4r8Nam5t0bRA91dTfKjTZHOpF7GKCKn+aF8S11Wc17DXL
tk5lxwuZq7ZKEuSQM006AiMZKFLpR+SyXeHAROwt1EuHd4idOZn1HWRXuf5uiUPR9Xalxmn6iSf9
DZOmDE4XQOJo0vpEJkPsXCBQkztdQr8rpmQrM6mYyunJ4IilWC0l37TU9tw1rLchQ6k6zw2bt2gt
B6NfxYZ123gXtLGbiWQB/yfQ8RFH+TTSdPyiS+ZjIVqwb+oUH34+h5/1hjuYt+gspFVu2AwAFGVA
TZOfHxvz9gDs+JwOxBu6PZLZ+knRsfJGpIuxTQGlJKzJqumhzCfDHqhbFIuQNbtEFA1dJOEDpkt1
WiaDrBKFAbTtKBEpmn0bX8nCYgGae4RJpcsQIjDN7LTnypFmGebmDzOGdpskBupJjMEq02JprxOq
Y3kHT/hN8DLEt+7SKUMTEC+Yd9qitQYQWRC/qNMVfeBwEfDUwAspCChzAA+mjLIxoNqL5ErL4YXV
UV74Bo/5darjgBgPkhvtDOcIyQ9l/smcjTka0W/Ko3hK9CAcUGMa7ybwqi4zym4EaNjoNcTlmH3Q
LC22s1+UyDizliz0M8mrk0xoYlkqqcFin9Q72SpOnB39sbiuM6MJ3B9k0E7mOyNv7SDZ7ZUZOajz
SUBca97QidfXDO+aov7N10Dio5VBNKKjGuMKq0iaMWPMn6kSNIL22/uNHwDNS/Q+ZL3H2kO45JYS
ri9zM24u24IOnH85B22C260fCMEc46XCZk6S7jIFQPE9IEtda6KU/orPgh3a1LlYPMdth9ud4mDn
A30ttMH3SxNwYx3WnTkL031BOD0FsDDHLj/qW6Am8woh0dRFbgxT37j2UxfaFFoa1LZVIkz5lVGU
k5Jz2Shaow1OQbvnyYx61dWWUkdHoh3G4A3gCTq45KiF3cLRHVBRagVJMLc8Z9mBBgufYix1nnQW
GaZrbe6jSf4v5hh2aeyVWlGuWKqSSh/dvLEBxygqAx8l8gaEZoJtfRIu0sJca05ImiS3b8RX6950
wfO04/oPM0B8KdImKIgkYDHzmgm6MzOZCGTwSq6MVyGegQmHmL8k7sNc1Rt5vEB6mutj0zFfXE/M
kCbZIzkOBwgUOk4VbVeps7mgETe5ceuV2nhdxLvwsz12OG+b6yrIErq50ViZlFFq1UJ035FdHFWI
l4oOyf1xTzygVFqbe4AAq/DBeY9u+0wXJUHo/r8ItMPBU67RzYtjiYcUrApoPG91IBvDGOPJ6iRZ
JoN/0ydc5U37JP4VmIeiRA8Fj3fbvBN6q4Y8XDisufdlGPJgm4xS1DVnl62yXSRRik3+InvHt4bz
d/dzuQLfKt5XJ62EEwSZ83p9rBTM2J1PLD2+6gW6xhg/evW8brLVhnynYR44S1MTGO6q0rTPIJV4
lxRTj4Nrf+Egy9wlr1+Tqb0iLrjjM6lQp89HmJZ5936qCzE//WxrgbvsGtfMcNbc4ggRIGPTQSVr
2FropKugSH1D80Oq+Pfen5/MGcHIGWuw9wshVoS+gRsOQdOmxTRaWMftQTdp7LaInc8fgYWlhVR0
o302NA5tIu882c6nfEfLPNuHEaqDxCiuyc55bPuch92xZEuG9PAgr7SW+K3spNCB3fBPS9pHIDH+
yih6HHF44lqvCRTGwPd3qfRoz/9XDSLXu11c+T8usIQL8Brj74Xap/6rHS9ADby0aXE+Xf811aog
qLmUTV0wWYnkTI21X/9yg8Kl4GCY/lOdn4sLbzRRqkjKCntN3UPpTR1kZIsI1I1xTecSMLaTFEv+
7EPH5o3D9bttEnOSaOQI6Z84yGJJ6hZRw0pfijmwGOHwP8q+2nTj12Gx9+IW8PYGCRNkZCA84epC
JH+XI+8qbMkYG3gtIepwBJBXt1WeT1Rjgitrgp1fftYoY/g9c/gRABceVP+6Je5YAtkKe2LpicTR
Sd+zffbFpEPcQ38MeGO2x3kZ57LA0zxPIho1x5Rdq6PH4TKLUqeQMc9tBkPW6uqIldI6DnfBYjxe
HhmIPtiWkzDMdnWUcsSLQXBdThQtK2Esr9ju4MCGQKVJ0PUa5R6C47DP2jHFwwq649sP+jxz9r9J
jDX9Wp+XiyrfZAMoKRm2wvInwkuteDWuA3p9fQetCdAka+/LzUwXK/tBpDj1hIsdVcjls88=
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
