-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
-- Date        : Wed Nov 22 07:37:36 2023
-- Host        : DESKTOP-21L0LE9 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub {d:/STUDY/Hardware implementation of
--               CRYSTALS-Dlithium/Kyber/code/Vivado/wrapKyber/wrapKyber.gen/sources_1/ip/MULT3/MULT3_stub.vhdl}
-- Design      : MULT3
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xcau25p-sfvb784-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity MULT3 is
  Port ( 
    CLK : in STD_LOGIC;
    A : in STD_LOGIC_VECTOR ( 15 downto 0 );
    B : in STD_LOGIC_VECTOR ( 15 downto 0 );
    P : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );

end MULT3;

architecture stub of MULT3 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "CLK,A[15:0],B[15:0],P[31:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "mult_gen_v12_0_18,Vivado 2022.2";
begin
end;
