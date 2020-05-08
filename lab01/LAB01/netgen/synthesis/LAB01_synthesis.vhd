--------------------------------------------------------------------------------
-- Copyright (c) 1995-2011 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: O.87xd
--  \   \         Application: netgen
--  /   /         Filename: LAB01_synthesis.vhd
-- /___/   /\     Timestamp: Sat Mar 10 18:51:55 2018
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -ar Structure -tm LAB01 -w -dir netgen/synthesis -ofmt vhdl -sim LAB01.ngc LAB01_synthesis.vhd 
-- Device	: xc3s100e-5-cp132
-- Input file	: LAB01.ngc
-- Output file	: C:\Users\mgala\Documents\Xilinx Projects\LAB01\netgen\synthesis\LAB01_synthesis.vhd
-- # of Entities	: 1
-- Design Name	: LAB01
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

entity LAB01 is
  port (
    IN0 : in STD_LOGIC := 'X'; 
    IN1 : in STD_LOGIC := 'X'; 
    BTN0 : in STD_LOGIC := 'X'; 
    BTN1 : in STD_LOGIC := 'X'; 
    BTN2 : in STD_LOGIC := 'X'; 
    BTN3 : in STD_LOGIC := 'X'; 
    LED : out STD_LOGIC_VECTOR ( 5 downto 0 ) 
  );
end LAB01;

architecture Structure of LAB01 is
  signal BTN0_IBUF_1 : STD_LOGIC; 
  signal BTN1_IBUF_3 : STD_LOGIC; 
  signal BTN2_IBUF_5 : STD_LOGIC; 
  signal BTN3_IBUF_7 : STD_LOGIC; 
  signal LED_0_OBUF_16 : STD_LOGIC; 
  signal LED_1_OBUF_17 : STD_LOGIC; 
  signal LED_2_OBUF_18 : STD_LOGIC; 
  signal LED_3_OBUF_19 : STD_LOGIC; 
  signal LED_4_OBUF_20 : STD_LOGIC; 
  signal LED_5_OBUF_21 : STD_LOGIC; 
begin
  LED_3_and00001 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => LED_4_OBUF_20,
      I1 => BTN3_IBUF_7,
      O => LED_3_OBUF_19
    );
  LED_2_and00001 : LUT3
    generic map(
      INIT => X"A8"
    )
    port map (
      I0 => BTN2_IBUF_5,
      I1 => LED_4_OBUF_20,
      I2 => LED_5_OBUF_21,
      O => LED_2_OBUF_18
    );
  LED_0_and00011 : LUT3
    generic map(
      INIT => X"2A"
    )
    port map (
      I0 => BTN0_IBUF_1,
      I1 => LED_4_OBUF_20,
      I2 => LED_5_OBUF_21,
      O => LED_0_OBUF_16
    );
  LED_1_and00001 : LUT3
    generic map(
      INIT => X"28"
    )
    port map (
      I0 => BTN1_IBUF_3,
      I1 => LED_4_OBUF_20,
      I2 => LED_5_OBUF_21,
      O => LED_1_OBUF_17
    );
  IN0_IBUF : IBUF
    port map (
      I => IN0,
      O => LED_4_OBUF_20
    );
  IN1_IBUF : IBUF
    port map (
      I => IN1,
      O => LED_5_OBUF_21
    );
  BTN0_IBUF : IBUF
    port map (
      I => BTN0,
      O => BTN0_IBUF_1
    );
  BTN1_IBUF : IBUF
    port map (
      I => BTN1,
      O => BTN1_IBUF_3
    );
  BTN2_IBUF : IBUF
    port map (
      I => BTN2,
      O => BTN2_IBUF_5
    );
  BTN3_IBUF : IBUF
    port map (
      I => BTN3,
      O => BTN3_IBUF_7
    );
  LED_5_OBUF : OBUF
    port map (
      I => LED_5_OBUF_21,
      O => LED(5)
    );
  LED_4_OBUF : OBUF
    port map (
      I => LED_4_OBUF_20,
      O => LED(4)
    );
  LED_3_OBUF : OBUF
    port map (
      I => LED_3_OBUF_19,
      O => LED(3)
    );
  LED_2_OBUF : OBUF
    port map (
      I => LED_2_OBUF_18,
      O => LED(2)
    );
  LED_1_OBUF : OBUF
    port map (
      I => LED_1_OBUF_17,
      O => LED(1)
    );
  LED_0_OBUF : OBUF
    port map (
      I => LED_0_OBUF_16,
      O => LED(0)
    );

end Structure;

