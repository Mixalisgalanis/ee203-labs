--------------------------------------------------------------------------------
-- Copyright (c) 1995-2011 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: O.87xd
--  \   \         Application: netgen
--  /   /         Filename: LAB01_map.vhd
-- /___/   /\     Timestamp: Sat Mar 10 17:58:07 2018
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -s 5 -pcf LAB01.pcf -rpw 100 -tpw 0 -ar Structure -tm LAB01 -w -dir netgen/map -ofmt vhdl -sim LAB01_map.ncd LAB01_map.vhd 
-- Device	: 3s100ecp132-5 (PRODUCTION 1.27 2012-01-07)
-- Input file	: LAB01_map.ncd
-- Output file	: C:\Users\mgala\Documents\Xilinx Projects\LAB01\netgen\map\LAB01_map.vhd
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
library SIMPRIM;
use SIMPRIM.VCOMPONENTS.ALL;
use SIMPRIM.VPACKAGE.ALL;

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
  signal BTN0_IBUF_49 : STD_LOGIC; 
  signal BTN1_IBUF_50 : STD_LOGIC; 
  signal BTN2_IBUF_51 : STD_LOGIC; 
  signal BTN3_IBUF_52 : STD_LOGIC; 
  signal IN0_IBUF_53 : STD_LOGIC; 
  signal IN1_IBUF_54 : STD_LOGIC; 
  signal LED_3_O : STD_LOGIC; 
  signal LED_0_O : STD_LOGIC; 
  signal LED_1_O : STD_LOGIC; 
  signal LED_2_O : STD_LOGIC; 
  signal LED_3_OBUF_168 : STD_LOGIC; 
  signal LED_2_OBUF_159 : STD_LOGIC; 
  signal BTN1_INBUF : STD_LOGIC; 
  signal LED_1_OBUF_144 : STD_LOGIC; 
  signal LED_0_OBUF_136 : STD_LOGIC; 
  signal BTN2_INBUF : STD_LOGIC; 
  signal BTN3_INBUF : STD_LOGIC; 
  signal IN1_INBUF : STD_LOGIC; 
  signal BTN0_INBUF : STD_LOGIC; 
  signal IN0_INBUF : STD_LOGIC; 
  signal VCC : STD_LOGIC; 
begin
  LED_3_OBUF : X_OBUF
    port map (
      I => LED_3_O,
      O => LED(3)
    );
  LED_0_OBUF : X_OBUF
    port map (
      I => LED_0_O,
      O => LED(0)
    );
  LED_1_OBUF : X_OBUF
    port map (
      I => LED_1_O,
      O => LED(1)
    );
  LED_2_OBUF : X_OBUF
    port map (
      I => LED_2_O,
      O => LED(2)
    );
  BTN1_IBUF : X_BUF
    generic map(
      PATHPULSE => 694 ps
    )
    port map (
      I => BTN1,
      O => BTN1_INBUF
    );
  BTN2_IBUF : X_BUF
    generic map(
      PATHPULSE => 694 ps
    )
    port map (
      I => BTN2,
      O => BTN2_INBUF
    );
  BTN3_IBUF : X_BUF
    generic map(
      PATHPULSE => 694 ps
    )
    port map (
      I => BTN3,
      O => BTN3_INBUF
    );
  IN1_IBUF : X_BUF
    generic map(
      PATHPULSE => 694 ps
    )
    port map (
      I => IN1,
      O => IN1_INBUF
    );
  BTN0_IBUF : X_BUF
    generic map(
      PATHPULSE => 694 ps
    )
    port map (
      I => BTN0,
      O => BTN0_INBUF
    );
  IN0_IBUF : X_BUF
    generic map(
      PATHPULSE => 694 ps
    )
    port map (
      I => IN0,
      O => IN0_INBUF
    );
  LED_0_and00011 : X_LUT4
    generic map(
      INIT => X"2A2A"
    )
    port map (
      ADR0 => BTN0_IBUF_49,
      ADR1 => IN0_IBUF_53,
      ADR2 => IN1_IBUF_54,
      ADR3 => VCC,
      O => LED_0_OBUF_136
    );
  LED_3_and00001 : X_LUT4
    generic map(
      INIT => X"4444"
    )
    port map (
      ADR0 => IN0_IBUF_53,
      ADR1 => BTN3_IBUF_52,
      ADR2 => VCC,
      ADR3 => VCC,
      O => LED_3_OBUF_168
    );
  BTN3_IFF_IMUX : X_BUF
    generic map(
      PATHPULSE => 694 ps
    )
    port map (
      I => BTN3_INBUF,
      O => BTN3_IBUF_52
    );
  LED_2_and00001 : X_LUT4
    generic map(
      INIT => X"A8A8"
    )
    port map (
      ADR0 => BTN2_IBUF_51,
      ADR1 => IN0_IBUF_53,
      ADR2 => IN1_IBUF_54,
      ADR3 => VCC,
      O => LED_2_OBUF_159
    );
  IN1_IFF_IMUX : X_BUF
    generic map(
      PATHPULSE => 694 ps
    )
    port map (
      I => IN1_INBUF,
      O => IN1_IBUF_54
    );
  LED_1_and00001 : X_LUT4
    generic map(
      INIT => X"2828"
    )
    port map (
      ADR0 => BTN1_IBUF_50,
      ADR1 => IN0_IBUF_53,
      ADR2 => IN1_IBUF_54,
      ADR3 => VCC,
      O => LED_1_OBUF_144
    );
  IN0_IFF_IMUX : X_BUF
    generic map(
      PATHPULSE => 694 ps
    )
    port map (
      I => IN0_INBUF,
      O => IN0_IBUF_53
    );
  BTN1_IFF_IMUX : X_BUF
    generic map(
      PATHPULSE => 694 ps
    )
    port map (
      I => BTN1_INBUF,
      O => BTN1_IBUF_50
    );
  BTN0_IFF_IMUX : X_BUF
    generic map(
      PATHPULSE => 694 ps
    )
    port map (
      I => BTN0_INBUF,
      O => BTN0_IBUF_49
    );
  BTN2_IFF_IMUX : X_BUF
    generic map(
      PATHPULSE => 694 ps
    )
    port map (
      I => BTN2_INBUF,
      O => BTN2_IBUF_51
    );
  LED_3_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      PATHPULSE => 694 ps
    )
    port map (
      I => LED_3_OBUF_168,
      O => LED_3_O
    );
  LED_0_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      PATHPULSE => 694 ps
    )
    port map (
      I => LED_0_OBUF_136,
      O => LED_0_O
    );
  LED_1_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      PATHPULSE => 694 ps
    )
    port map (
      I => LED_1_OBUF_144,
      O => LED_1_O
    );
  LED_2_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      PATHPULSE => 694 ps
    )
    port map (
      I => LED_2_OBUF_159,
      O => LED_2_O
    );
  NlwBlock_LAB01_VCC : X_ONE
    port map (
      O => VCC
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

