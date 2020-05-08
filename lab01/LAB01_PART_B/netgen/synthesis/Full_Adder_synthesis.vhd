--------------------------------------------------------------------------------
-- Copyright (c) 1995-2011 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: O.87xd
--  \   \         Application: netgen
--  /   /         Filename: Full_Adder_synthesis.vhd
-- /___/   /\     Timestamp: Sun Mar 11 18:03:46 2018
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -ar Structure -tm Full_Adder -w -dir netgen/synthesis -ofmt vhdl -sim Full_Adder.ngc Full_Adder_synthesis.vhd 
-- Device	: xc3s100e-5-cp132
-- Input file	: Full_Adder.ngc
-- Output file	: C:\Users\mgala\Documents\Xilinx Projects\LAB01_PART_B\netgen\synthesis\Full_Adder_synthesis.vhd
-- # of Entities	: 1
-- Design Name	: Full_Adder
-- Xilinx	: D:\Xilinx\13.4\ISE_DS\ISE\
--             
-- Purpose:    
--     This VHDL netlist is a verification model and uses simulation 
--     primitives which may not represent the true implementation of the 
--     device, however the netlist is functionally correct and should not 
--     be modified. This file cannot be synthesized and should only be used 
--     with supported simulation tools.
--             
-- Reference:  
--     Command Line Tools User Guide, Chapter 23
--     Synthesis and Simulation Design Guide, Chapter 6
--             
--------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
use UNISIM.VPKG.ALL;

entity Full_Adder is
  port (
    IN0 : in STD_LOGIC := 'X'; 
    IN1 : in STD_LOGIC := 'X'; 
    IN2 : in STD_LOGIC := 'X'; 
    LED : out STD_LOGIC_VECTOR ( 7 downto 6 ) 
  );
end Full_Adder;

architecture Structure of Full_Adder is
  signal IN0_IBUF_1 : STD_LOGIC; 
  signal IN1_IBUF_3 : STD_LOGIC; 
  signal IN2_IBUF_5 : STD_LOGIC; 
  signal LED_6_OBUF_8 : STD_LOGIC; 
  signal LED_7_OBUF_9 : STD_LOGIC; 
begin
  LED_7_or00001 : LUT3
    generic map(
      INIT => X"E8"
    )
    port map (
      I0 => IN1_IBUF_3,
      I1 => IN2_IBUF_5,
      I2 => IN0_IBUF_1,
      O => LED_7_OBUF_9
    );
  HA2_Mxor_Y1_Result1 : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => IN0_IBUF_1,
      I1 => IN1_IBUF_3,
      I2 => IN2_IBUF_5,
      O => LED_6_OBUF_8
    );
  IN0_IBUF : IBUF
    port map (
      I => IN0,
      O => IN0_IBUF_1
    );
  IN1_IBUF : IBUF
    port map (
      I => IN1,
      O => IN1_IBUF_3
    );
  IN2_IBUF : IBUF
    port map (
      I => IN2,
      O => IN2_IBUF_5
    );
  LED_7_OBUF : OBUF
    port map (
      I => LED_7_OBUF_9,
      O => LED(7)
    );
  LED_6_OBUF : OBUF
    port map (
      I => LED_6_OBUF_8,
      O => LED(6)
    );

end Structure;

