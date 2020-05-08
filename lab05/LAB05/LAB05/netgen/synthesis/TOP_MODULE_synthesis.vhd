--------------------------------------------------------------------------------
-- Copyright (c) 1995-2011 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: O.87xd
--  \   \         Application: netgen
--  /   /         Filename: TOP_MODULE_synthesis.vhd
-- /___/   /\     Timestamp: Thu May 17 16:17:27 2018
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -ar Structure -tm TOP_MODULE -w -dir netgen/synthesis -ofmt vhdl -sim TOP_MODULE.ngc TOP_MODULE_synthesis.vhd 
-- Device	: xc3s100e-5-cp132
-- Input file	: TOP_MODULE.ngc
-- Output file	: C:\Users\MHL-14\Desktop\LAB05\netgen\synthesis\TOP_MODULE_synthesis.vhd
-- # of Entities	: 1
-- Design Name	: TOP_MODULE
-- Xilinx	: C:\Xilinx\13.4\ISE_DS\ISE\
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


-- synthesis translate_off
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
use UNISIM.VPKG.ALL;

entity TOP_MODULE is
  port (
    CLK : in STD_LOGIC := 'X'; 
    RST : in STD_LOGIC := 'X'; 
    MODE : in STD_LOGIC := 'X'; 
    BTN0 : in STD_LOGIC := 'X'; 
    BTN1 : in STD_LOGIC := 'X'; 
    SSD_VALUE : out STD_LOGIC_VECTOR ( 7 downto 0 ); 
    SSD_EN : out STD_LOGIC_VECTOR ( 3 downto 0 ); 
    NUM_OUT : out STD_LOGIC_VECTOR ( 7 downto 0 ); 
    NUM_IN : in STD_LOGIC_VECTOR ( 7 downto 0 ) 
  );
end TOP_MODULE;

architecture Structure of TOP_MODULE is
  component Stack
    port (
      clka : in STD_LOGIC := 'X'; 
      douta : out STD_LOGIC_VECTOR ( 7 downto 0 ); 
      wea : in STD_LOGIC_VECTOR ( 0 downto 0 ); 
      addra : in STD_LOGIC_VECTOR ( 3 downto 0 ); 
      dina : in STD_LOGIC_VECTOR ( 7 downto 0 ) 
    );
  end component;
  signal BTN0_IBUF_1 : STD_LOGIC; 
  signal BTN1_IBUF_3 : STD_LOGIC; 
  signal CLK_BUFGP_5 : STD_LOGIC; 
  signal MODE_IBUF_7 : STD_LOGIC; 
  signal N0 : STD_LOGIC; 
  signal N10 : STD_LOGIC; 
  signal N104 : STD_LOGIC; 
  signal N106 : STD_LOGIC; 
  signal N108 : STD_LOGIC; 
  signal N11 : STD_LOGIC; 
  signal N110 : STD_LOGIC; 
  signal N112 : STD_LOGIC; 
  signal N114 : STD_LOGIC; 
  signal N116 : STD_LOGIC; 
  signal N118 : STD_LOGIC; 
  signal N120 : STD_LOGIC; 
  signal N122 : STD_LOGIC; 
  signal N124 : STD_LOGIC; 
  signal N128 : STD_LOGIC; 
  signal N134 : STD_LOGIC; 
  signal N136 : STD_LOGIC; 
  signal N137 : STD_LOGIC; 
  signal N138 : STD_LOGIC; 
  signal N139 : STD_LOGIC; 
  signal N140 : STD_LOGIC; 
  signal N141 : STD_LOGIC; 
  signal N142 : STD_LOGIC; 
  signal N143 : STD_LOGIC; 
  signal N17 : STD_LOGIC; 
  signal N18 : STD_LOGIC; 
  signal N22 : STD_LOGIC; 
  signal N24 : STD_LOGIC; 
  signal N26 : STD_LOGIC; 
  signal N31 : STD_LOGIC; 
  signal N33 : STD_LOGIC; 
  signal N40 : STD_LOGIC; 
  signal N41 : STD_LOGIC; 
  signal N44 : STD_LOGIC; 
  signal N61 : STD_LOGIC; 
  signal N62 : STD_LOGIC; 
  signal N64 : STD_LOGIC; 
  signal N66 : STD_LOGIC; 
  signal N68 : STD_LOGIC; 
  signal N70 : STD_LOGIC; 
  signal N72 : STD_LOGIC; 
  signal N77 : STD_LOGIC; 
  signal N78 : STD_LOGIC; 
  signal N82 : STD_LOGIC; 
  signal N83 : STD_LOGIC; 
  signal N84 : STD_LOGIC; 
  signal NUM_IN_0_IBUF_62 : STD_LOGIC; 
  signal NUM_IN_1_IBUF_63 : STD_LOGIC; 
  signal NUM_IN_2_IBUF_64 : STD_LOGIC; 
  signal NUM_IN_3_IBUF_65 : STD_LOGIC; 
  signal NUM_IN_4_IBUF_66 : STD_LOGIC; 
  signal NUM_IN_5_IBUF_67 : STD_LOGIC; 
  signal NUM_IN_6_IBUF_68 : STD_LOGIC; 
  signal NUM_IN_7_IBUF_69 : STD_LOGIC; 
  signal NUM_OUT_0_OBUF_78 : STD_LOGIC; 
  signal NUM_OUT_1_OBUF_79 : STD_LOGIC; 
  signal NUM_OUT_2_OBUF_80 : STD_LOGIC; 
  signal NUM_OUT_3_OBUF_81 : STD_LOGIC; 
  signal NUM_OUT_4_OBUF_82 : STD_LOGIC; 
  signal NUM_OUT_5_OBUF_83 : STD_LOGIC; 
  signal NUM_OUT_6_OBUF_84 : STD_LOGIC; 
  signal NUM_OUT_7_OBUF_85 : STD_LOGIC; 
  signal RST_IBUF_87 : STD_LOGIC; 
  signal SSD_Counter125K_Mcount_temp_cy_10_rt_107 : STD_LOGIC; 
  signal SSD_Counter125K_Mcount_temp_cy_11_rt_109 : STD_LOGIC; 
  signal SSD_Counter125K_Mcount_temp_cy_12_rt_111 : STD_LOGIC; 
  signal SSD_Counter125K_Mcount_temp_cy_13_rt_113 : STD_LOGIC; 
  signal SSD_Counter125K_Mcount_temp_cy_14_rt_115 : STD_LOGIC; 
  signal SSD_Counter125K_Mcount_temp_cy_15_rt_117 : STD_LOGIC; 
  signal SSD_Counter125K_Mcount_temp_cy_1_rt_119 : STD_LOGIC; 
  signal SSD_Counter125K_Mcount_temp_cy_2_rt_121 : STD_LOGIC; 
  signal SSD_Counter125K_Mcount_temp_cy_3_rt_123 : STD_LOGIC; 
  signal SSD_Counter125K_Mcount_temp_cy_4_rt_125 : STD_LOGIC; 
  signal SSD_Counter125K_Mcount_temp_cy_5_rt_127 : STD_LOGIC; 
  signal SSD_Counter125K_Mcount_temp_cy_6_rt_129 : STD_LOGIC; 
  signal SSD_Counter125K_Mcount_temp_cy_7_rt_131 : STD_LOGIC; 
  signal SSD_Counter125K_Mcount_temp_cy_8_rt_133 : STD_LOGIC; 
  signal SSD_Counter125K_Mcount_temp_cy_9_rt_135 : STD_LOGIC; 
  signal SSD_Counter125K_Mcount_temp_eqn_0 : STD_LOGIC; 
  signal SSD_Counter125K_Mcount_temp_eqn_1 : STD_LOGIC; 
  signal SSD_Counter125K_Mcount_temp_eqn_10 : STD_LOGIC; 
  signal SSD_Counter125K_Mcount_temp_eqn_11 : STD_LOGIC; 
  signal SSD_Counter125K_Mcount_temp_eqn_12 : STD_LOGIC; 
  signal SSD_Counter125K_Mcount_temp_eqn_13 : STD_LOGIC; 
  signal SSD_Counter125K_Mcount_temp_eqn_14 : STD_LOGIC; 
  signal SSD_Counter125K_Mcount_temp_eqn_15 : STD_LOGIC; 
  signal SSD_Counter125K_Mcount_temp_eqn_16 : STD_LOGIC; 
  signal SSD_Counter125K_Mcount_temp_eqn_2 : STD_LOGIC; 
  signal SSD_Counter125K_Mcount_temp_eqn_3 : STD_LOGIC; 
  signal SSD_Counter125K_Mcount_temp_eqn_4 : STD_LOGIC; 
  signal SSD_Counter125K_Mcount_temp_eqn_5 : STD_LOGIC; 
  signal SSD_Counter125K_Mcount_temp_eqn_6 : STD_LOGIC; 
  signal SSD_Counter125K_Mcount_temp_eqn_7 : STD_LOGIC; 
  signal SSD_Counter125K_Mcount_temp_eqn_8 : STD_LOGIC; 
  signal SSD_Counter125K_Mcount_temp_eqn_9 : STD_LOGIC; 
  signal SSD_Counter125K_Mcount_temp_xor_16_rt_154 : STD_LOGIC; 
  signal SSD_Counter125K_temp_cmp_eq0000 : STD_LOGIC; 
  signal SSD_Counter125K_temp_cmp_eq00001_wg_cy_0_rt_174 : STD_LOGIC; 
  signal SSD_DataPath_FinalSegmentSelector_Mmux_SEG_2_f5_51 : STD_LOGIC; 
  signal SSD_DataPath_FinalSegmentSelector_Mmux_SEG_2_f5_511_183 : STD_LOGIC; 
  signal SSD_DataPath_FinalSegmentSelector_Mmux_SEG_3_184 : STD_LOGIC; 
  signal SSD_DataPath_FinalSegmentSelector_Mmux_SEG_31_185 : STD_LOGIC; 
  signal SSD_DataPath_FinalSegmentSelector_Mmux_SEG_33_186 : STD_LOGIC; 
  signal SSD_DataPath_FinalSegmentSelector_Mmux_SEG_34_187 : STD_LOGIC; 
  signal SSD_DataPath_FinalSegmentSelector_Mmux_SEG_4 : STD_LOGIC; 
  signal SSD_DataPath_FinalSegmentSelector_Mmux_SEG_41 : STD_LOGIC; 
  signal SSD_DataPath_FinalSegmentSelector_Mmux_SEG_43_190 : STD_LOGIC; 
  signal SSD_DataPath_FinalSegmentSelector_Mmux_SEG_44 : STD_LOGIC; 
  signal SSD_DataPath_signal_DecoderOut_0_Q : STD_LOGIC; 
  signal SSD_DataPath_signal_DecoderOut_10_Q_193 : STD_LOGIC; 
  signal SSD_DataPath_signal_DecoderOut_14_Q : STD_LOGIC; 
  signal SSD_DataPath_signal_DecoderOut_16_Q : STD_LOGIC; 
  signal SSD_DataPath_signal_DecoderOut_24_Q : STD_LOGIC; 
  signal SSD_DataPath_signal_DecoderOut_25_Q : STD_LOGIC; 
  signal SSD_DataPath_signal_DecoderOut_27_Q : STD_LOGIC; 
  signal SSD_DataPath_signal_DecoderOut_28_Q : STD_LOGIC; 
  signal SSD_DataPath_signal_DecoderOut_3_Q : STD_LOGIC; 
  signal SSD_Fsm_fsm_state_FSM_FFd1_201 : STD_LOGIC; 
  signal SSD_Fsm_fsm_state_FSM_FFd1_In : STD_LOGIC; 
  signal SSD_Fsm_fsm_state_FSM_FFd2_203 : STD_LOGIC; 
  signal SSD_Fsm_fsm_state_FSM_FFd2_In : STD_LOGIC; 
  signal SSD_EN_0_OBUF_209 : STD_LOGIC; 
  signal SSD_EN_1_OBUF_210 : STD_LOGIC; 
  signal SSD_EN_2_OBUF_211 : STD_LOGIC; 
  signal SSD_EN_3_OBUF_212 : STD_LOGIC; 
  signal SSD_VALUE_0_OBUF_221 : STD_LOGIC; 
  signal SSD_VALUE_1_OBUF_222 : STD_LOGIC; 
  signal SSD_VALUE_2_OBUF_223 : STD_LOGIC; 
  signal SSD_VALUE_3_OBUF_224 : STD_LOGIC; 
  signal SSD_VALUE_4_OBUF_225 : STD_LOGIC; 
  signal SSD_VALUE_5_OBUF_226 : STD_LOGIC; 
  signal SSD_VALUE_6_OBUF_227 : STD_LOGIC; 
  signal STACK_ADD_SUB_UN_FSM_1_fsm_state_FSM_FFd1_228 : STD_LOGIC; 
  signal STACK_ADD_SUB_UN_FSM_1_fsm_state_FSM_FFd1_In_229 : STD_LOGIC; 
  signal STACK_ADD_SUB_UN_FSM_1_fsm_state_FSM_FFd2_230 : STD_LOGIC; 
  signal STACK_ADD_SUB_UN_FSM_1_fsm_state_FSM_FFd3_231 : STD_LOGIC; 
  signal STACK_ADD_SUB_UN_FSM_1_fsm_state_FSM_FFd3_In1_232 : STD_LOGIC; 
  signal STACK_ADD_SUB_UN_FSM_1_fsm_state_FSM_FFd4_233 : STD_LOGIC; 
  signal STACK_ADD_SUB_UN_FSM_1_fsm_state_FSM_FFd4_In : STD_LOGIC; 
  signal STACK_ADD_SUB_UN_FSM_1_fsm_state_FSM_FFd5_235 : STD_LOGIC; 
  signal STACK_ADD_SUB_UN_FSM_1_fsm_state_FSM_FFd6_236 : STD_LOGIC; 
  signal STACK_ADD_SUB_UN_FSM_1_fsm_state_FSM_FFd6_In_237 : STD_LOGIC; 
  signal STACK_DataPath_ADDER_SUBBER_1_Maddsub_tempS_lut_7_1_254 : STD_LOGIC; 
  signal STACK_DataPath_Cout : STD_LOGIC; 
  signal STACK_DataPath_Demux_Swapper_1_X_and0000 : STD_LOGIC; 
  signal STACK_DataPath_Demux_Swapper_1_Y_0_1 : STD_LOGIC; 
  signal STACK_DataPath_Demux_Swapper_1_Y_1_1 : STD_LOGIC; 
  signal STACK_DataPath_Demux_Swapper_1_Y_2_1 : STD_LOGIC; 
  signal STACK_DataPath_Demux_Swapper_1_Y_3_1 : STD_LOGIC; 
  signal STACK_DataPath_Demux_Swapper_1_Y_4_1 : STD_LOGIC; 
  signal STACK_DataPath_Demux_Swapper_1_Y_5_1 : STD_LOGIC; 
  signal STACK_DataPath_Demux_Swapper_1_Y_6_1 : STD_LOGIC; 
  signal STACK_DataPath_Demux_Swapper_1_Y_7_1 : STD_LOGIC; 
  signal STACK_DataPath_M1 : STD_LOGIC; 
  signal STACK_DataPath_Mux_A_ADDER_1_X_and0000 : STD_LOGIC; 
  signal STACK_DataPath_Mux_Pre_Stack_1_X_0_381 : STD_LOGIC; 
  signal STACK_DataPath_Mux_Pre_Stack_1_X_0_3811_268 : STD_LOGIC; 
  signal STACK_DataPath_Mux_Pre_Stack_1_X_1_381 : STD_LOGIC; 
  signal STACK_DataPath_Mux_Pre_Stack_1_X_1_3811_270 : STD_LOGIC; 
  signal STACK_DataPath_Mux_Pre_Stack_1_X_2_381 : STD_LOGIC; 
  signal STACK_DataPath_Mux_Pre_Stack_1_X_2_3811_272 : STD_LOGIC; 
  signal STACK_DataPath_Mux_Pre_Stack_1_X_3_381 : STD_LOGIC; 
  signal STACK_DataPath_Mux_Pre_Stack_1_X_3_3811_274 : STD_LOGIC; 
  signal STACK_DataPath_Mux_Pre_Stack_1_X_4_381 : STD_LOGIC; 
  signal STACK_DataPath_Mux_Pre_Stack_1_X_4_3811_276 : STD_LOGIC; 
  signal STACK_DataPath_Mux_Pre_Stack_1_X_5_381 : STD_LOGIC; 
  signal STACK_DataPath_Mux_Pre_Stack_1_X_5_3811_278 : STD_LOGIC; 
  signal STACK_DataPath_Mux_Pre_Stack_1_X_6_381 : STD_LOGIC; 
  signal STACK_DataPath_Mux_Pre_Stack_1_X_6_3811_280 : STD_LOGIC; 
  signal STACK_DataPath_Mux_Pre_Stack_1_X_7_381 : STD_LOGIC; 
  signal STACK_DataPath_Mux_Pre_Stack_1_X_cmp_eq0000 : STD_LOGIC; 
  signal STACK_DataPath_N01 : STD_LOGIC; 
  signal STACK_DataPath_signal_B_adder_0_Q : STD_LOGIC; 
  signal STACK_DataPath_signal_B_adder_7_Q : STD_LOGIC; 
  signal STACK_DataPath_signal_register_enabler_1 : STD_LOGIC; 
  signal STACK_FSM_EN10_318 : STD_LOGIC; 
  signal STACK_FSM_fsm_state_FSM_FFd1_319 : STD_LOGIC; 
  signal STACK_FSM_fsm_state_FSM_FFd1_In27_320 : STD_LOGIC; 
  signal STACK_FSM_fsm_state_FSM_FFd1_In31 : STD_LOGIC; 
  signal STACK_FSM_fsm_state_FSM_FFd1_In6 : STD_LOGIC; 
  signal STACK_FSM_fsm_state_FSM_FFd1_In61_323 : STD_LOGIC; 
  signal STACK_FSM_fsm_state_FSM_FFd2_324 : STD_LOGIC; 
  signal STACK_FSM_fsm_state_FSM_FFd2_In : STD_LOGIC; 
  signal STACK_FSM_fsm_state_FSM_FFd2_In30 : STD_LOGIC; 
  signal STACK_FSM_fsm_state_FSM_FFd2_In301_327 : STD_LOGIC; 
  signal STACK_FSM_fsm_state_FSM_FFd2_In50_328 : STD_LOGIC; 
  signal STACK_FlipFlopStack_2_Mshreg_Q_329 : STD_LOGIC; 
  signal STACK_FlipFlopStack_2_Q_330 : STD_LOGIC; 
  signal STACK_N23 : STD_LOGIC; 
  signal STACK_N7 : STD_LOGIC; 
  signal STACK_OPERATION_FSM_fsm_state_FSM_FFd1_333 : STD_LOGIC; 
  signal STACK_OPERATION_FSM_fsm_state_FSM_FFd1_In_334 : STD_LOGIC; 
  signal STACK_OPERATION_FSM_fsm_state_FSM_FFd1_1_335 : STD_LOGIC; 
  signal STACK_OPERATION_FSM_fsm_state_FSM_FFd2_336 : STD_LOGIC; 
  signal STACK_OPERATION_FSM_fsm_state_FSM_FFd2_In_337 : STD_LOGIC; 
  signal STACK_OPERATION_FSM_fsm_state_FSM_FFd3_338 : STD_LOGIC; 
  signal STACK_OPERATION_FSM_fsm_state_FSM_FFd3_In : STD_LOGIC; 
  signal STACK_SPGEN_BTN0_currentS_FSM_FFd2_344 : STD_LOGIC; 
  signal STACK_SPGEN_BTN0_currentS_FSM_FFd2_In : STD_LOGIC; 
  signal STACK_SPGEN_BTN0_currentS_FSM_FFd3_346 : STD_LOGIC; 
  signal STACK_SPGEN_BTN0_currentS_FSM_FFd3_In : STD_LOGIC; 
  signal STACK_SPGEN_BTN1_currentS_FSM_FFd2_348 : STD_LOGIC; 
  signal STACK_SPGEN_BTN1_currentS_FSM_FFd2_In : STD_LOGIC; 
  signal STACK_SPGEN_BTN1_currentS_FSM_FFd3_350 : STD_LOGIC; 
  signal STACK_SPGEN_BTN1_currentS_FSM_FFd3_In : STD_LOGIC; 
  signal STACK_SPGEN_MODE_currentS_FSM_FFd2_352 : STD_LOGIC; 
  signal STACK_SPGEN_MODE_currentS_FSM_FFd2_In : STD_LOGIC; 
  signal STACK_SPGEN_MODE_currentS_FSM_FFd3_354 : STD_LOGIC; 
  signal STACK_SPGEN_MODE_currentS_FSM_FFd3_In : STD_LOGIC; 
  signal STACK_SWAP_FSM_1_fsm_state_FSM_FFd1_356 : STD_LOGIC; 
  signal STACK_SWAP_FSM_1_fsm_state_FSM_FFd2_357 : STD_LOGIC; 
  signal STACK_SWAP_FSM_1_fsm_state_FSM_FFd3_358 : STD_LOGIC; 
  signal STACK_SWAP_FSM_1_fsm_state_FSM_FFd4_359 : STD_LOGIC; 
  signal STACK_SWAP_FSM_1_fsm_state_FSM_FFd5_360 : STD_LOGIC; 
  signal STACK_SWAP_FSM_1_fsm_state_or0000 : STD_LOGIC; 
  signal STACK_TOS_Mcount_temp_xor_3_12 : STD_LOGIC; 
  signal STACK_TOS_Mcount_temp_xor_3_121_363 : STD_LOGIC; 
  signal STACK_signal_FSMOut_EN : STD_LOGIC; 
  signal STACK_signal_FSMOut_UD : STD_LOGIC; 
  signal STACK_signal_OVF : STD_LOGIC; 
  signal Result : STD_LOGIC_VECTOR ( 16 downto 0 ); 
  signal SSD_Counter125K_Mcount_temp_cy : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal SSD_Counter125K_Mcount_temp_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal SSD_Counter125K_temp : STD_LOGIC_VECTOR ( 16 downto 0 ); 
  signal SSD_Counter125K_temp_cmp_eq00001_wg_cy : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal SSD_Counter125K_temp_cmp_eq00001_wg_lut : STD_LOGIC_VECTOR ( 4 downto 1 ); 
  signal STACK_DataPath_ADDER_SUBBER_1_Maddsub_tempS_cy : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal STACK_DataPath_ADDER_SUBBER_1_Maddsub_tempS_lut : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal STACK_DataPath_Stack_Register_1_Q : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal STACK_DataPath_Stack_Register_2_Q : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal STACK_DataPath_signal_A_adder : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal STACK_DataPath_signal_result_adder : STD_LOGIC_VECTOR ( 6 downto 0 ); 
  signal STACK_Result : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal STACK_TOS_temp : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal STACK_signal_TOS_SELECTOR : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal STACK_signal_stackIn : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal signal_SEL : STD_LOGIC_VECTOR ( 1 downto 0 ); 
  signal signal_stack_state : STD_LOGIC_VECTOR ( 1 downto 0 ); 
begin
  XST_GND : GND
    port map (
      G => N0
    );
  XST_VCC : VCC
    port map (
      P => SSD_DataPath_signal_DecoderOut_14_Q
    );
  SSD_Fsm_fsm_state_FSM_FFd1 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_5,
      D => SSD_Fsm_fsm_state_FSM_FFd1_In,
      R => RST_IBUF_87,
      Q => SSD_Fsm_fsm_state_FSM_FFd1_201
    );
  SSD_Fsm_fsm_state_FSM_FFd2 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_5,
      D => SSD_Fsm_fsm_state_FSM_FFd2_In,
      R => RST_IBUF_87,
      Q => SSD_Fsm_fsm_state_FSM_FFd2_203
    );
  SSD_Counter125K_temp_0 : FDC
    port map (
      C => CLK_BUFGP_5,
      CLR => RST_IBUF_87,
      D => SSD_Counter125K_Mcount_temp_eqn_0,
      Q => SSD_Counter125K_temp(0)
    );
  SSD_Counter125K_temp_1 : FDC
    port map (
      C => CLK_BUFGP_5,
      CLR => RST_IBUF_87,
      D => SSD_Counter125K_Mcount_temp_eqn_1,
      Q => SSD_Counter125K_temp(1)
    );
  SSD_Counter125K_temp_2 : FDC
    port map (
      C => CLK_BUFGP_5,
      CLR => RST_IBUF_87,
      D => SSD_Counter125K_Mcount_temp_eqn_2,
      Q => SSD_Counter125K_temp(2)
    );
  SSD_Counter125K_temp_3 : FDC
    port map (
      C => CLK_BUFGP_5,
      CLR => RST_IBUF_87,
      D => SSD_Counter125K_Mcount_temp_eqn_3,
      Q => SSD_Counter125K_temp(3)
    );
  SSD_Counter125K_temp_4 : FDC
    port map (
      C => CLK_BUFGP_5,
      CLR => RST_IBUF_87,
      D => SSD_Counter125K_Mcount_temp_eqn_4,
      Q => SSD_Counter125K_temp(4)
    );
  SSD_Counter125K_temp_5 : FDC
    port map (
      C => CLK_BUFGP_5,
      CLR => RST_IBUF_87,
      D => SSD_Counter125K_Mcount_temp_eqn_5,
      Q => SSD_Counter125K_temp(5)
    );
  SSD_Counter125K_temp_6 : FDC
    port map (
      C => CLK_BUFGP_5,
      CLR => RST_IBUF_87,
      D => SSD_Counter125K_Mcount_temp_eqn_6,
      Q => SSD_Counter125K_temp(6)
    );
  SSD_Counter125K_temp_7 : FDC
    port map (
      C => CLK_BUFGP_5,
      CLR => RST_IBUF_87,
      D => SSD_Counter125K_Mcount_temp_eqn_7,
      Q => SSD_Counter125K_temp(7)
    );
  SSD_Counter125K_temp_8 : FDC
    port map (
      C => CLK_BUFGP_5,
      CLR => RST_IBUF_87,
      D => SSD_Counter125K_Mcount_temp_eqn_8,
      Q => SSD_Counter125K_temp(8)
    );
  SSD_Counter125K_temp_9 : FDC
    port map (
      C => CLK_BUFGP_5,
      CLR => RST_IBUF_87,
      D => SSD_Counter125K_Mcount_temp_eqn_9,
      Q => SSD_Counter125K_temp(9)
    );
  SSD_Counter125K_temp_10 : FDC
    port map (
      C => CLK_BUFGP_5,
      CLR => RST_IBUF_87,
      D => SSD_Counter125K_Mcount_temp_eqn_10,
      Q => SSD_Counter125K_temp(10)
    );
  SSD_Counter125K_temp_11 : FDC
    port map (
      C => CLK_BUFGP_5,
      CLR => RST_IBUF_87,
      D => SSD_Counter125K_Mcount_temp_eqn_11,
      Q => SSD_Counter125K_temp(11)
    );
  SSD_Counter125K_temp_12 : FDC
    port map (
      C => CLK_BUFGP_5,
      CLR => RST_IBUF_87,
      D => SSD_Counter125K_Mcount_temp_eqn_12,
      Q => SSD_Counter125K_temp(12)
    );
  SSD_Counter125K_temp_13 : FDC
    port map (
      C => CLK_BUFGP_5,
      CLR => RST_IBUF_87,
      D => SSD_Counter125K_Mcount_temp_eqn_13,
      Q => SSD_Counter125K_temp(13)
    );
  SSD_Counter125K_temp_14 : FDC
    port map (
      C => CLK_BUFGP_5,
      CLR => RST_IBUF_87,
      D => SSD_Counter125K_Mcount_temp_eqn_14,
      Q => SSD_Counter125K_temp(14)
    );
  SSD_Counter125K_temp_15 : FDC
    port map (
      C => CLK_BUFGP_5,
      CLR => RST_IBUF_87,
      D => SSD_Counter125K_Mcount_temp_eqn_15,
      Q => SSD_Counter125K_temp(15)
    );
  SSD_Counter125K_temp_16 : FDC
    port map (
      C => CLK_BUFGP_5,
      CLR => RST_IBUF_87,
      D => SSD_Counter125K_Mcount_temp_eqn_16,
      Q => SSD_Counter125K_temp(16)
    );
  SSD_DataPath_FinalSegmentSelector_Mmux_SEG_46 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => SSD_Fsm_fsm_state_FSM_FFd2_203,
      I1 => SSD_DataPath_signal_DecoderOut_0_Q,
      I2 => SSD_DataPath_signal_DecoderOut_14_Q,
      O => SSD_DataPath_FinalSegmentSelector_Mmux_SEG_4
    );
  SSD_DataPath_FinalSegmentSelector_Mmux_SEG_45 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => SSD_Fsm_fsm_state_FSM_FFd2_203,
      I1 => SSD_DataPath_signal_DecoderOut_0_Q,
      I2 => SSD_DataPath_signal_DecoderOut_10_Q_193,
      O => SSD_DataPath_FinalSegmentSelector_Mmux_SEG_44
    );
  SSD_DataPath_FinalSegmentSelector_Mmux_SEG_2_f5_3 : MUXF5
    port map (
      I0 => SSD_DataPath_FinalSegmentSelector_Mmux_SEG_44,
      I1 => SSD_DataPath_FinalSegmentSelector_Mmux_SEG_34_187,
      S => SSD_Fsm_fsm_state_FSM_FFd1_201,
      O => SSD_VALUE_4_OBUF_225
    );
  SSD_DataPath_FinalSegmentSelector_Mmux_SEG_34 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => SSD_Fsm_fsm_state_FSM_FFd2_203,
      I1 => SSD_DataPath_signal_DecoderOut_10_Q_193,
      I2 => SSD_DataPath_signal_DecoderOut_28_Q,
      O => SSD_DataPath_FinalSegmentSelector_Mmux_SEG_34_187
    );
  SSD_DataPath_FinalSegmentSelector_Mmux_SEG_2_f5_2 : MUXF5
    port map (
      I0 => SSD_DataPath_FinalSegmentSelector_Mmux_SEG_43_190,
      I1 => SSD_DataPath_FinalSegmentSelector_Mmux_SEG_33_186,
      S => SSD_Fsm_fsm_state_FSM_FFd1_201,
      O => SSD_VALUE_3_OBUF_224
    );
  SSD_DataPath_FinalSegmentSelector_Mmux_SEG_43 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => SSD_Fsm_fsm_state_FSM_FFd2_203,
      I1 => SSD_DataPath_signal_DecoderOut_3_Q,
      I2 => SSD_DataPath_signal_DecoderOut_10_Q_193,
      O => SSD_DataPath_FinalSegmentSelector_Mmux_SEG_43_190
    );
  SSD_DataPath_FinalSegmentSelector_Mmux_SEG_33 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => SSD_Fsm_fsm_state_FSM_FFd2_203,
      I1 => SSD_DataPath_signal_DecoderOut_16_Q,
      I2 => SSD_DataPath_signal_DecoderOut_27_Q,
      O => SSD_DataPath_FinalSegmentSelector_Mmux_SEG_33_186
    );
  SSD_DataPath_FinalSegmentSelector_Mmux_SEG_42 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => SSD_Fsm_fsm_state_FSM_FFd2_203,
      I1 => SSD_DataPath_signal_DecoderOut_14_Q,
      I2 => SSD_DataPath_signal_DecoderOut_10_Q_193,
      O => SSD_DataPath_FinalSegmentSelector_Mmux_SEG_41
    );
  SSD_DataPath_FinalSegmentSelector_Mmux_SEG_2_f5_0 : MUXF5
    port map (
      I0 => SSD_DataPath_FinalSegmentSelector_Mmux_SEG_41,
      I1 => SSD_DataPath_FinalSegmentSelector_Mmux_SEG_31_185,
      S => SSD_Fsm_fsm_state_FSM_FFd1_201,
      O => SSD_VALUE_1_OBUF_222
    );
  SSD_DataPath_FinalSegmentSelector_Mmux_SEG_31 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => SSD_Fsm_fsm_state_FSM_FFd2_203,
      I1 => SSD_DataPath_signal_DecoderOut_16_Q,
      I2 => SSD_DataPath_signal_DecoderOut_25_Q,
      O => SSD_DataPath_FinalSegmentSelector_Mmux_SEG_31_185
    );
  SSD_DataPath_FinalSegmentSelector_Mmux_SEG_2_f5 : MUXF5
    port map (
      I0 => SSD_DataPath_FinalSegmentSelector_Mmux_SEG_4,
      I1 => SSD_DataPath_FinalSegmentSelector_Mmux_SEG_3_184,
      S => SSD_Fsm_fsm_state_FSM_FFd1_201,
      O => SSD_VALUE_0_OBUF_221
    );
  SSD_DataPath_FinalSegmentSelector_Mmux_SEG_3 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => SSD_Fsm_fsm_state_FSM_FFd2_203,
      I1 => SSD_DataPath_signal_DecoderOut_16_Q,
      I2 => SSD_DataPath_signal_DecoderOut_24_Q,
      O => SSD_DataPath_FinalSegmentSelector_Mmux_SEG_3_184
    );
  SSD_Counter125K_Mcount_temp_cy_0_Q : MUXCY
    port map (
      CI => N0,
      DI => SSD_DataPath_signal_DecoderOut_14_Q,
      S => SSD_Counter125K_Mcount_temp_lut(0),
      O => SSD_Counter125K_Mcount_temp_cy(0)
    );
  SSD_Counter125K_Mcount_temp_xor_0_Q : XORCY
    port map (
      CI => N0,
      LI => SSD_Counter125K_Mcount_temp_lut(0),
      O => Result(0)
    );
  SSD_Counter125K_Mcount_temp_cy_1_Q : MUXCY
    port map (
      CI => SSD_Counter125K_Mcount_temp_cy(0),
      DI => N0,
      S => SSD_Counter125K_Mcount_temp_cy_1_rt_119,
      O => SSD_Counter125K_Mcount_temp_cy(1)
    );
  SSD_Counter125K_Mcount_temp_xor_1_Q : XORCY
    port map (
      CI => SSD_Counter125K_Mcount_temp_cy(0),
      LI => SSD_Counter125K_Mcount_temp_cy_1_rt_119,
      O => Result(1)
    );
  SSD_Counter125K_Mcount_temp_cy_2_Q : MUXCY
    port map (
      CI => SSD_Counter125K_Mcount_temp_cy(1),
      DI => N0,
      S => SSD_Counter125K_Mcount_temp_cy_2_rt_121,
      O => SSD_Counter125K_Mcount_temp_cy(2)
    );
  SSD_Counter125K_Mcount_temp_xor_2_Q : XORCY
    port map (
      CI => SSD_Counter125K_Mcount_temp_cy(1),
      LI => SSD_Counter125K_Mcount_temp_cy_2_rt_121,
      O => Result(2)
    );
  SSD_Counter125K_Mcount_temp_cy_3_Q : MUXCY
    port map (
      CI => SSD_Counter125K_Mcount_temp_cy(2),
      DI => N0,
      S => SSD_Counter125K_Mcount_temp_cy_3_rt_123,
      O => SSD_Counter125K_Mcount_temp_cy(3)
    );
  SSD_Counter125K_Mcount_temp_xor_3_Q : XORCY
    port map (
      CI => SSD_Counter125K_Mcount_temp_cy(2),
      LI => SSD_Counter125K_Mcount_temp_cy_3_rt_123,
      O => Result(3)
    );
  SSD_Counter125K_Mcount_temp_cy_4_Q : MUXCY
    port map (
      CI => SSD_Counter125K_Mcount_temp_cy(3),
      DI => N0,
      S => SSD_Counter125K_Mcount_temp_cy_4_rt_125,
      O => SSD_Counter125K_Mcount_temp_cy(4)
    );
  SSD_Counter125K_Mcount_temp_xor_4_Q : XORCY
    port map (
      CI => SSD_Counter125K_Mcount_temp_cy(3),
      LI => SSD_Counter125K_Mcount_temp_cy_4_rt_125,
      O => Result(4)
    );
  SSD_Counter125K_Mcount_temp_cy_5_Q : MUXCY
    port map (
      CI => SSD_Counter125K_Mcount_temp_cy(4),
      DI => N0,
      S => SSD_Counter125K_Mcount_temp_cy_5_rt_127,
      O => SSD_Counter125K_Mcount_temp_cy(5)
    );
  SSD_Counter125K_Mcount_temp_xor_5_Q : XORCY
    port map (
      CI => SSD_Counter125K_Mcount_temp_cy(4),
      LI => SSD_Counter125K_Mcount_temp_cy_5_rt_127,
      O => Result(5)
    );
  SSD_Counter125K_Mcount_temp_cy_6_Q : MUXCY
    port map (
      CI => SSD_Counter125K_Mcount_temp_cy(5),
      DI => N0,
      S => SSD_Counter125K_Mcount_temp_cy_6_rt_129,
      O => SSD_Counter125K_Mcount_temp_cy(6)
    );
  SSD_Counter125K_Mcount_temp_xor_6_Q : XORCY
    port map (
      CI => SSD_Counter125K_Mcount_temp_cy(5),
      LI => SSD_Counter125K_Mcount_temp_cy_6_rt_129,
      O => Result(6)
    );
  SSD_Counter125K_Mcount_temp_cy_7_Q : MUXCY
    port map (
      CI => SSD_Counter125K_Mcount_temp_cy(6),
      DI => N0,
      S => SSD_Counter125K_Mcount_temp_cy_7_rt_131,
      O => SSD_Counter125K_Mcount_temp_cy(7)
    );
  SSD_Counter125K_Mcount_temp_xor_7_Q : XORCY
    port map (
      CI => SSD_Counter125K_Mcount_temp_cy(6),
      LI => SSD_Counter125K_Mcount_temp_cy_7_rt_131,
      O => Result(7)
    );
  SSD_Counter125K_Mcount_temp_cy_8_Q : MUXCY
    port map (
      CI => SSD_Counter125K_Mcount_temp_cy(7),
      DI => N0,
      S => SSD_Counter125K_Mcount_temp_cy_8_rt_133,
      O => SSD_Counter125K_Mcount_temp_cy(8)
    );
  SSD_Counter125K_Mcount_temp_xor_8_Q : XORCY
    port map (
      CI => SSD_Counter125K_Mcount_temp_cy(7),
      LI => SSD_Counter125K_Mcount_temp_cy_8_rt_133,
      O => Result(8)
    );
  SSD_Counter125K_Mcount_temp_cy_9_Q : MUXCY
    port map (
      CI => SSD_Counter125K_Mcount_temp_cy(8),
      DI => N0,
      S => SSD_Counter125K_Mcount_temp_cy_9_rt_135,
      O => SSD_Counter125K_Mcount_temp_cy(9)
    );
  SSD_Counter125K_Mcount_temp_xor_9_Q : XORCY
    port map (
      CI => SSD_Counter125K_Mcount_temp_cy(8),
      LI => SSD_Counter125K_Mcount_temp_cy_9_rt_135,
      O => Result(9)
    );
  SSD_Counter125K_Mcount_temp_cy_10_Q : MUXCY
    port map (
      CI => SSD_Counter125K_Mcount_temp_cy(9),
      DI => N0,
      S => SSD_Counter125K_Mcount_temp_cy_10_rt_107,
      O => SSD_Counter125K_Mcount_temp_cy(10)
    );
  SSD_Counter125K_Mcount_temp_xor_10_Q : XORCY
    port map (
      CI => SSD_Counter125K_Mcount_temp_cy(9),
      LI => SSD_Counter125K_Mcount_temp_cy_10_rt_107,
      O => Result(10)
    );
  SSD_Counter125K_Mcount_temp_cy_11_Q : MUXCY
    port map (
      CI => SSD_Counter125K_Mcount_temp_cy(10),
      DI => N0,
      S => SSD_Counter125K_Mcount_temp_cy_11_rt_109,
      O => SSD_Counter125K_Mcount_temp_cy(11)
    );
  SSD_Counter125K_Mcount_temp_xor_11_Q : XORCY
    port map (
      CI => SSD_Counter125K_Mcount_temp_cy(10),
      LI => SSD_Counter125K_Mcount_temp_cy_11_rt_109,
      O => Result(11)
    );
  SSD_Counter125K_Mcount_temp_cy_12_Q : MUXCY
    port map (
      CI => SSD_Counter125K_Mcount_temp_cy(11),
      DI => N0,
      S => SSD_Counter125K_Mcount_temp_cy_12_rt_111,
      O => SSD_Counter125K_Mcount_temp_cy(12)
    );
  SSD_Counter125K_Mcount_temp_xor_12_Q : XORCY
    port map (
      CI => SSD_Counter125K_Mcount_temp_cy(11),
      LI => SSD_Counter125K_Mcount_temp_cy_12_rt_111,
      O => Result(12)
    );
  SSD_Counter125K_Mcount_temp_cy_13_Q : MUXCY
    port map (
      CI => SSD_Counter125K_Mcount_temp_cy(12),
      DI => N0,
      S => SSD_Counter125K_Mcount_temp_cy_13_rt_113,
      O => SSD_Counter125K_Mcount_temp_cy(13)
    );
  SSD_Counter125K_Mcount_temp_xor_13_Q : XORCY
    port map (
      CI => SSD_Counter125K_Mcount_temp_cy(12),
      LI => SSD_Counter125K_Mcount_temp_cy_13_rt_113,
      O => Result(13)
    );
  SSD_Counter125K_Mcount_temp_cy_14_Q : MUXCY
    port map (
      CI => SSD_Counter125K_Mcount_temp_cy(13),
      DI => N0,
      S => SSD_Counter125K_Mcount_temp_cy_14_rt_115,
      O => SSD_Counter125K_Mcount_temp_cy(14)
    );
  SSD_Counter125K_Mcount_temp_xor_14_Q : XORCY
    port map (
      CI => SSD_Counter125K_Mcount_temp_cy(13),
      LI => SSD_Counter125K_Mcount_temp_cy_14_rt_115,
      O => Result(14)
    );
  SSD_Counter125K_Mcount_temp_cy_15_Q : MUXCY
    port map (
      CI => SSD_Counter125K_Mcount_temp_cy(14),
      DI => N0,
      S => SSD_Counter125K_Mcount_temp_cy_15_rt_117,
      O => SSD_Counter125K_Mcount_temp_cy(15)
    );
  SSD_Counter125K_Mcount_temp_xor_15_Q : XORCY
    port map (
      CI => SSD_Counter125K_Mcount_temp_cy(14),
      LI => SSD_Counter125K_Mcount_temp_cy_15_rt_117,
      O => Result(15)
    );
  SSD_Counter125K_Mcount_temp_xor_16_Q : XORCY
    port map (
      CI => SSD_Counter125K_Mcount_temp_cy(15),
      LI => SSD_Counter125K_Mcount_temp_xor_16_rt_154,
      O => Result(16)
    );
  STACK_DataPath_ADDER_SUBBER_1_Maddsub_tempS_lut_0_Q : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => STACK_DataPath_signal_A_adder(0),
      I1 => STACK_DataPath_M1,
      I2 => STACK_DataPath_signal_B_adder_0_Q,
      O => STACK_DataPath_ADDER_SUBBER_1_Maddsub_tempS_lut(0)
    );
  STACK_DataPath_ADDER_SUBBER_1_Maddsub_tempS_cy_0_Q : MUXCY
    port map (
      CI => STACK_DataPath_M1,
      DI => STACK_DataPath_signal_A_adder(0),
      S => STACK_DataPath_ADDER_SUBBER_1_Maddsub_tempS_lut(0),
      O => STACK_DataPath_ADDER_SUBBER_1_Maddsub_tempS_cy(0)
    );
  STACK_DataPath_ADDER_SUBBER_1_Maddsub_tempS_xor_0_Q : XORCY
    port map (
      CI => STACK_DataPath_M1,
      LI => STACK_DataPath_ADDER_SUBBER_1_Maddsub_tempS_lut(0),
      O => STACK_DataPath_signal_result_adder(0)
    );
  STACK_DataPath_ADDER_SUBBER_1_Maddsub_tempS_cy_1_Q : MUXCY
    port map (
      CI => STACK_DataPath_ADDER_SUBBER_1_Maddsub_tempS_cy(0),
      DI => STACK_DataPath_signal_A_adder(1),
      S => STACK_DataPath_ADDER_SUBBER_1_Maddsub_tempS_lut(1),
      O => STACK_DataPath_ADDER_SUBBER_1_Maddsub_tempS_cy(1)
    );
  STACK_DataPath_ADDER_SUBBER_1_Maddsub_tempS_xor_1_Q : XORCY
    port map (
      CI => STACK_DataPath_ADDER_SUBBER_1_Maddsub_tempS_cy(0),
      LI => STACK_DataPath_ADDER_SUBBER_1_Maddsub_tempS_lut(1),
      O => STACK_DataPath_signal_result_adder(1)
    );
  STACK_DataPath_ADDER_SUBBER_1_Maddsub_tempS_cy_2_Q : MUXCY
    port map (
      CI => STACK_DataPath_ADDER_SUBBER_1_Maddsub_tempS_cy(1),
      DI => STACK_DataPath_signal_A_adder(2),
      S => STACK_DataPath_ADDER_SUBBER_1_Maddsub_tempS_lut(2),
      O => STACK_DataPath_ADDER_SUBBER_1_Maddsub_tempS_cy(2)
    );
  STACK_DataPath_ADDER_SUBBER_1_Maddsub_tempS_xor_2_Q : XORCY
    port map (
      CI => STACK_DataPath_ADDER_SUBBER_1_Maddsub_tempS_cy(1),
      LI => STACK_DataPath_ADDER_SUBBER_1_Maddsub_tempS_lut(2),
      O => STACK_DataPath_signal_result_adder(2)
    );
  STACK_DataPath_ADDER_SUBBER_1_Maddsub_tempS_cy_3_Q : MUXCY
    port map (
      CI => STACK_DataPath_ADDER_SUBBER_1_Maddsub_tempS_cy(2),
      DI => STACK_DataPath_signal_A_adder(3),
      S => STACK_DataPath_ADDER_SUBBER_1_Maddsub_tempS_lut(3),
      O => STACK_DataPath_ADDER_SUBBER_1_Maddsub_tempS_cy(3)
    );
  STACK_DataPath_ADDER_SUBBER_1_Maddsub_tempS_xor_3_Q : XORCY
    port map (
      CI => STACK_DataPath_ADDER_SUBBER_1_Maddsub_tempS_cy(2),
      LI => STACK_DataPath_ADDER_SUBBER_1_Maddsub_tempS_lut(3),
      O => STACK_DataPath_signal_result_adder(3)
    );
  STACK_DataPath_ADDER_SUBBER_1_Maddsub_tempS_cy_4_Q : MUXCY
    port map (
      CI => STACK_DataPath_ADDER_SUBBER_1_Maddsub_tempS_cy(3),
      DI => STACK_DataPath_signal_A_adder(4),
      S => STACK_DataPath_ADDER_SUBBER_1_Maddsub_tempS_lut(4),
      O => STACK_DataPath_ADDER_SUBBER_1_Maddsub_tempS_cy(4)
    );
  STACK_DataPath_ADDER_SUBBER_1_Maddsub_tempS_xor_4_Q : XORCY
    port map (
      CI => STACK_DataPath_ADDER_SUBBER_1_Maddsub_tempS_cy(3),
      LI => STACK_DataPath_ADDER_SUBBER_1_Maddsub_tempS_lut(4),
      O => STACK_DataPath_signal_result_adder(4)
    );
  STACK_DataPath_ADDER_SUBBER_1_Maddsub_tempS_cy_5_Q : MUXCY
    port map (
      CI => STACK_DataPath_ADDER_SUBBER_1_Maddsub_tempS_cy(4),
      DI => STACK_DataPath_signal_A_adder(5),
      S => STACK_DataPath_ADDER_SUBBER_1_Maddsub_tempS_lut(5),
      O => STACK_DataPath_ADDER_SUBBER_1_Maddsub_tempS_cy(5)
    );
  STACK_DataPath_ADDER_SUBBER_1_Maddsub_tempS_xor_5_Q : XORCY
    port map (
      CI => STACK_DataPath_ADDER_SUBBER_1_Maddsub_tempS_cy(4),
      LI => STACK_DataPath_ADDER_SUBBER_1_Maddsub_tempS_lut(5),
      O => STACK_DataPath_signal_result_adder(5)
    );
  STACK_DataPath_ADDER_SUBBER_1_Maddsub_tempS_cy_6_Q : MUXCY
    port map (
      CI => STACK_DataPath_ADDER_SUBBER_1_Maddsub_tempS_cy(5),
      DI => STACK_DataPath_signal_A_adder(6),
      S => STACK_DataPath_ADDER_SUBBER_1_Maddsub_tempS_lut(6),
      O => STACK_DataPath_ADDER_SUBBER_1_Maddsub_tempS_cy(6)
    );
  STACK_DataPath_ADDER_SUBBER_1_Maddsub_tempS_xor_6_Q : XORCY
    port map (
      CI => STACK_DataPath_ADDER_SUBBER_1_Maddsub_tempS_cy(5),
      LI => STACK_DataPath_ADDER_SUBBER_1_Maddsub_tempS_lut(6),
      O => STACK_DataPath_signal_result_adder(6)
    );
  STACK_DataPath_ADDER_SUBBER_1_Maddsub_tempS_cy_7_Q : MUXCY
    port map (
      CI => STACK_DataPath_ADDER_SUBBER_1_Maddsub_tempS_cy(6),
      DI => STACK_DataPath_signal_A_adder(7),
      S => STACK_DataPath_ADDER_SUBBER_1_Maddsub_tempS_lut(7),
      O => STACK_DataPath_ADDER_SUBBER_1_Maddsub_tempS_cy(7)
    );
  STACK_DataPath_ADDER_SUBBER_1_Maddsub_tempS_xor_8_Q : XORCY
    port map (
      CI => STACK_DataPath_ADDER_SUBBER_1_Maddsub_tempS_cy(7),
      LI => STACK_DataPath_ADDER_SUBBER_1_Maddsub_tempS_lut_7_1_254,
      O => STACK_DataPath_Cout
    );
  STACK_FSM_fsm_state_FSM_FFd2 : FDS
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_5,
      D => STACK_FSM_fsm_state_FSM_FFd2_In,
      S => RST_IBUF_87,
      Q => STACK_FSM_fsm_state_FSM_FFd2_324
    );
  STACK_OPERATION_FSM_fsm_state_FSM_FFd2 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_5,
      D => STACK_OPERATION_FSM_fsm_state_FSM_FFd2_In_337,
      R => RST_IBUF_87,
      Q => STACK_OPERATION_FSM_fsm_state_FSM_FFd2_336
    );
  STACK_OPERATION_FSM_fsm_state_FSM_FFd1 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_5,
      D => STACK_OPERATION_FSM_fsm_state_FSM_FFd1_In_334,
      R => RST_IBUF_87,
      Q => STACK_OPERATION_FSM_fsm_state_FSM_FFd1_333
    );
  STACK_OPERATION_FSM_fsm_state_FSM_FFd3 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_5,
      D => STACK_OPERATION_FSM_fsm_state_FSM_FFd3_In,
      R => RST_IBUF_87,
      Q => STACK_OPERATION_FSM_fsm_state_FSM_FFd3_338
    );
  STACK_ADD_SUB_UN_FSM_1_fsm_state_FSM_FFd5 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_5,
      D => STACK_ADD_SUB_UN_FSM_1_fsm_state_FSM_FFd6_236,
      R => RST_IBUF_87,
      Q => STACK_ADD_SUB_UN_FSM_1_fsm_state_FSM_FFd5_235
    );
  STACK_ADD_SUB_UN_FSM_1_fsm_state_FSM_FFd2 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_5,
      D => STACK_ADD_SUB_UN_FSM_1_fsm_state_FSM_FFd3_231,
      R => RST_IBUF_87,
      Q => STACK_ADD_SUB_UN_FSM_1_fsm_state_FSM_FFd2_230
    );
  STACK_ADD_SUB_UN_FSM_1_fsm_state_FSM_FFd4 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_5,
      D => STACK_ADD_SUB_UN_FSM_1_fsm_state_FSM_FFd4_In,
      R => RST_IBUF_87,
      Q => STACK_ADD_SUB_UN_FSM_1_fsm_state_FSM_FFd4_233
    );
  STACK_ADD_SUB_UN_FSM_1_fsm_state_FSM_FFd6 : FDS
    generic map(
      INIT => '1'
    )
    port map (
      C => CLK_BUFGP_5,
      D => STACK_ADD_SUB_UN_FSM_1_fsm_state_FSM_FFd6_In_237,
      S => RST_IBUF_87,
      Q => STACK_ADD_SUB_UN_FSM_1_fsm_state_FSM_FFd6_236
    );
  STACK_ADD_SUB_UN_FSM_1_fsm_state_FSM_FFd1 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_5,
      D => STACK_ADD_SUB_UN_FSM_1_fsm_state_FSM_FFd1_In_229,
      R => RST_IBUF_87,
      Q => STACK_ADD_SUB_UN_FSM_1_fsm_state_FSM_FFd1_228
    );
  STACK_SWAP_FSM_1_fsm_state_FSM_FFd1 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_5,
      D => STACK_SWAP_FSM_1_fsm_state_FSM_FFd2_357,
      R => STACK_SWAP_FSM_1_fsm_state_or0000,
      Q => STACK_SWAP_FSM_1_fsm_state_FSM_FFd1_356
    );
  STACK_SWAP_FSM_1_fsm_state_FSM_FFd2 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_5,
      D => STACK_SWAP_FSM_1_fsm_state_FSM_FFd3_358,
      R => STACK_SWAP_FSM_1_fsm_state_or0000,
      Q => STACK_SWAP_FSM_1_fsm_state_FSM_FFd2_357
    );
  STACK_SWAP_FSM_1_fsm_state_FSM_FFd3 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_5,
      D => STACK_SWAP_FSM_1_fsm_state_FSM_FFd4_359,
      R => STACK_SWAP_FSM_1_fsm_state_or0000,
      Q => STACK_SWAP_FSM_1_fsm_state_FSM_FFd3_358
    );
  STACK_SWAP_FSM_1_fsm_state_FSM_FFd4 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_5,
      D => STACK_SWAP_FSM_1_fsm_state_FSM_FFd5_360,
      R => STACK_SWAP_FSM_1_fsm_state_or0000,
      Q => STACK_SWAP_FSM_1_fsm_state_FSM_FFd4_359
    );
  STACK_SWAP_FSM_1_fsm_state_FSM_FFd5 : FDS
    generic map(
      INIT => '1'
    )
    port map (
      C => CLK_BUFGP_5,
      D => STACK_SWAP_FSM_1_fsm_state_FSM_FFd1_356,
      S => STACK_SWAP_FSM_1_fsm_state_or0000,
      Q => STACK_SWAP_FSM_1_fsm_state_FSM_FFd5_360
    );
  STACK_TOS_temp_3 : FDCE
    port map (
      C => CLK_BUFGP_5,
      CE => STACK_signal_FSMOut_EN,
      CLR => RST_IBUF_87,
      D => STACK_Result(3),
      Q => STACK_TOS_temp(3)
    );
  STACK_TOS_temp_2 : FDCE
    port map (
      C => CLK_BUFGP_5,
      CE => STACK_signal_FSMOut_EN,
      CLR => RST_IBUF_87,
      D => STACK_Result(2),
      Q => STACK_TOS_temp(2)
    );
  STACK_TOS_temp_1 : FDCE
    port map (
      C => CLK_BUFGP_5,
      CE => STACK_signal_FSMOut_EN,
      CLR => RST_IBUF_87,
      D => STACK_Result(1),
      Q => STACK_TOS_temp(1)
    );
  STACK_TOS_temp_0 : FDCE
    port map (
      C => CLK_BUFGP_5,
      CE => STACK_signal_FSMOut_EN,
      CLR => RST_IBUF_87,
      D => STACK_Result(0),
      Q => STACK_TOS_temp(0)
    );
  STACK_SPGEN_BTN0_currentS_FSM_FFd2 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_5,
      CLR => RST_IBUF_87,
      D => STACK_SPGEN_BTN0_currentS_FSM_FFd2_In,
      Q => STACK_SPGEN_BTN0_currentS_FSM_FFd2_344
    );
  STACK_SPGEN_BTN0_currentS_FSM_FFd3 : FDP
    generic map(
      INIT => '1'
    )
    port map (
      C => CLK_BUFGP_5,
      D => STACK_SPGEN_BTN0_currentS_FSM_FFd3_In,
      PRE => RST_IBUF_87,
      Q => STACK_SPGEN_BTN0_currentS_FSM_FFd3_346
    );
  STACK_SPGEN_BTN1_currentS_FSM_FFd2 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_5,
      CLR => RST_IBUF_87,
      D => STACK_SPGEN_BTN1_currentS_FSM_FFd2_In,
      Q => STACK_SPGEN_BTN1_currentS_FSM_FFd2_348
    );
  STACK_SPGEN_BTN1_currentS_FSM_FFd3 : FDP
    generic map(
      INIT => '1'
    )
    port map (
      C => CLK_BUFGP_5,
      D => STACK_SPGEN_BTN1_currentS_FSM_FFd3_In,
      PRE => RST_IBUF_87,
      Q => STACK_SPGEN_BTN1_currentS_FSM_FFd3_350
    );
  STACK_SPGEN_MODE_currentS_FSM_FFd2 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_5,
      CLR => RST_IBUF_87,
      D => STACK_SPGEN_MODE_currentS_FSM_FFd2_In,
      Q => STACK_SPGEN_MODE_currentS_FSM_FFd2_352
    );
  STACK_SPGEN_MODE_currentS_FSM_FFd3 : FDP
    generic map(
      INIT => '1'
    )
    port map (
      C => CLK_BUFGP_5,
      D => STACK_SPGEN_MODE_currentS_FSM_FFd3_In,
      PRE => RST_IBUF_87,
      Q => STACK_SPGEN_MODE_currentS_FSM_FFd3_354
    );
  SSD_Counter125K_temp_cmp_eq00001_wg_cy_0_Q : MUXCY
    port map (
      CI => SSD_DataPath_signal_DecoderOut_14_Q,
      DI => N0,
      S => SSD_Counter125K_temp_cmp_eq00001_wg_cy_0_rt_174,
      O => SSD_Counter125K_temp_cmp_eq00001_wg_cy(0)
    );
  SSD_Counter125K_temp_cmp_eq00001_wg_lut_1_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => SSD_Counter125K_temp(5),
      I1 => SSD_Counter125K_temp(7),
      I2 => SSD_Counter125K_temp(4),
      I3 => SSD_Counter125K_temp(9),
      O => SSD_Counter125K_temp_cmp_eq00001_wg_lut(1)
    );
  SSD_Counter125K_temp_cmp_eq00001_wg_cy_1_Q : MUXCY
    port map (
      CI => SSD_Counter125K_temp_cmp_eq00001_wg_cy(0),
      DI => N0,
      S => SSD_Counter125K_temp_cmp_eq00001_wg_lut(1),
      O => SSD_Counter125K_temp_cmp_eq00001_wg_cy(1)
    );
  SSD_Counter125K_temp_cmp_eq00001_wg_lut_2_Q : LUT4
    generic map(
      INIT => X"0200"
    )
    port map (
      I0 => SSD_Counter125K_temp(3),
      I1 => SSD_Counter125K_temp(8),
      I2 => SSD_Counter125K_temp(10),
      I3 => SSD_Counter125K_temp(11),
      O => SSD_Counter125K_temp_cmp_eq00001_wg_lut(2)
    );
  SSD_Counter125K_temp_cmp_eq00001_wg_cy_2_Q : MUXCY
    port map (
      CI => SSD_Counter125K_temp_cmp_eq00001_wg_cy(1),
      DI => N0,
      S => SSD_Counter125K_temp_cmp_eq00001_wg_lut(2),
      O => SSD_Counter125K_temp_cmp_eq00001_wg_cy(2)
    );
  SSD_Counter125K_temp_cmp_eq00001_wg_lut_3_Q : LUT4
    generic map(
      INIT => X"0200"
    )
    port map (
      I0 => SSD_Counter125K_temp(14),
      I1 => SSD_Counter125K_temp(12),
      I2 => SSD_Counter125K_temp(1),
      I3 => SSD_Counter125K_temp(13),
      O => SSD_Counter125K_temp_cmp_eq00001_wg_lut(3)
    );
  SSD_Counter125K_temp_cmp_eq00001_wg_cy_3_Q : MUXCY
    port map (
      CI => SSD_Counter125K_temp_cmp_eq00001_wg_cy(2),
      DI => N0,
      S => SSD_Counter125K_temp_cmp_eq00001_wg_lut(3),
      O => SSD_Counter125K_temp_cmp_eq00001_wg_cy(3)
    );
  SSD_Counter125K_temp_cmp_eq00001_wg_lut_4_Q : LUT4
    generic map(
      INIT => X"0200"
    )
    port map (
      I0 => SSD_Counter125K_temp(15),
      I1 => SSD_Counter125K_temp(0),
      I2 => SSD_Counter125K_temp(2),
      I3 => SSD_Counter125K_temp(16),
      O => SSD_Counter125K_temp_cmp_eq00001_wg_lut(4)
    );
  SSD_Counter125K_temp_cmp_eq00001_wg_cy_4_Q : MUXCY
    port map (
      CI => SSD_Counter125K_temp_cmp_eq00001_wg_cy(3),
      DI => N0,
      S => SSD_Counter125K_temp_cmp_eq00001_wg_lut(4),
      O => SSD_Counter125K_temp_cmp_eq0000
    );
  SSD_AnSelector_Mdecod_AN31 : LUT2
    generic map(
      INIT => X"7"
    )
    port map (
      I0 => SSD_Fsm_fsm_state_FSM_FFd2_203,
      I1 => SSD_Fsm_fsm_state_FSM_FFd1_201,
      O => SSD_EN_3_OBUF_212
    );
  SSD_AnSelector_Mdecod_AN21 : LUT2
    generic map(
      INIT => X"B"
    )
    port map (
      I0 => SSD_Fsm_fsm_state_FSM_FFd2_203,
      I1 => SSD_Fsm_fsm_state_FSM_FFd1_201,
      O => SSD_EN_2_OBUF_211
    );
  SSD_AnSelector_Mdecod_AN11 : LUT2
    generic map(
      INIT => X"B"
    )
    port map (
      I0 => SSD_Fsm_fsm_state_FSM_FFd1_201,
      I1 => SSD_Fsm_fsm_state_FSM_FFd2_203,
      O => SSD_EN_1_OBUF_210
    );
  SSD_AnSelector_Mdecod_AN01 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => SSD_Fsm_fsm_state_FSM_FFd2_203,
      I1 => SSD_Fsm_fsm_state_FSM_FFd1_201,
      O => SSD_EN_0_OBUF_209
    );
  STACK_SPGEN_MODE_currentS_FSM_FFd3_In1 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => MODE_IBUF_7,
      I1 => STACK_SPGEN_MODE_currentS_FSM_FFd2_352,
      O => STACK_SPGEN_MODE_currentS_FSM_FFd3_In
    );
  STACK_SPGEN_MODE_currentS_FSM_FFd2_In1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => MODE_IBUF_7,
      I1 => STACK_SPGEN_MODE_currentS_FSM_FFd3_354,
      O => STACK_SPGEN_MODE_currentS_FSM_FFd2_In
    );
  STACK_SPGEN_BTN1_currentS_FSM_FFd3_In1 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => BTN1_IBUF_3,
      I1 => STACK_SPGEN_BTN1_currentS_FSM_FFd2_348,
      O => STACK_SPGEN_BTN1_currentS_FSM_FFd3_In
    );
  STACK_SPGEN_BTN1_currentS_FSM_FFd2_In1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => BTN1_IBUF_3,
      I1 => STACK_SPGEN_BTN1_currentS_FSM_FFd3_350,
      O => STACK_SPGEN_BTN1_currentS_FSM_FFd2_In
    );
  STACK_SPGEN_BTN0_currentS_FSM_FFd3_In1 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => BTN0_IBUF_1,
      I1 => STACK_SPGEN_BTN0_currentS_FSM_FFd2_344,
      O => STACK_SPGEN_BTN0_currentS_FSM_FFd3_In
    );
  STACK_SPGEN_BTN0_currentS_FSM_FFd2_In1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => BTN0_IBUF_1,
      I1 => STACK_SPGEN_BTN0_currentS_FSM_FFd3_346,
      O => STACK_SPGEN_BTN0_currentS_FSM_FFd2_In
    );
  STACK_OPERATION_FSM_fsm_state_FSM_FFd3_In1 : LUT4
    generic map(
      INIT => X"4446"
    )
    port map (
      I0 => STACK_SPGEN_MODE_currentS_FSM_FFd2_352,
      I1 => STACK_OPERATION_FSM_fsm_state_FSM_FFd3_338,
      I2 => STACK_OPERATION_FSM_fsm_state_FSM_FFd2_336,
      I3 => STACK_OPERATION_FSM_fsm_state_FSM_FFd1_333,
      O => STACK_OPERATION_FSM_fsm_state_FSM_FFd3_In
    );
  STACK_ADD_SUB_UN_FSM_1_fsm_state_FSM_FFd4_In1 : LUT4
    generic map(
      INIT => X"6000"
    )
    port map (
      I0 => STACK_OPERATION_FSM_fsm_state_FSM_FFd1_333,
      I1 => STACK_OPERATION_FSM_fsm_state_FSM_FFd2_336,
      I2 => STACK_OPERATION_FSM_fsm_state_FSM_FFd3_338,
      I3 => STACK_ADD_SUB_UN_FSM_1_fsm_state_FSM_FFd5_235,
      O => STACK_ADD_SUB_UN_FSM_1_fsm_state_FSM_FFd4_In
    );
  STACK_SWAP_FSM_1_fsm_state_or00001 : LUT4
    generic map(
      INIT => X"FFF7"
    )
    port map (
      I0 => STACK_OPERATION_FSM_fsm_state_FSM_FFd2_336,
      I1 => STACK_OPERATION_FSM_fsm_state_FSM_FFd1_333,
      I2 => RST_IBUF_87,
      I3 => STACK_OPERATION_FSM_fsm_state_FSM_FFd3_338,
      O => STACK_SWAP_FSM_1_fsm_state_or0000
    );
  STACK_FSM_fsm_state_FSM_FFd2_In11 : LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => STACK_TOS_temp(2),
      I1 => STACK_FSM_fsm_state_FSM_FFd2_324,
      I2 => STACK_FSM_fsm_state_FSM_FFd1_319,
      O => STACK_N23
    );
  STACK_FSM_fsm_state_FSM_FFd2_In50 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => STACK_ADD_SUB_UN_FSM_1_fsm_state_FSM_FFd2_230,
      I1 => STACK_SPGEN_BTN0_currentS_FSM_FFd2_344,
      I2 => STACK_SWAP_FSM_1_fsm_state_FSM_FFd2_357,
      I3 => STACK_SWAP_FSM_1_fsm_state_FSM_FFd1_356,
      O => STACK_FSM_fsm_state_FSM_FFd2_In50_328
    );
  SSD_DataPath_Decoder_DATA_OUT_3_1 : LUT4
    generic map(
      INIT => X"FFEF"
    )
    port map (
      I0 => signal_SEL(0),
      I1 => signal_stack_state(1),
      I2 => signal_stack_state(0),
      I3 => signal_SEL(1),
      O => SSD_DataPath_signal_DecoderOut_3_Q
    );
  STACK_OPERATION_FSM_fsm_state_FSM_FFd1_In_SW0 : LUT4
    generic map(
      INIT => X"31B3"
    )
    port map (
      I0 => STACK_SPGEN_BTN0_currentS_FSM_FFd2_344,
      I1 => STACK_OPERATION_FSM_fsm_state_FSM_FFd1_333,
      I2 => STACK_OPERATION_FSM_fsm_state_FSM_FFd3_338,
      I3 => STACK_OPERATION_FSM_fsm_state_FSM_FFd2_336,
      O => N10
    );
  STACK_OPERATION_FSM_fsm_state_FSM_FFd1_In_SW1 : LUT4
    generic map(
      INIT => X"5155"
    )
    port map (
      I0 => STACK_OPERATION_FSM_fsm_state_FSM_FFd1_333,
      I1 => STACK_OPERATION_FSM_fsm_state_FSM_FFd2_336,
      I2 => STACK_SPGEN_BTN0_currentS_FSM_FFd2_344,
      I3 => STACK_OPERATION_FSM_fsm_state_FSM_FFd3_338,
      O => N11
    );
  STACK_OPERATION_FSM_fsm_state_FSM_FFd1_In : LUT4
    generic map(
      INIT => X"0213"
    )
    port map (
      I0 => STACK_SPGEN_BTN1_currentS_FSM_FFd2_348,
      I1 => STACK_SPGEN_MODE_currentS_FSM_FFd2_352,
      I2 => N11,
      I3 => N10,
      O => STACK_OPERATION_FSM_fsm_state_FSM_FFd1_In_334
    );
  STACK_FSM_fsm_state_FSM_FFd1_In27 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => STACK_N23,
      I1 => STACK_TOS_temp(3),
      I2 => STACK_TOS_temp(1),
      I3 => STACK_TOS_temp(0),
      O => STACK_FSM_fsm_state_FSM_FFd1_In27_320
    );
  STACK_OPERATION_FSM_fsm_state_FSM_FFd2_In_SW0 : LUT4
    generic map(
      INIT => X"7173"
    )
    port map (
      I0 => STACK_SPGEN_BTN1_currentS_FSM_FFd2_348,
      I1 => STACK_OPERATION_FSM_fsm_state_FSM_FFd2_336,
      I2 => STACK_SPGEN_BTN0_currentS_FSM_FFd2_344,
      I3 => STACK_OPERATION_FSM_fsm_state_FSM_FFd1_333,
      O => N17
    );
  STACK_OPERATION_FSM_fsm_state_FSM_FFd2_In_SW1 : LUT4
    generic map(
      INIT => X"AF8A"
    )
    port map (
      I0 => STACK_OPERATION_FSM_fsm_state_FSM_FFd2_336,
      I1 => STACK_OPERATION_FSM_fsm_state_FSM_FFd1_333,
      I2 => STACK_SPGEN_BTN1_currentS_FSM_FFd2_348,
      I3 => STACK_SPGEN_BTN0_currentS_FSM_FFd2_344,
      O => N18
    );
  STACK_OPERATION_FSM_fsm_state_FSM_FFd2_In : LUT4
    generic map(
      INIT => X"A8AD"
    )
    port map (
      I0 => STACK_OPERATION_FSM_fsm_state_FSM_FFd3_338,
      I1 => N18,
      I2 => STACK_SPGEN_MODE_currentS_FSM_FFd2_352,
      I3 => N17,
      O => STACK_OPERATION_FSM_fsm_state_FSM_FFd2_In_337
    );
  SSD_Counter125K_Mcount_temp_eqn_51 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result(5),
      I1 => SSD_Counter125K_temp_cmp_eq0000,
      O => SSD_Counter125K_Mcount_temp_eqn_5
    );
  SSD_Counter125K_Mcount_temp_eqn_41 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result(4),
      I1 => SSD_Counter125K_temp_cmp_eq0000,
      O => SSD_Counter125K_Mcount_temp_eqn_4
    );
  SSD_Counter125K_Mcount_temp_eqn_31 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result(3),
      I1 => SSD_Counter125K_temp_cmp_eq0000,
      O => SSD_Counter125K_Mcount_temp_eqn_3
    );
  SSD_Counter125K_Mcount_temp_eqn_21 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result(2),
      I1 => SSD_Counter125K_temp_cmp_eq0000,
      O => SSD_Counter125K_Mcount_temp_eqn_2
    );
  SSD_Counter125K_Mcount_temp_eqn_17 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result(1),
      I1 => SSD_Counter125K_temp_cmp_eq0000,
      O => SSD_Counter125K_Mcount_temp_eqn_1
    );
  SSD_Counter125K_Mcount_temp_eqn_01 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result(0),
      I1 => SSD_Counter125K_temp_cmp_eq0000,
      O => SSD_Counter125K_Mcount_temp_eqn_0
    );
  SSD_Fsm_fsm_state_FSM_FFd2_In1 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => SSD_Counter125K_temp_cmp_eq0000,
      I1 => SSD_Fsm_fsm_state_FSM_FFd2_203,
      O => SSD_Fsm_fsm_state_FSM_FFd2_In
    );
  SSD_Fsm_fsm_state_FSM_FFd1_In1 : LUT3
    generic map(
      INIT => X"6A"
    )
    port map (
      I0 => SSD_Fsm_fsm_state_FSM_FFd1_201,
      I1 => SSD_Fsm_fsm_state_FSM_FFd2_203,
      I2 => SSD_Counter125K_temp_cmp_eq0000,
      O => SSD_Fsm_fsm_state_FSM_FFd1_In
    );
  SSD_Counter125K_Mcount_temp_eqn_61 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result(6),
      I1 => SSD_Counter125K_temp_cmp_eq0000,
      O => SSD_Counter125K_Mcount_temp_eqn_6
    );
  SSD_Counter125K_Mcount_temp_eqn_71 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result(7),
      I1 => SSD_Counter125K_temp_cmp_eq0000,
      O => SSD_Counter125K_Mcount_temp_eqn_7
    );
  STACK_FSM_STACK_STATE_1_1 : LUT4
    generic map(
      INIT => X"0004"
    )
    port map (
      I0 => STACK_OPERATION_FSM_fsm_state_FSM_FFd3_338,
      I1 => STACK_FSM_fsm_state_FSM_FFd1_319,
      I2 => STACK_OPERATION_FSM_fsm_state_FSM_FFd2_336,
      I3 => STACK_OPERATION_FSM_fsm_state_FSM_FFd1_333,
      O => signal_stack_state(1)
    );
  STACK_FSM_STACK_STATE_0_1 : LUT4
    generic map(
      INIT => X"0004"
    )
    port map (
      I0 => STACK_OPERATION_FSM_fsm_state_FSM_FFd3_338,
      I1 => STACK_FSM_fsm_state_FSM_FFd2_324,
      I2 => STACK_OPERATION_FSM_fsm_state_FSM_FFd1_333,
      I3 => STACK_OPERATION_FSM_fsm_state_FSM_FFd2_336,
      O => signal_stack_state(0)
    );
  SSD_Counter125K_Mcount_temp_eqn_81 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result(8),
      I1 => SSD_Counter125K_temp_cmp_eq0000,
      O => SSD_Counter125K_Mcount_temp_eqn_8
    );
  SSD_Counter125K_Mcount_temp_eqn_91 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result(9),
      I1 => SSD_Counter125K_temp_cmp_eq0000,
      O => SSD_Counter125K_Mcount_temp_eqn_9
    );
  SSD_Counter125K_Mcount_temp_eqn_101 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result(10),
      I1 => SSD_Counter125K_temp_cmp_eq0000,
      O => SSD_Counter125K_Mcount_temp_eqn_10
    );
  SSD_Counter125K_Mcount_temp_eqn_111 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result(11),
      I1 => SSD_Counter125K_temp_cmp_eq0000,
      O => SSD_Counter125K_Mcount_temp_eqn_11
    );
  SSD_Counter125K_Mcount_temp_eqn_121 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result(12),
      I1 => SSD_Counter125K_temp_cmp_eq0000,
      O => SSD_Counter125K_Mcount_temp_eqn_12
    );
  SSD_Counter125K_Mcount_temp_eqn_131 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result(13),
      I1 => SSD_Counter125K_temp_cmp_eq0000,
      O => SSD_Counter125K_Mcount_temp_eqn_13
    );
  SSD_Counter125K_Mcount_temp_eqn_141 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result(14),
      I1 => SSD_Counter125K_temp_cmp_eq0000,
      O => SSD_Counter125K_Mcount_temp_eqn_14
    );
  SSD_Counter125K_Mcount_temp_eqn_151 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result(15),
      I1 => SSD_Counter125K_temp_cmp_eq0000,
      O => SSD_Counter125K_Mcount_temp_eqn_15
    );
  SSD_Counter125K_Mcount_temp_eqn_161 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result(16),
      I1 => SSD_Counter125K_temp_cmp_eq0000,
      O => SSD_Counter125K_Mcount_temp_eqn_16
    );
  STACK_ADD_SUB_UN_FSM_1_OP : LUT4
    generic map(
      INIT => X"DC00"
    )
    port map (
      I0 => STACK_OPERATION_FSM_fsm_state_FSM_FFd3_338,
      I1 => STACK_OPERATION_FSM_fsm_state_FSM_FFd1_333,
      I2 => STACK_OPERATION_FSM_fsm_state_FSM_FFd2_336,
      I3 => N22,
      O => STACK_DataPath_M1
    );
  STACK_OPERATION_FSM_fsm_state_FSM_Out11 : LUT3
    generic map(
      INIT => X"AE"
    )
    port map (
      I0 => STACK_OPERATION_FSM_fsm_state_FSM_FFd3_338,
      I1 => STACK_OPERATION_FSM_fsm_state_FSM_FFd2_336,
      I2 => STACK_OPERATION_FSM_fsm_state_FSM_FFd1_333,
      O => signal_SEL(0)
    );
  STACK_OPERATION_FSM_fsm_state_FSM_Out01 : LUT3
    generic map(
      INIT => X"B6"
    )
    port map (
      I0 => STACK_OPERATION_FSM_fsm_state_FSM_FFd2_336,
      I1 => STACK_OPERATION_FSM_fsm_state_FSM_FFd3_338,
      I2 => STACK_OPERATION_FSM_fsm_state_FSM_FFd1_333,
      O => signal_SEL(1)
    );
  STACK_ADD_SUB_UN_FSM_1_fsm_state_FSM_FFd1_In_SW0 : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => STACK_OPERATION_FSM_fsm_state_FSM_FFd2_336,
      I1 => STACK_OPERATION_FSM_fsm_state_FSM_FFd1_333,
      O => N24
    );
  STACK_DataPath_Mux_B_ADDER_1_X_7_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => STACK_DataPath_Mux_A_ADDER_1_X_and0000,
      I1 => STACK_DataPath_Stack_Register_1_Q(7),
      I2 => NUM_OUT_7_OBUF_85,
      I3 => STACK_DataPath_N01,
      O => STACK_DataPath_signal_B_adder_7_Q
    );
  STACK_FSM_EN1_SW0 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => STACK_SWAP_FSM_1_fsm_state_FSM_FFd4_359,
      I1 => STACK_ADD_SUB_UN_FSM_1_fsm_state_FSM_FFd5_235,
      O => N26
    );
  STACK_FSM_UD_SW0 : LUT4
    generic map(
      INIT => X"2077"
    )
    port map (
      I0 => STACK_FSM_fsm_state_FSM_FFd1_319,
      I1 => STACK_FSM_fsm_state_FSM_FFd2_324,
      I2 => N140,
      I3 => STACK_FSM_fsm_state_FSM_FFd2_In50_328,
      O => N31
    );
  STACK_SWAP_FSM_1_fsm_state_FSM_Out21 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => STACK_SWAP_FSM_1_fsm_state_FSM_FFd3_358,
      I1 => STACK_SWAP_FSM_1_fsm_state_FSM_FFd2_357,
      O => STACK_signal_TOS_SELECTOR(0)
    );
  STACK_DataPath_Mux_B_ADDER_1_X_0_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => STACK_DataPath_Mux_A_ADDER_1_X_and0000,
      I1 => STACK_DataPath_Stack_Register_1_Q(0),
      I2 => NUM_OUT_0_OBUF_78,
      I3 => N143,
      O => STACK_DataPath_signal_B_adder_0_Q
    );
  STACK_ADD_SUB_UN_FSM_1_fsm_state_FSM_FFd6_In_SW0 : LUT4
    generic map(
      INIT => X"828A"
    )
    port map (
      I0 => STACK_ADD_SUB_UN_FSM_1_fsm_state_FSM_FFd5_235,
      I1 => STACK_OPERATION_FSM_fsm_state_FSM_FFd2_336,
      I2 => STACK_OPERATION_FSM_fsm_state_FSM_FFd1_333,
      I3 => STACK_OPERATION_FSM_fsm_state_FSM_FFd3_338,
      O => N33
    );
  RST_IBUF : IBUF
    port map (
      I => RST,
      O => RST_IBUF_87
    );
  MODE_IBUF : IBUF
    port map (
      I => MODE,
      O => MODE_IBUF_7
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
  NUM_IN_7_IBUF : IBUF
    port map (
      I => NUM_IN(7),
      O => NUM_IN_7_IBUF_69
    );
  NUM_IN_6_IBUF : IBUF
    port map (
      I => NUM_IN(6),
      O => NUM_IN_6_IBUF_68
    );
  NUM_IN_5_IBUF : IBUF
    port map (
      I => NUM_IN(5),
      O => NUM_IN_5_IBUF_67
    );
  NUM_IN_4_IBUF : IBUF
    port map (
      I => NUM_IN(4),
      O => NUM_IN_4_IBUF_66
    );
  NUM_IN_3_IBUF : IBUF
    port map (
      I => NUM_IN(3),
      O => NUM_IN_3_IBUF_65
    );
  NUM_IN_2_IBUF : IBUF
    port map (
      I => NUM_IN(2),
      O => NUM_IN_2_IBUF_64
    );
  NUM_IN_1_IBUF : IBUF
    port map (
      I => NUM_IN(1),
      O => NUM_IN_1_IBUF_63
    );
  NUM_IN_0_IBUF : IBUF
    port map (
      I => NUM_IN(0),
      O => NUM_IN_0_IBUF_62
    );
  SSD_VALUE_7_OBUF : OBUF
    port map (
      I => SSD_DataPath_signal_DecoderOut_14_Q,
      O => SSD_VALUE(7)
    );
  SSD_VALUE_6_OBUF : OBUF
    port map (
      I => SSD_VALUE_6_OBUF_227,
      O => SSD_VALUE(6)
    );
  SSD_VALUE_5_OBUF : OBUF
    port map (
      I => SSD_VALUE_5_OBUF_226,
      O => SSD_VALUE(5)
    );
  SSD_VALUE_4_OBUF : OBUF
    port map (
      I => SSD_VALUE_4_OBUF_225,
      O => SSD_VALUE(4)
    );
  SSD_VALUE_3_OBUF : OBUF
    port map (
      I => SSD_VALUE_3_OBUF_224,
      O => SSD_VALUE(3)
    );
  SSD_VALUE_2_OBUF : OBUF
    port map (
      I => SSD_VALUE_2_OBUF_223,
      O => SSD_VALUE(2)
    );
  SSD_VALUE_1_OBUF : OBUF
    port map (
      I => SSD_VALUE_1_OBUF_222,
      O => SSD_VALUE(1)
    );
  SSD_VALUE_0_OBUF : OBUF
    port map (
      I => SSD_VALUE_0_OBUF_221,
      O => SSD_VALUE(0)
    );
  SSD_EN_3_OBUF : OBUF
    port map (
      I => SSD_EN_3_OBUF_212,
      O => SSD_EN(3)
    );
  SSD_EN_2_OBUF : OBUF
    port map (
      I => SSD_EN_2_OBUF_211,
      O => SSD_EN(2)
    );
  SSD_EN_1_OBUF : OBUF
    port map (
      I => SSD_EN_1_OBUF_210,
      O => SSD_EN(1)
    );
  SSD_EN_0_OBUF : OBUF
    port map (
      I => SSD_EN_0_OBUF_209,
      O => SSD_EN(0)
    );
  NUM_OUT_7_OBUF : OBUF
    port map (
      I => NUM_OUT_7_OBUF_85,
      O => NUM_OUT(7)
    );
  NUM_OUT_6_OBUF : OBUF
    port map (
      I => NUM_OUT_6_OBUF_84,
      O => NUM_OUT(6)
    );
  NUM_OUT_5_OBUF : OBUF
    port map (
      I => NUM_OUT_5_OBUF_83,
      O => NUM_OUT(5)
    );
  NUM_OUT_4_OBUF : OBUF
    port map (
      I => NUM_OUT_4_OBUF_82,
      O => NUM_OUT(4)
    );
  NUM_OUT_3_OBUF : OBUF
    port map (
      I => NUM_OUT_3_OBUF_81,
      O => NUM_OUT(3)
    );
  NUM_OUT_2_OBUF : OBUF
    port map (
      I => NUM_OUT_2_OBUF_80,
      O => NUM_OUT(2)
    );
  NUM_OUT_1_OBUF : OBUF
    port map (
      I => NUM_OUT_1_OBUF_79,
      O => NUM_OUT(1)
    );
  NUM_OUT_0_OBUF : OBUF
    port map (
      I => NUM_OUT_0_OBUF_78,
      O => NUM_OUT(0)
    );
  STACK_DataPath_Stack_Register_2_Q_7 : FDR
    port map (
      C => CLK_BUFGP_5,
      D => STACK_DataPath_Demux_Swapper_1_Y_7_1,
      R => STACK_DataPath_signal_register_enabler_1,
      Q => STACK_DataPath_Stack_Register_2_Q(7)
    );
  STACK_DataPath_Stack_Register_2_Q_6 : FDR
    port map (
      C => CLK_BUFGP_5,
      D => STACK_DataPath_Demux_Swapper_1_Y_6_1,
      R => STACK_DataPath_signal_register_enabler_1,
      Q => STACK_DataPath_Stack_Register_2_Q(6)
    );
  STACK_DataPath_Stack_Register_2_Q_5 : FDR
    port map (
      C => CLK_BUFGP_5,
      D => STACK_DataPath_Demux_Swapper_1_Y_5_1,
      R => STACK_DataPath_signal_register_enabler_1,
      Q => STACK_DataPath_Stack_Register_2_Q(5)
    );
  STACK_DataPath_Stack_Register_2_Q_4 : FDR
    port map (
      C => CLK_BUFGP_5,
      D => STACK_DataPath_Demux_Swapper_1_Y_4_1,
      R => STACK_DataPath_signal_register_enabler_1,
      Q => STACK_DataPath_Stack_Register_2_Q(4)
    );
  STACK_DataPath_Stack_Register_2_Q_3 : FDR
    port map (
      C => CLK_BUFGP_5,
      D => STACK_DataPath_Demux_Swapper_1_Y_3_1,
      R => STACK_DataPath_signal_register_enabler_1,
      Q => STACK_DataPath_Stack_Register_2_Q(3)
    );
  STACK_DataPath_Stack_Register_2_Q_2 : FDR
    port map (
      C => CLK_BUFGP_5,
      D => STACK_DataPath_Demux_Swapper_1_Y_2_1,
      R => STACK_DataPath_signal_register_enabler_1,
      Q => STACK_DataPath_Stack_Register_2_Q(2)
    );
  STACK_DataPath_Stack_Register_2_Q_1 : FDR
    port map (
      C => CLK_BUFGP_5,
      D => STACK_DataPath_Demux_Swapper_1_Y_1_1,
      R => STACK_DataPath_signal_register_enabler_1,
      Q => STACK_DataPath_Stack_Register_2_Q(1)
    );
  STACK_DataPath_Stack_Register_2_Q_0 : FDR
    port map (
      C => CLK_BUFGP_5,
      D => STACK_DataPath_Demux_Swapper_1_Y_0_1,
      R => STACK_DataPath_signal_register_enabler_1,
      Q => STACK_DataPath_Stack_Register_2_Q(0)
    );
  STACK_FSM_fsm_state_FSM_FFd1 : FDRS
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_5,
      D => STACK_FSM_fsm_state_FSM_FFd1_In31,
      R => RST_IBUF_87,
      S => STACK_FSM_fsm_state_FSM_FFd1_In27_320,
      Q => STACK_FSM_fsm_state_FSM_FFd1_319
    );
  STACK_FSM_fsm_state_FSM_FFd1_In311 : LUT3
    generic map(
      INIT => X"A2"
    )
    port map (
      I0 => STACK_FSM_fsm_state_FSM_FFd1_319,
      I1 => STACK_N7,
      I2 => STACK_FSM_fsm_state_FSM_FFd1_In6,
      O => STACK_FSM_fsm_state_FSM_FFd1_In31
    );
  STACK_ADD_SUB_UN_FSM_1_fsm_state_FSM_FFd3 : FDRS
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_5,
      D => STACK_ADD_SUB_UN_FSM_1_fsm_state_FSM_FFd3_In1_232,
      R => RST_IBUF_87,
      S => STACK_ADD_SUB_UN_FSM_1_fsm_state_FSM_FFd4_233,
      Q => STACK_ADD_SUB_UN_FSM_1_fsm_state_FSM_FFd3_231
    );
  STACK_DataPath_Stack_Register_1_Q_7 : FDE
    port map (
      C => CLK_BUFGP_5,
      CE => STACK_DataPath_signal_register_enabler_1,
      D => NUM_OUT_7_OBUF_85,
      Q => STACK_DataPath_Stack_Register_1_Q(7)
    );
  STACK_DataPath_Stack_Register_1_Q_6 : FDE
    port map (
      C => CLK_BUFGP_5,
      CE => STACK_DataPath_signal_register_enabler_1,
      D => NUM_OUT_6_OBUF_84,
      Q => STACK_DataPath_Stack_Register_1_Q(6)
    );
  STACK_DataPath_Stack_Register_1_Q_5 : FDE
    port map (
      C => CLK_BUFGP_5,
      CE => STACK_DataPath_signal_register_enabler_1,
      D => NUM_OUT_5_OBUF_83,
      Q => STACK_DataPath_Stack_Register_1_Q(5)
    );
  STACK_DataPath_Stack_Register_1_Q_4 : FDE
    port map (
      C => CLK_BUFGP_5,
      CE => STACK_DataPath_signal_register_enabler_1,
      D => NUM_OUT_4_OBUF_82,
      Q => STACK_DataPath_Stack_Register_1_Q(4)
    );
  STACK_DataPath_Stack_Register_1_Q_3 : FDE
    port map (
      C => CLK_BUFGP_5,
      CE => STACK_DataPath_signal_register_enabler_1,
      D => NUM_OUT_3_OBUF_81,
      Q => STACK_DataPath_Stack_Register_1_Q(3)
    );
  STACK_DataPath_Stack_Register_1_Q_2 : FDE
    port map (
      C => CLK_BUFGP_5,
      CE => STACK_DataPath_signal_register_enabler_1,
      D => NUM_OUT_2_OBUF_80,
      Q => STACK_DataPath_Stack_Register_1_Q(2)
    );
  STACK_DataPath_Stack_Register_1_Q_1 : FDE
    port map (
      C => CLK_BUFGP_5,
      CE => STACK_DataPath_signal_register_enabler_1,
      D => NUM_OUT_1_OBUF_79,
      Q => STACK_DataPath_Stack_Register_1_Q(1)
    );
  STACK_DataPath_Stack_Register_1_Q_0 : FDE
    port map (
      C => CLK_BUFGP_5,
      CE => STACK_DataPath_signal_register_enabler_1,
      D => NUM_OUT_0_OBUF_78,
      Q => STACK_DataPath_Stack_Register_1_Q(0)
    );
  SSD_Counter125K_Mcount_temp_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => SSD_Counter125K_temp(1),
      O => SSD_Counter125K_Mcount_temp_cy_1_rt_119
    );
  SSD_Counter125K_Mcount_temp_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => SSD_Counter125K_temp(2),
      O => SSD_Counter125K_Mcount_temp_cy_2_rt_121
    );
  SSD_Counter125K_Mcount_temp_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => SSD_Counter125K_temp(3),
      O => SSD_Counter125K_Mcount_temp_cy_3_rt_123
    );
  SSD_Counter125K_Mcount_temp_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => SSD_Counter125K_temp(4),
      O => SSD_Counter125K_Mcount_temp_cy_4_rt_125
    );
  SSD_Counter125K_Mcount_temp_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => SSD_Counter125K_temp(5),
      O => SSD_Counter125K_Mcount_temp_cy_5_rt_127
    );
  SSD_Counter125K_Mcount_temp_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => SSD_Counter125K_temp(6),
      O => SSD_Counter125K_Mcount_temp_cy_6_rt_129
    );
  SSD_Counter125K_Mcount_temp_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => SSD_Counter125K_temp(7),
      O => SSD_Counter125K_Mcount_temp_cy_7_rt_131
    );
  SSD_Counter125K_Mcount_temp_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => SSD_Counter125K_temp(8),
      O => SSD_Counter125K_Mcount_temp_cy_8_rt_133
    );
  SSD_Counter125K_Mcount_temp_cy_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => SSD_Counter125K_temp(9),
      O => SSD_Counter125K_Mcount_temp_cy_9_rt_135
    );
  SSD_Counter125K_Mcount_temp_cy_10_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => SSD_Counter125K_temp(10),
      O => SSD_Counter125K_Mcount_temp_cy_10_rt_107
    );
  SSD_Counter125K_Mcount_temp_cy_11_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => SSD_Counter125K_temp(11),
      O => SSD_Counter125K_Mcount_temp_cy_11_rt_109
    );
  SSD_Counter125K_Mcount_temp_cy_12_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => SSD_Counter125K_temp(12),
      O => SSD_Counter125K_Mcount_temp_cy_12_rt_111
    );
  SSD_Counter125K_Mcount_temp_cy_13_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => SSD_Counter125K_temp(13),
      O => SSD_Counter125K_Mcount_temp_cy_13_rt_113
    );
  SSD_Counter125K_Mcount_temp_cy_14_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => SSD_Counter125K_temp(14),
      O => SSD_Counter125K_Mcount_temp_cy_14_rt_115
    );
  SSD_Counter125K_Mcount_temp_cy_15_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => SSD_Counter125K_temp(15),
      O => SSD_Counter125K_Mcount_temp_cy_15_rt_117
    );
  SSD_Counter125K_temp_cmp_eq00001_wg_cy_0_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => SSD_Counter125K_temp(6),
      O => SSD_Counter125K_temp_cmp_eq00001_wg_cy_0_rt_174
    );
  SSD_Counter125K_Mcount_temp_xor_16_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => SSD_Counter125K_temp(16),
      O => SSD_Counter125K_Mcount_temp_xor_16_rt_154
    );
  STACK_ADD_SUB_UN_FSM_1_fsm_state_FSM_FFd6_In_SW1_SW0 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => N33,
      I1 => STACK_ADD_SUB_UN_FSM_1_fsm_state_FSM_FFd2_230,
      I2 => STACK_ADD_SUB_UN_FSM_1_fsm_state_FSM_FFd1_228,
      O => N40
    );
  STACK_ADD_SUB_UN_FSM_1_fsm_state_FSM_FFd6_In : LUT4
    generic map(
      INIT => X"D8F0"
    )
    port map (
      I0 => STACK_OPERATION_FSM_fsm_state_FSM_FFd3_338,
      I1 => N41,
      I2 => N40,
      I3 => STACK_signal_OVF,
      O => STACK_ADD_SUB_UN_FSM_1_fsm_state_FSM_FFd6_In_237
    );
  STACK_DataPath_Mux_B_ADDER_1_X_1_1_SW1 : LUT4
    generic map(
      INIT => X"336C"
    )
    port map (
      I0 => STACK_DataPath_Stack_Register_1_Q(1),
      I1 => STACK_DataPath_signal_A_adder(1),
      I2 => N142,
      I3 => STACK_DataPath_N01,
      O => N44
    );
  STACK_DataPath_ADDER_SUBBER_1_Maddsub_tempS_lut_1_Q : LUT4
    generic map(
      INIT => X"1ED2"
    )
    port map (
      I0 => STACK_DataPath_Stack_Register_1_Q(1),
      I1 => NUM_OUT_1_OBUF_79,
      I2 => STACK_DataPath_M1,
      I3 => N44,
      O => STACK_DataPath_ADDER_SUBBER_1_Maddsub_tempS_lut(1)
    );
  STACK_DataPath_Mux_B_ADDER_1_X_7_1_SW0 : LUT3
    generic map(
      INIT => X"87"
    )
    port map (
      I0 => STACK_DataPath_Stack_Register_1_Q(7),
      I1 => STACK_DataPath_Mux_A_ADDER_1_X_and0000,
      I2 => STACK_DataPath_M1,
      O => N61
    );
  STACK_DataPath_Mux_B_ADDER_1_X_7_1_SW1 : LUT4
    generic map(
      INIT => X"F087"
    )
    port map (
      I0 => STACK_DataPath_Stack_Register_1_Q(7),
      I1 => STACK_DataPath_Mux_A_ADDER_1_X_and0000,
      I2 => STACK_DataPath_M1,
      I3 => STACK_DataPath_N01,
      O => N62
    );
  STACK_DataPath_ADDER_SUBBER_1_Maddsub_tempS_lut_7_Q : LUT4
    generic map(
      INIT => X"A965"
    )
    port map (
      I0 => STACK_DataPath_signal_A_adder(7),
      I1 => NUM_OUT_7_OBUF_85,
      I2 => N61,
      I3 => N62,
      O => STACK_DataPath_ADDER_SUBBER_1_Maddsub_tempS_lut(7)
    );
  STACK_DataPath_ADDER_SUBBER_1_Maddsub_tempS_lut_2_SW0 : LUT3
    generic map(
      INIT => X"25"
    )
    port map (
      I0 => STACK_DataPath_Stack_Register_1_Q(2),
      I1 => STACK_DataPath_Mux_A_ADDER_1_X_and0000,
      I2 => STACK_DataPath_N01,
      O => N64
    );
  STACK_DataPath_ADDER_SUBBER_1_Maddsub_tempS_lut_2_Q : LUT4
    generic map(
      INIT => X"B41E"
    )
    port map (
      I0 => NUM_OUT_2_OBUF_80,
      I1 => STACK_DataPath_Stack_Register_1_Q(2),
      I2 => STACK_DataPath_M1,
      I3 => N64,
      O => STACK_DataPath_ADDER_SUBBER_1_Maddsub_tempS_lut(2)
    );
  STACK_DataPath_ADDER_SUBBER_1_Maddsub_tempS_lut_3_SW0 : LUT3
    generic map(
      INIT => X"25"
    )
    port map (
      I0 => STACK_DataPath_Stack_Register_1_Q(3),
      I1 => STACK_DataPath_Mux_A_ADDER_1_X_and0000,
      I2 => STACK_DataPath_N01,
      O => N66
    );
  STACK_DataPath_ADDER_SUBBER_1_Maddsub_tempS_lut_3_Q : LUT4
    generic map(
      INIT => X"B41E"
    )
    port map (
      I0 => NUM_OUT_3_OBUF_81,
      I1 => STACK_DataPath_Stack_Register_1_Q(3),
      I2 => STACK_DataPath_M1,
      I3 => N66,
      O => STACK_DataPath_ADDER_SUBBER_1_Maddsub_tempS_lut(3)
    );
  STACK_DataPath_ADDER_SUBBER_1_Maddsub_tempS_lut_4_SW0 : LUT3
    generic map(
      INIT => X"25"
    )
    port map (
      I0 => STACK_DataPath_Stack_Register_1_Q(4),
      I1 => STACK_DataPath_Mux_A_ADDER_1_X_and0000,
      I2 => STACK_DataPath_N01,
      O => N68
    );
  STACK_DataPath_ADDER_SUBBER_1_Maddsub_tempS_lut_4_Q : LUT4
    generic map(
      INIT => X"B41E"
    )
    port map (
      I0 => NUM_OUT_4_OBUF_82,
      I1 => STACK_DataPath_Stack_Register_1_Q(4),
      I2 => STACK_DataPath_M1,
      I3 => N68,
      O => STACK_DataPath_ADDER_SUBBER_1_Maddsub_tempS_lut(4)
    );
  STACK_DataPath_ADDER_SUBBER_1_Maddsub_tempS_lut_5_SW0 : LUT3
    generic map(
      INIT => X"25"
    )
    port map (
      I0 => STACK_DataPath_Stack_Register_1_Q(5),
      I1 => STACK_DataPath_Mux_A_ADDER_1_X_and0000,
      I2 => STACK_DataPath_N01,
      O => N70
    );
  STACK_DataPath_ADDER_SUBBER_1_Maddsub_tempS_lut_5_Q : LUT4
    generic map(
      INIT => X"B41E"
    )
    port map (
      I0 => NUM_OUT_5_OBUF_83,
      I1 => STACK_DataPath_Stack_Register_1_Q(5),
      I2 => STACK_DataPath_M1,
      I3 => N70,
      O => STACK_DataPath_ADDER_SUBBER_1_Maddsub_tempS_lut(5)
    );
  STACK_DataPath_ADDER_SUBBER_1_Maddsub_tempS_lut_6_SW0 : LUT3
    generic map(
      INIT => X"25"
    )
    port map (
      I0 => STACK_DataPath_Stack_Register_1_Q(6),
      I1 => STACK_DataPath_Mux_A_ADDER_1_X_and0000,
      I2 => STACK_DataPath_N01,
      O => N72
    );
  STACK_DataPath_ADDER_SUBBER_1_Maddsub_tempS_lut_6_Q : LUT4
    generic map(
      INIT => X"B41E"
    )
    port map (
      I0 => NUM_OUT_6_OBUF_84,
      I1 => STACK_DataPath_Stack_Register_1_Q(6),
      I2 => STACK_DataPath_M1,
      I3 => N72,
      O => STACK_DataPath_ADDER_SUBBER_1_Maddsub_tempS_lut(6)
    );
  STACK_ADD_SUB_UN_FSM_1_fsm_state_FSM_FFd1_In : LUT4
    generic map(
      INIT => X"1105"
    )
    port map (
      I0 => N24,
      I1 => N78,
      I2 => N77,
      I3 => STACK_DataPath_Cout,
      O => STACK_ADD_SUB_UN_FSM_1_fsm_state_FSM_FFd1_In_229
    );
  STACK_DataPath_Mux_A_ADDER_1_X_1_1 : LUT4
    generic map(
      INIT => X"AA8A"
    )
    port map (
      I0 => STACK_DataPath_Stack_Register_1_Q(1),
      I1 => STACK_OPERATION_FSM_fsm_state_FSM_FFd2_336,
      I2 => STACK_OPERATION_FSM_fsm_state_FSM_FFd1_333,
      I3 => STACK_OPERATION_FSM_fsm_state_FSM_FFd3_338,
      O => STACK_DataPath_signal_A_adder(1)
    );
  STACK_DataPath_Mux_A_ADDER_1_X_0_1 : LUT4
    generic map(
      INIT => X"AA8A"
    )
    port map (
      I0 => STACK_DataPath_Stack_Register_1_Q(0),
      I1 => STACK_OPERATION_FSM_fsm_state_FSM_FFd2_336,
      I2 => STACK_OPERATION_FSM_fsm_state_FSM_FFd1_333,
      I3 => STACK_OPERATION_FSM_fsm_state_FSM_FFd3_338,
      O => STACK_DataPath_signal_A_adder(0)
    );
  STACK_DataPath_ADDER_SUBBER_1_Maddsub_tempS_lut_7_1 : LUT4
    generic map(
      INIT => X"2DD2"
    )
    port map (
      I0 => STACK_DataPath_Stack_Register_1_Q(7),
      I1 => STACK_DataPath_Mux_A_ADDER_1_X_and0000,
      I2 => STACK_DataPath_M1,
      I3 => STACK_DataPath_signal_B_adder_7_Q,
      O => STACK_DataPath_ADDER_SUBBER_1_Maddsub_tempS_lut_7_1_254
    );
  STACK_ADD_SUB_UN_FSM_1_fsm_state_FSM_FFd6_In_SW1_SW1 : MUXF5
    port map (
      I0 => N82,
      I1 => N83,
      S => N33,
      O => N41
    );
  STACK_ADD_SUB_UN_FSM_1_fsm_state_FSM_FFd6_In_SW1_SW1_F : LUT4
    generic map(
      INIT => X"EBAA"
    )
    port map (
      I0 => STACK_ADD_SUB_UN_FSM_1_fsm_state_FSM_FFd1_228,
      I1 => STACK_OPERATION_FSM_fsm_state_FSM_FFd2_336,
      I2 => STACK_OPERATION_FSM_fsm_state_FSM_FFd1_333,
      I3 => STACK_ADD_SUB_UN_FSM_1_fsm_state_FSM_FFd2_230,
      O => N82
    );
  STACK_ADD_SUB_UN_FSM_1_fsm_state_FSM_FFd6_In_SW1_SW1_G : LUT4
    generic map(
      INIT => X"FDDF"
    )
    port map (
      I0 => STACK_ADD_SUB_UN_FSM_1_fsm_state_FSM_FFd2_230,
      I1 => STACK_ADD_SUB_UN_FSM_1_fsm_state_FSM_FFd1_228,
      I2 => STACK_OPERATION_FSM_fsm_state_FSM_FFd1_333,
      I3 => STACK_OPERATION_FSM_fsm_state_FSM_FFd2_336,
      O => N83
    );
  STACK_DataPath_ADDER_SUBBER_1_Mxor_OVF_Result1_SW0 : MUXF5
    port map (
      I0 => N84,
      I1 => SSD_DataPath_signal_DecoderOut_14_Q,
      S => STACK_DataPath_signal_B_adder_7_Q,
      O => N77
    );
  STACK_TOS_Mcount_temp_xor_2_11 : LUT4
    generic map(
      INIT => X"6CC9"
    )
    port map (
      I0 => N141,
      I1 => STACK_TOS_temp(2),
      I2 => STACK_TOS_temp(1),
      I3 => STACK_TOS_temp(0),
      O => STACK_Result(2)
    );
  STACK_ADD_SUB_UN_FSM_1_fsm_state_FSM_FFd3_In1 : LUT4
    generic map(
      INIT => X"0200"
    )
    port map (
      I0 => STACK_ADD_SUB_UN_FSM_1_fsm_state_FSM_FFd5_235,
      I1 => STACK_OPERATION_FSM_fsm_state_FSM_FFd3_338,
      I2 => STACK_OPERATION_FSM_fsm_state_FSM_FFd2_336,
      I3 => STACK_OPERATION_FSM_fsm_state_FSM_FFd1_333,
      O => STACK_ADD_SUB_UN_FSM_1_fsm_state_FSM_FFd3_In1_232
    );
  STACK_FSM_EN20 : LUT4
    generic map(
      INIT => X"0004"
    )
    port map (
      I0 => STACK_OPERATION_FSM_fsm_state_FSM_FFd2_336,
      I1 => STACK_FSM_EN10_318,
      I2 => STACK_OPERATION_FSM_fsm_state_FSM_FFd1_333,
      I3 => STACK_OPERATION_FSM_fsm_state_FSM_FFd3_338,
      O => STACK_signal_FSMOut_EN
    );
  STACK_FSM_fsm_state_FSM_FFd2_In56_SW0 : LUT4
    generic map(
      INIT => X"0004"
    )
    port map (
      I0 => STACK_TOS_temp(0),
      I1 => STACK_N23,
      I2 => STACK_TOS_temp(1),
      I3 => STACK_TOS_temp(3),
      O => N104
    );
  STACK_FSM_fsm_state_FSM_FFd2_In56 : LUT4
    generic map(
      INIT => X"FEEE"
    )
    port map (
      I0 => STACK_FSM_fsm_state_FSM_FFd2_In30,
      I1 => N104,
      I2 => STACK_FSM_fsm_state_FSM_FFd1_319,
      I3 => STACK_FSM_fsm_state_FSM_FFd2_In50_328,
      O => STACK_FSM_fsm_state_FSM_FFd2_In
    );
  STACK_TOS_Mcount_temp_xor_1_11 : LUT3
    generic map(
      INIT => X"69"
    )
    port map (
      I0 => STACK_signal_FSMOut_UD,
      I1 => STACK_TOS_temp(0),
      I2 => STACK_TOS_temp(1),
      O => STACK_Result(1)
    );
  STACK_DataPath_Demux_Swapper_1_X_and00001 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => STACK_OPERATION_FSM_fsm_state_FSM_FFd2_336,
      I1 => STACK_OPERATION_FSM_fsm_state_FSM_FFd1_333,
      I2 => STACK_OPERATION_FSM_fsm_state_FSM_FFd3_338,
      O => STACK_DataPath_Demux_Swapper_1_X_and0000
    );
  STACK_DataPath_Mux_Pre_Stack_1_X_cmp_eq00001 : LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => STACK_OPERATION_FSM_fsm_state_FSM_FFd1_333,
      I1 => STACK_OPERATION_FSM_fsm_state_FSM_FFd2_336,
      I2 => STACK_OPERATION_FSM_fsm_state_FSM_FFd3_338,
      O => STACK_DataPath_Mux_Pre_Stack_1_X_cmp_eq0000
    );
  STACK_DataPath_Mux_A_ADDER_1_X_7_1 : LUT4
    generic map(
      INIT => X"AA8A"
    )
    port map (
      I0 => STACK_DataPath_Stack_Register_1_Q(7),
      I1 => STACK_OPERATION_FSM_fsm_state_FSM_FFd3_338,
      I2 => STACK_OPERATION_FSM_fsm_state_FSM_FFd1_333,
      I3 => STACK_OPERATION_FSM_fsm_state_FSM_FFd2_336,
      O => STACK_DataPath_signal_A_adder(7)
    );
  STACK_DataPath_Mux_A_ADDER_1_X_2_1 : LUT4
    generic map(
      INIT => X"AA8A"
    )
    port map (
      I0 => STACK_DataPath_Stack_Register_1_Q(2),
      I1 => STACK_OPERATION_FSM_fsm_state_FSM_FFd3_338,
      I2 => STACK_OPERATION_FSM_fsm_state_FSM_FFd1_333,
      I3 => STACK_OPERATION_FSM_fsm_state_FSM_FFd2_336,
      O => STACK_DataPath_signal_A_adder(2)
    );
  STACK_DataPath_Mux_A_ADDER_1_X_3_1 : LUT4
    generic map(
      INIT => X"AA8A"
    )
    port map (
      I0 => STACK_DataPath_Stack_Register_1_Q(3),
      I1 => STACK_OPERATION_FSM_fsm_state_FSM_FFd3_338,
      I2 => STACK_OPERATION_FSM_fsm_state_FSM_FFd1_333,
      I3 => STACK_OPERATION_FSM_fsm_state_FSM_FFd2_336,
      O => STACK_DataPath_signal_A_adder(3)
    );
  STACK_DataPath_Mux_A_ADDER_1_X_4_1 : LUT4
    generic map(
      INIT => X"AA8A"
    )
    port map (
      I0 => STACK_DataPath_Stack_Register_1_Q(4),
      I1 => STACK_OPERATION_FSM_fsm_state_FSM_FFd3_338,
      I2 => STACK_OPERATION_FSM_fsm_state_FSM_FFd1_333,
      I3 => STACK_OPERATION_FSM_fsm_state_FSM_FFd2_336,
      O => STACK_DataPath_signal_A_adder(4)
    );
  STACK_DataPath_Mux_A_ADDER_1_X_5_1 : LUT4
    generic map(
      INIT => X"AA8A"
    )
    port map (
      I0 => STACK_DataPath_Stack_Register_1_Q(5),
      I1 => STACK_OPERATION_FSM_fsm_state_FSM_FFd3_338,
      I2 => STACK_OPERATION_FSM_fsm_state_FSM_FFd1_333,
      I3 => STACK_OPERATION_FSM_fsm_state_FSM_FFd2_336,
      O => STACK_DataPath_signal_A_adder(5)
    );
  STACK_DataPath_Mux_A_ADDER_1_X_6_1 : LUT4
    generic map(
      INIT => X"AA8A"
    )
    port map (
      I0 => STACK_DataPath_Stack_Register_1_Q(6),
      I1 => STACK_OPERATION_FSM_fsm_state_FSM_FFd3_338,
      I2 => STACK_OPERATION_FSM_fsm_state_FSM_FFd1_333,
      I3 => STACK_OPERATION_FSM_fsm_state_FSM_FFd2_336,
      O => STACK_DataPath_signal_A_adder(6)
    );
  STACK_DataPath_ADDER_SUBBER_1_Mxor_OVF_Result1_SW0_F : LUT3
    generic map(
      INIT => X"DF"
    )
    port map (
      I0 => STACK_OPERATION_FSM_fsm_state_FSM_FFd3_338,
      I1 => STACK_DataPath_Stack_Register_1_Q(7),
      I2 => STACK_ADD_SUB_UN_FSM_1_fsm_state_FSM_FFd2_230,
      O => N84
    );
  STACK_DataPath_Demux_Post_Stack_1_TOS_cmp_eq00001 : LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => STACK_SWAP_FSM_1_fsm_state_FSM_FFd2_357,
      I1 => STACK_SWAP_FSM_1_fsm_state_FSM_FFd3_358,
      I2 => STACK_ADD_SUB_UN_FSM_1_fsm_state_FSM_FFd4_233,
      O => STACK_DataPath_signal_register_enabler_1
    );
  SSD_DataPath_Decoder_DATA_OUT_24_1 : LUT3
    generic map(
      INIT => X"13"
    )
    port map (
      I0 => STACK_OPERATION_FSM_fsm_state_FSM_FFd1_333,
      I1 => STACK_OPERATION_FSM_fsm_state_FSM_FFd2_336,
      I2 => STACK_OPERATION_FSM_fsm_state_FSM_FFd3_338,
      O => SSD_DataPath_signal_DecoderOut_24_Q
    );
  SSD_DataPath_Decoder_DATA_OUT_27_1 : LUT4
    generic map(
      INIT => X"2B23"
    )
    port map (
      I0 => STACK_OPERATION_FSM_fsm_state_FSM_FFd3_338,
      I1 => STACK_OPERATION_FSM_fsm_state_FSM_FFd1_333,
      I2 => STACK_OPERATION_FSM_fsm_state_FSM_FFd2_336,
      I3 => STACK_ADD_SUB_UN_FSM_1_fsm_state_FSM_FFd1_228,
      O => SSD_DataPath_signal_DecoderOut_27_Q
    );
  SSD_DataPath_Decoder_DATA_OUT_25_1 : LUT4
    generic map(
      INIT => X"4149"
    )
    port map (
      I0 => STACK_OPERATION_FSM_fsm_state_FSM_FFd3_338,
      I1 => STACK_OPERATION_FSM_fsm_state_FSM_FFd1_333,
      I2 => STACK_OPERATION_FSM_fsm_state_FSM_FFd2_336,
      I3 => STACK_ADD_SUB_UN_FSM_1_fsm_state_FSM_FFd1_228,
      O => SSD_DataPath_signal_DecoderOut_25_Q
    );
  SSD_DataPath_Decoder_DATA_OUT_28_1 : LUT4
    generic map(
      INIT => X"0233"
    )
    port map (
      I0 => STACK_OPERATION_FSM_fsm_state_FSM_FFd3_338,
      I1 => STACK_OPERATION_FSM_fsm_state_FSM_FFd2_336,
      I2 => STACK_ADD_SUB_UN_FSM_1_fsm_state_FSM_FFd1_228,
      I3 => STACK_OPERATION_FSM_fsm_state_FSM_FFd1_333,
      O => SSD_DataPath_signal_DecoderOut_28_Q
    );
  SSD_DataPath_Decoder_DATA_OUT_17_SW1 : LUT4
    generic map(
      INIT => X"1B5F"
    )
    port map (
      I0 => signal_SEL(0),
      I1 => signal_stack_state(1),
      I2 => STACK_ADD_SUB_UN_FSM_1_fsm_state_FSM_FFd1_228,
      I3 => signal_stack_state(0),
      O => N122
    );
  SSD_DataPath_Decoder_DATA_OUT_17_Q : LUT4
    generic map(
      INIT => X"ADDE"
    )
    port map (
      I0 => STACK_OPERATION_FSM_fsm_state_FSM_FFd3_338,
      I1 => N122,
      I2 => STACK_OPERATION_FSM_fsm_state_FSM_FFd1_333,
      I3 => STACK_OPERATION_FSM_fsm_state_FSM_FFd2_336,
      O => SSD_DataPath_signal_DecoderOut_16_Q
    );
  SSD_DataPath_FinalSegmentSelector_Mmux_SEG_2_f5_11 : LUT4
    generic map(
      INIT => X"E4F5"
    )
    port map (
      I0 => SSD_Fsm_fsm_state_FSM_FFd2_203,
      I1 => SSD_DataPath_signal_DecoderOut_16_Q,
      I2 => N124,
      I3 => SSD_Fsm_fsm_state_FSM_FFd1_201,
      O => SSD_VALUE_2_OBUF_223
    );
  SSD_DataPath_signal_DecoderOut_10_Q : LUT4
    generic map(
      INIT => X"FBF6"
    )
    port map (
      I0 => STACK_OPERATION_FSM_fsm_state_FSM_FFd2_336,
      I1 => STACK_OPERATION_FSM_fsm_state_FSM_FFd3_338,
      I2 => N122,
      I3 => STACK_OPERATION_FSM_fsm_state_FSM_FFd1_333,
      O => SSD_DataPath_signal_DecoderOut_10_Q_193
    );
  SSD_DataPath_Decoder_DATA_OUT_4_SW1 : LUT4
    generic map(
      INIT => X"2227"
    )
    port map (
      I0 => signal_SEL(0),
      I1 => STACK_ADD_SUB_UN_FSM_1_fsm_state_FSM_FFd1_228,
      I2 => signal_stack_state(0),
      I3 => signal_stack_state(1),
      O => N128
    );
  SSD_DataPath_Decoder_DATA_OUT_4_Q : LUT4
    generic map(
      INIT => X"FBF6"
    )
    port map (
      I0 => STACK_OPERATION_FSM_fsm_state_FSM_FFd2_336,
      I1 => STACK_OPERATION_FSM_fsm_state_FSM_FFd3_338,
      I2 => N128,
      I3 => STACK_OPERATION_FSM_fsm_state_FSM_FFd1_333,
      O => SSD_DataPath_signal_DecoderOut_0_Q
    );
  STACK_DataPath_Mux_Pre_Stack_1_X_7_38_F_SW0 : LUT4
    generic map(
      INIT => X"CDC8"
    )
    port map (
      I0 => STACK_SWAP_FSM_1_fsm_state_FSM_FFd2_357,
      I1 => STACK_DataPath_Stack_Register_2_Q(7),
      I2 => STACK_SWAP_FSM_1_fsm_state_FSM_FFd3_358,
      I3 => STACK_DataPath_Stack_Register_1_Q(7),
      O => N106
    );
  STACK_DataPath_Mux_Pre_Stack_1_X_6_38_F_SW0 : LUT4
    generic map(
      INIT => X"CDC8"
    )
    port map (
      I0 => STACK_SWAP_FSM_1_fsm_state_FSM_FFd2_357,
      I1 => STACK_DataPath_Stack_Register_2_Q(6),
      I2 => STACK_SWAP_FSM_1_fsm_state_FSM_FFd3_358,
      I3 => STACK_DataPath_Stack_Register_1_Q(6),
      O => N108
    );
  STACK_DataPath_Mux_Pre_Stack_1_X_5_38_F_SW0 : LUT4
    generic map(
      INIT => X"CDC8"
    )
    port map (
      I0 => STACK_SWAP_FSM_1_fsm_state_FSM_FFd2_357,
      I1 => STACK_DataPath_Stack_Register_2_Q(5),
      I2 => STACK_SWAP_FSM_1_fsm_state_FSM_FFd3_358,
      I3 => STACK_DataPath_Stack_Register_1_Q(5),
      O => N110
    );
  STACK_DataPath_Mux_Pre_Stack_1_X_4_38_F_SW0 : LUT4
    generic map(
      INIT => X"CDC8"
    )
    port map (
      I0 => STACK_SWAP_FSM_1_fsm_state_FSM_FFd2_357,
      I1 => STACK_DataPath_Stack_Register_2_Q(4),
      I2 => STACK_SWAP_FSM_1_fsm_state_FSM_FFd3_358,
      I3 => STACK_DataPath_Stack_Register_1_Q(4),
      O => N112
    );
  STACK_DataPath_Mux_Pre_Stack_1_X_3_38_F_SW0 : LUT4
    generic map(
      INIT => X"CDC8"
    )
    port map (
      I0 => STACK_SWAP_FSM_1_fsm_state_FSM_FFd2_357,
      I1 => STACK_DataPath_Stack_Register_2_Q(3),
      I2 => STACK_SWAP_FSM_1_fsm_state_FSM_FFd3_358,
      I3 => STACK_DataPath_Stack_Register_1_Q(3),
      O => N114
    );
  STACK_DataPath_Mux_Pre_Stack_1_X_2_38_F_SW0 : LUT4
    generic map(
      INIT => X"CDC8"
    )
    port map (
      I0 => STACK_SWAP_FSM_1_fsm_state_FSM_FFd2_357,
      I1 => STACK_DataPath_Stack_Register_2_Q(2),
      I2 => STACK_SWAP_FSM_1_fsm_state_FSM_FFd3_358,
      I3 => STACK_DataPath_Stack_Register_1_Q(2),
      O => N116
    );
  STACK_DataPath_Mux_Pre_Stack_1_X_1_38_F_SW0 : LUT4
    generic map(
      INIT => X"CDC8"
    )
    port map (
      I0 => STACK_SWAP_FSM_1_fsm_state_FSM_FFd2_357,
      I1 => STACK_DataPath_Stack_Register_2_Q(1),
      I2 => STACK_SWAP_FSM_1_fsm_state_FSM_FFd3_358,
      I3 => STACK_DataPath_Stack_Register_1_Q(1),
      O => N118
    );
  STACK_DataPath_Mux_Pre_Stack_1_X_0_38_F_SW0 : LUT4
    generic map(
      INIT => X"CDC8"
    )
    port map (
      I0 => STACK_SWAP_FSM_1_fsm_state_FSM_FFd2_357,
      I1 => STACK_DataPath_Stack_Register_2_Q(0),
      I2 => STACK_SWAP_FSM_1_fsm_state_FSM_FFd3_358,
      I3 => STACK_DataPath_Stack_Register_1_Q(0),
      O => N120
    );
  STACK_DataPath_Demux_Swapper_1_Y_7_11 : LUT4
    generic map(
      INIT => X"0080"
    )
    port map (
      I0 => NUM_OUT_7_OBUF_85,
      I1 => STACK_OPERATION_FSM_fsm_state_FSM_FFd2_336,
      I2 => STACK_OPERATION_FSM_fsm_state_FSM_FFd1_333,
      I3 => STACK_OPERATION_FSM_fsm_state_FSM_FFd3_338,
      O => STACK_DataPath_Demux_Swapper_1_Y_7_1
    );
  STACK_DataPath_Demux_Swapper_1_Y_6_11 : LUT4
    generic map(
      INIT => X"0080"
    )
    port map (
      I0 => NUM_OUT_6_OBUF_84,
      I1 => STACK_OPERATION_FSM_fsm_state_FSM_FFd2_336,
      I2 => STACK_OPERATION_FSM_fsm_state_FSM_FFd1_333,
      I3 => STACK_OPERATION_FSM_fsm_state_FSM_FFd3_338,
      O => STACK_DataPath_Demux_Swapper_1_Y_6_1
    );
  STACK_DataPath_Demux_Swapper_1_Y_5_11 : LUT4
    generic map(
      INIT => X"0080"
    )
    port map (
      I0 => NUM_OUT_5_OBUF_83,
      I1 => STACK_OPERATION_FSM_fsm_state_FSM_FFd2_336,
      I2 => STACK_OPERATION_FSM_fsm_state_FSM_FFd1_333,
      I3 => STACK_OPERATION_FSM_fsm_state_FSM_FFd3_338,
      O => STACK_DataPath_Demux_Swapper_1_Y_5_1
    );
  STACK_DataPath_Demux_Swapper_1_Y_4_11 : LUT4
    generic map(
      INIT => X"0080"
    )
    port map (
      I0 => NUM_OUT_4_OBUF_82,
      I1 => STACK_OPERATION_FSM_fsm_state_FSM_FFd2_336,
      I2 => STACK_OPERATION_FSM_fsm_state_FSM_FFd1_333,
      I3 => STACK_OPERATION_FSM_fsm_state_FSM_FFd3_338,
      O => STACK_DataPath_Demux_Swapper_1_Y_4_1
    );
  STACK_DataPath_Demux_Swapper_1_Y_3_11 : LUT4
    generic map(
      INIT => X"0080"
    )
    port map (
      I0 => NUM_OUT_3_OBUF_81,
      I1 => STACK_OPERATION_FSM_fsm_state_FSM_FFd2_336,
      I2 => STACK_OPERATION_FSM_fsm_state_FSM_FFd1_333,
      I3 => STACK_OPERATION_FSM_fsm_state_FSM_FFd3_338,
      O => STACK_DataPath_Demux_Swapper_1_Y_3_1
    );
  STACK_DataPath_Demux_Swapper_1_Y_2_11 : LUT4
    generic map(
      INIT => X"0080"
    )
    port map (
      I0 => NUM_OUT_2_OBUF_80,
      I1 => STACK_OPERATION_FSM_fsm_state_FSM_FFd2_336,
      I2 => STACK_OPERATION_FSM_fsm_state_FSM_FFd1_333,
      I3 => STACK_OPERATION_FSM_fsm_state_FSM_FFd3_338,
      O => STACK_DataPath_Demux_Swapper_1_Y_2_1
    );
  STACK_DataPath_Demux_Swapper_1_Y_1_11 : LUT4
    generic map(
      INIT => X"0080"
    )
    port map (
      I0 => NUM_OUT_1_OBUF_79,
      I1 => STACK_OPERATION_FSM_fsm_state_FSM_FFd2_336,
      I2 => STACK_OPERATION_FSM_fsm_state_FSM_FFd1_333,
      I3 => STACK_OPERATION_FSM_fsm_state_FSM_FFd3_338,
      O => STACK_DataPath_Demux_Swapper_1_Y_1_1
    );
  STACK_DataPath_Demux_Swapper_1_Y_0_11 : LUT4
    generic map(
      INIT => X"0080"
    )
    port map (
      I0 => NUM_OUT_0_OBUF_78,
      I1 => STACK_OPERATION_FSM_fsm_state_FSM_FFd2_336,
      I2 => STACK_OPERATION_FSM_fsm_state_FSM_FFd1_333,
      I3 => STACK_OPERATION_FSM_fsm_state_FSM_FFd3_338,
      O => STACK_DataPath_Demux_Swapper_1_Y_0_1
    );
  STACK_DataPath_ADDER_SUBBER_1_Mxor_OVF_Result1_SW1_SW1 : LUT4
    generic map(
      INIT => X"AAA8"
    )
    port map (
      I0 => NUM_OUT_7_OBUF_85,
      I1 => STACK_ADD_SUB_UN_FSM_1_fsm_state_FSM_FFd4_233,
      I2 => STACK_SWAP_FSM_1_fsm_state_FSM_FFd2_357,
      I3 => STACK_SWAP_FSM_1_fsm_state_FSM_FFd3_358,
      O => N134
    );
  STACK_OPERATION_FSM_fsm_state_FSM_FFd1_1 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_5,
      D => STACK_OPERATION_FSM_fsm_state_FSM_FFd1_In_334,
      R => RST_IBUF_87,
      Q => STACK_OPERATION_FSM_fsm_state_FSM_FFd1_1_335
    );
  CLK_BUFGP : BUFGP
    port map (
      I => CLK,
      O => CLK_BUFGP_5
    );
  SSD_Counter125K_Mcount_temp_lut_0_INV_0 : INV
    port map (
      I => SSD_Counter125K_temp(0),
      O => SSD_Counter125K_Mcount_temp_lut(0)
    );
  STACK_TOS_Mcount_temp_xor_3_11_SW2_INV_0 : INV
    port map (
      I => STACK_TOS_temp(0),
      O => STACK_Result(0)
    );
  SSD_DataPath_FinalSegmentSelector_Mmux_SEG_2_f5_41 : MUXF5
    port map (
      I0 => N136,
      I1 => N137,
      S => SSD_Fsm_fsm_state_FSM_FFd1_201,
      O => SSD_VALUE_5_OBUF_226
    );
  SSD_DataPath_FinalSegmentSelector_Mmux_SEG_2_f5_41_F : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => SSD_Fsm_fsm_state_FSM_FFd2_203,
      I1 => SSD_DataPath_signal_DecoderOut_0_Q,
      I2 => SSD_DataPath_signal_DecoderOut_10_Q_193,
      O => N136
    );
  SSD_DataPath_FinalSegmentSelector_Mmux_SEG_2_f5_41_G : LUT4
    generic map(
      INIT => X"D782"
    )
    port map (
      I0 => SSD_Fsm_fsm_state_FSM_FFd2_203,
      I1 => signal_SEL(0),
      I2 => signal_SEL(1),
      I3 => SSD_DataPath_signal_DecoderOut_10_Q_193,
      O => N137
    );
  SSD_DataPath_FinalSegmentSelector_Mmux_SEG_2_f5_11_SW0 : MUXF5
    port map (
      I0 => N138,
      I1 => N139,
      S => STACK_OPERATION_FSM_fsm_state_FSM_FFd3_338,
      O => N124
    );
  SSD_DataPath_FinalSegmentSelector_Mmux_SEG_2_f5_11_SW0_F : LUT4
    generic map(
      INIT => X"FF5E"
    )
    port map (
      I0 => SSD_Fsm_fsm_state_FSM_FFd1_201,
      I1 => N122,
      I2 => STACK_OPERATION_FSM_fsm_state_FSM_FFd1_333,
      I3 => STACK_OPERATION_FSM_fsm_state_FSM_FFd2_336,
      O => N138
    );
  SSD_DataPath_FinalSegmentSelector_Mmux_SEG_2_f5_11_SW0_G : LUT4
    generic map(
      INIT => X"D5C1"
    )
    port map (
      I0 => SSD_Fsm_fsm_state_FSM_FFd1_201,
      I1 => STACK_OPERATION_FSM_fsm_state_FSM_FFd1_333,
      I2 => STACK_OPERATION_FSM_fsm_state_FSM_FFd2_336,
      I3 => N122,
      O => N139
    );
  STACK_FSM_fsm_state_FSM_FFd2_In301 : LUT4
    generic map(
      INIT => X"0004"
    )
    port map (
      I0 => STACK_SPGEN_BTN0_currentS_FSM_FFd2_344,
      I1 => STACK_FSM_fsm_state_FSM_FFd2_324,
      I2 => STACK_SWAP_FSM_1_fsm_state_FSM_FFd1_356,
      I3 => STACK_ADD_SUB_UN_FSM_1_fsm_state_FSM_FFd2_230,
      O => STACK_FSM_fsm_state_FSM_FFd2_In301_327
    );
  STACK_FSM_fsm_state_FSM_FFd2_In30_f5 : MUXF5
    port map (
      I0 => STACK_FSM_fsm_state_FSM_FFd2_In301_327,
      I1 => N0,
      S => STACK_SWAP_FSM_1_fsm_state_FSM_FFd2_357,
      O => STACK_FSM_fsm_state_FSM_FFd2_In30
    );
  STACK_FSM_fsm_state_FSM_FFd1_In61 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => STACK_SWAP_FSM_1_fsm_state_FSM_FFd1_356,
      I1 => STACK_ADD_SUB_UN_FSM_1_fsm_state_FSM_FFd2_230,
      I2 => STACK_SPGEN_BTN0_currentS_FSM_FFd2_344,
      I3 => STACK_FSM_fsm_state_FSM_FFd2_324,
      O => STACK_FSM_fsm_state_FSM_FFd1_In61_323
    );
  STACK_FSM_fsm_state_FSM_FFd1_In6_f5 : MUXF5
    port map (
      I0 => STACK_FSM_fsm_state_FSM_FFd1_In61_323,
      I1 => SSD_DataPath_signal_DecoderOut_14_Q,
      S => STACK_SWAP_FSM_1_fsm_state_FSM_FFd2_357,
      O => STACK_FSM_fsm_state_FSM_FFd1_In6
    );
  SSD_DataPath_FinalSegmentSelector_Mmux_SEG_2_f5_511 : LUT4
    generic map(
      INIT => X"76FE"
    )
    port map (
      I0 => SSD_Fsm_fsm_state_FSM_FFd1_201,
      I1 => SSD_Fsm_fsm_state_FSM_FFd2_203,
      I2 => SSD_DataPath_signal_DecoderOut_0_Q,
      I3 => STACK_OPERATION_FSM_fsm_state_FSM_FFd3_338,
      O => SSD_DataPath_FinalSegmentSelector_Mmux_SEG_2_f5_51
    );
  SSD_DataPath_FinalSegmentSelector_Mmux_SEG_2_f5_512 : LUT4
    generic map(
      INIT => X"76FE"
    )
    port map (
      I0 => SSD_Fsm_fsm_state_FSM_FFd1_201,
      I1 => SSD_Fsm_fsm_state_FSM_FFd2_203,
      I2 => SSD_DataPath_signal_DecoderOut_0_Q,
      I3 => STACK_OPERATION_FSM_fsm_state_FSM_FFd2_336,
      O => SSD_DataPath_FinalSegmentSelector_Mmux_SEG_2_f5_511_183
    );
  SSD_DataPath_FinalSegmentSelector_Mmux_SEG_2_f5_51_f5 : MUXF5
    port map (
      I0 => SSD_DataPath_FinalSegmentSelector_Mmux_SEG_2_f5_511_183,
      I1 => SSD_DataPath_FinalSegmentSelector_Mmux_SEG_2_f5_51,
      S => STACK_OPERATION_FSM_fsm_state_FSM_FFd1_333,
      O => SSD_VALUE_6_OBUF_227
    );
  STACK_TOS_Mcount_temp_xor_3_121 : LUT4
    generic map(
      INIT => X"7FFE"
    )
    port map (
      I0 => STACK_TOS_temp(0),
      I1 => STACK_TOS_temp(1),
      I2 => STACK_TOS_temp(2),
      I3 => STACK_signal_FSMOut_UD,
      O => STACK_TOS_Mcount_temp_xor_3_12
    );
  STACK_TOS_Mcount_temp_xor_3_122 : LUT4
    generic map(
      INIT => X"8001"
    )
    port map (
      I0 => STACK_TOS_temp(0),
      I1 => STACK_TOS_temp(1),
      I2 => STACK_TOS_temp(2),
      I3 => STACK_signal_FSMOut_UD,
      O => STACK_TOS_Mcount_temp_xor_3_121_363
    );
  STACK_TOS_Mcount_temp_xor_3_12_f5 : MUXF5
    port map (
      I0 => STACK_TOS_Mcount_temp_xor_3_121_363,
      I1 => STACK_TOS_Mcount_temp_xor_3_12,
      S => STACK_TOS_temp(3),
      O => STACK_Result(3)
    );
  STACK_DataPath_Mux_Pre_Stack_1_X_7_3811 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => STACK_DataPath_Demux_Swapper_1_X_and0000,
      I1 => STACK_DataPath_Cout,
      I2 => N106,
      O => STACK_DataPath_Mux_Pre_Stack_1_X_7_381
    );
  STACK_DataPath_Mux_Pre_Stack_1_X_7_381_f5 : MUXF5
    port map (
      I0 => STACK_DataPath_Mux_Pre_Stack_1_X_7_381,
      I1 => NUM_IN_7_IBUF_69,
      S => STACK_DataPath_Mux_Pre_Stack_1_X_cmp_eq0000,
      O => STACK_signal_stackIn(7)
    );
  STACK_DataPath_Mux_Pre_Stack_1_X_6_3811 : LUT4
    generic map(
      INIT => X"E4F5"
    )
    port map (
      I0 => STACK_DataPath_Mux_Pre_Stack_1_X_cmp_eq0000,
      I1 => N108,
      I2 => NUM_IN_6_IBUF_68,
      I3 => STACK_DataPath_Demux_Swapper_1_X_and0000,
      O => STACK_DataPath_Mux_Pre_Stack_1_X_6_381
    );
  STACK_DataPath_Mux_Pre_Stack_1_X_6_3812 : LUT4
    generic map(
      INIT => X"D888"
    )
    port map (
      I0 => STACK_DataPath_Mux_Pre_Stack_1_X_cmp_eq0000,
      I1 => NUM_IN_6_IBUF_68,
      I2 => N108,
      I3 => STACK_DataPath_Demux_Swapper_1_X_and0000,
      O => STACK_DataPath_Mux_Pre_Stack_1_X_6_3811_280
    );
  STACK_DataPath_Mux_Pre_Stack_1_X_6_381_f5 : MUXF5
    port map (
      I0 => STACK_DataPath_Mux_Pre_Stack_1_X_6_3811_280,
      I1 => STACK_DataPath_Mux_Pre_Stack_1_X_6_381,
      S => STACK_DataPath_signal_result_adder(6),
      O => STACK_signal_stackIn(6)
    );
  STACK_DataPath_Mux_Pre_Stack_1_X_5_3811 : LUT4
    generic map(
      INIT => X"E4F5"
    )
    port map (
      I0 => STACK_DataPath_Mux_Pre_Stack_1_X_cmp_eq0000,
      I1 => N110,
      I2 => NUM_IN_5_IBUF_67,
      I3 => STACK_DataPath_Demux_Swapper_1_X_and0000,
      O => STACK_DataPath_Mux_Pre_Stack_1_X_5_381
    );
  STACK_DataPath_Mux_Pre_Stack_1_X_5_3812 : LUT4
    generic map(
      INIT => X"D888"
    )
    port map (
      I0 => STACK_DataPath_Mux_Pre_Stack_1_X_cmp_eq0000,
      I1 => NUM_IN_5_IBUF_67,
      I2 => N110,
      I3 => STACK_DataPath_Demux_Swapper_1_X_and0000,
      O => STACK_DataPath_Mux_Pre_Stack_1_X_5_3811_278
    );
  STACK_DataPath_Mux_Pre_Stack_1_X_5_381_f5 : MUXF5
    port map (
      I0 => STACK_DataPath_Mux_Pre_Stack_1_X_5_3811_278,
      I1 => STACK_DataPath_Mux_Pre_Stack_1_X_5_381,
      S => STACK_DataPath_signal_result_adder(5),
      O => STACK_signal_stackIn(5)
    );
  STACK_DataPath_Mux_Pre_Stack_1_X_4_3811 : LUT4
    generic map(
      INIT => X"E4F5"
    )
    port map (
      I0 => STACK_DataPath_Mux_Pre_Stack_1_X_cmp_eq0000,
      I1 => N112,
      I2 => NUM_IN_4_IBUF_66,
      I3 => STACK_DataPath_Demux_Swapper_1_X_and0000,
      O => STACK_DataPath_Mux_Pre_Stack_1_X_4_381
    );
  STACK_DataPath_Mux_Pre_Stack_1_X_4_3812 : LUT4
    generic map(
      INIT => X"D888"
    )
    port map (
      I0 => STACK_DataPath_Mux_Pre_Stack_1_X_cmp_eq0000,
      I1 => NUM_IN_4_IBUF_66,
      I2 => N112,
      I3 => STACK_DataPath_Demux_Swapper_1_X_and0000,
      O => STACK_DataPath_Mux_Pre_Stack_1_X_4_3811_276
    );
  STACK_DataPath_Mux_Pre_Stack_1_X_4_381_f5 : MUXF5
    port map (
      I0 => STACK_DataPath_Mux_Pre_Stack_1_X_4_3811_276,
      I1 => STACK_DataPath_Mux_Pre_Stack_1_X_4_381,
      S => STACK_DataPath_signal_result_adder(4),
      O => STACK_signal_stackIn(4)
    );
  STACK_DataPath_Mux_Pre_Stack_1_X_3_3811 : LUT4
    generic map(
      INIT => X"E4F5"
    )
    port map (
      I0 => STACK_DataPath_Mux_Pre_Stack_1_X_cmp_eq0000,
      I1 => N114,
      I2 => NUM_IN_3_IBUF_65,
      I3 => STACK_DataPath_Demux_Swapper_1_X_and0000,
      O => STACK_DataPath_Mux_Pre_Stack_1_X_3_381
    );
  STACK_DataPath_Mux_Pre_Stack_1_X_3_3812 : LUT4
    generic map(
      INIT => X"D888"
    )
    port map (
      I0 => STACK_DataPath_Mux_Pre_Stack_1_X_cmp_eq0000,
      I1 => NUM_IN_3_IBUF_65,
      I2 => N114,
      I3 => STACK_DataPath_Demux_Swapper_1_X_and0000,
      O => STACK_DataPath_Mux_Pre_Stack_1_X_3_3811_274
    );
  STACK_DataPath_Mux_Pre_Stack_1_X_3_381_f5 : MUXF5
    port map (
      I0 => STACK_DataPath_Mux_Pre_Stack_1_X_3_3811_274,
      I1 => STACK_DataPath_Mux_Pre_Stack_1_X_3_381,
      S => STACK_DataPath_signal_result_adder(3),
      O => STACK_signal_stackIn(3)
    );
  STACK_DataPath_Mux_Pre_Stack_1_X_2_3811 : LUT4
    generic map(
      INIT => X"E4F5"
    )
    port map (
      I0 => STACK_DataPath_Mux_Pre_Stack_1_X_cmp_eq0000,
      I1 => N116,
      I2 => NUM_IN_2_IBUF_64,
      I3 => STACK_DataPath_Demux_Swapper_1_X_and0000,
      O => STACK_DataPath_Mux_Pre_Stack_1_X_2_381
    );
  STACK_DataPath_Mux_Pre_Stack_1_X_2_3812 : LUT4
    generic map(
      INIT => X"D888"
    )
    port map (
      I0 => STACK_DataPath_Mux_Pre_Stack_1_X_cmp_eq0000,
      I1 => NUM_IN_2_IBUF_64,
      I2 => N116,
      I3 => STACK_DataPath_Demux_Swapper_1_X_and0000,
      O => STACK_DataPath_Mux_Pre_Stack_1_X_2_3811_272
    );
  STACK_DataPath_Mux_Pre_Stack_1_X_2_381_f5 : MUXF5
    port map (
      I0 => STACK_DataPath_Mux_Pre_Stack_1_X_2_3811_272,
      I1 => STACK_DataPath_Mux_Pre_Stack_1_X_2_381,
      S => STACK_DataPath_signal_result_adder(2),
      O => STACK_signal_stackIn(2)
    );
  STACK_DataPath_Mux_Pre_Stack_1_X_1_3811 : LUT4
    generic map(
      INIT => X"E4F5"
    )
    port map (
      I0 => STACK_DataPath_Mux_Pre_Stack_1_X_cmp_eq0000,
      I1 => N118,
      I2 => NUM_IN_1_IBUF_63,
      I3 => STACK_DataPath_Demux_Swapper_1_X_and0000,
      O => STACK_DataPath_Mux_Pre_Stack_1_X_1_381
    );
  STACK_DataPath_Mux_Pre_Stack_1_X_1_3812 : LUT4
    generic map(
      INIT => X"D888"
    )
    port map (
      I0 => STACK_DataPath_Mux_Pre_Stack_1_X_cmp_eq0000,
      I1 => NUM_IN_1_IBUF_63,
      I2 => N118,
      I3 => STACK_DataPath_Demux_Swapper_1_X_and0000,
      O => STACK_DataPath_Mux_Pre_Stack_1_X_1_3811_270
    );
  STACK_DataPath_Mux_Pre_Stack_1_X_1_381_f5 : MUXF5
    port map (
      I0 => STACK_DataPath_Mux_Pre_Stack_1_X_1_3811_270,
      I1 => STACK_DataPath_Mux_Pre_Stack_1_X_1_381,
      S => STACK_DataPath_signal_result_adder(1),
      O => STACK_signal_stackIn(1)
    );
  STACK_DataPath_Mux_Pre_Stack_1_X_0_3811 : LUT4
    generic map(
      INIT => X"E4F5"
    )
    port map (
      I0 => STACK_DataPath_Mux_Pre_Stack_1_X_cmp_eq0000,
      I1 => N120,
      I2 => NUM_IN_0_IBUF_62,
      I3 => STACK_DataPath_Demux_Swapper_1_X_and0000,
      O => STACK_DataPath_Mux_Pre_Stack_1_X_0_381
    );
  STACK_DataPath_Mux_Pre_Stack_1_X_0_3812 : LUT4
    generic map(
      INIT => X"D888"
    )
    port map (
      I0 => STACK_DataPath_Mux_Pre_Stack_1_X_cmp_eq0000,
      I1 => NUM_IN_0_IBUF_62,
      I2 => N120,
      I3 => STACK_DataPath_Demux_Swapper_1_X_and0000,
      O => STACK_DataPath_Mux_Pre_Stack_1_X_0_3811_268
    );
  STACK_DataPath_Mux_Pre_Stack_1_X_0_381_f5 : MUXF5
    port map (
      I0 => STACK_DataPath_Mux_Pre_Stack_1_X_0_3811_268,
      I1 => STACK_DataPath_Mux_Pre_Stack_1_X_0_381,
      S => STACK_DataPath_signal_result_adder(0),
      O => STACK_signal_stackIn(0)
    );
  STACK_FSM_EN10 : LUT4_L
    generic map(
      INIT => X"22F2"
    )
    port map (
      I0 => STACK_FSM_fsm_state_FSM_FFd2_In50_328,
      I1 => STACK_FSM_fsm_state_FSM_FFd1_319,
      I2 => STACK_N7,
      I3 => STACK_FSM_fsm_state_FSM_FFd2_324,
      LO => STACK_FSM_EN10_318
    );
  STACK_ADD_SUB_UN_FSM_1_OP_SW0 : LUT2_L
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => STACK_ADD_SUB_UN_FSM_1_fsm_state_FSM_FFd3_231,
      I1 => STACK_ADD_SUB_UN_FSM_1_fsm_state_FSM_FFd2_230,
      LO => N22
    );
  STACK_FSM_EN1 : LUT4_D
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => STACK_SWAP_FSM_1_fsm_state_FSM_FFd3_358,
      I1 => STACK_ADD_SUB_UN_FSM_1_fsm_state_FSM_FFd4_233,
      I2 => STACK_SPGEN_BTN1_currentS_FSM_FFd2_348,
      I3 => N26,
      LO => N140,
      O => STACK_N7
    );
  STACK_FSM_UD : LUT4_D
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => STACK_OPERATION_FSM_fsm_state_FSM_FFd3_338,
      I1 => STACK_OPERATION_FSM_fsm_state_FSM_FFd2_336,
      I2 => STACK_OPERATION_FSM_fsm_state_FSM_FFd1_333,
      I3 => N31,
      LO => N141,
      O => STACK_signal_FSMOut_UD
    );
  STACK_DataPath_ADDER_SUBBER_1_Mxor_OVF_Result1 : LUT4_L
    generic map(
      INIT => X"F20D"
    )
    port map (
      I0 => STACK_DataPath_Stack_Register_1_Q(7),
      I1 => STACK_DataPath_Mux_A_ADDER_1_X_and0000,
      I2 => STACK_DataPath_signal_B_adder_7_Q,
      I3 => STACK_DataPath_Cout,
      LO => STACK_signal_OVF
    );
  STACK_DataPath_Mux_A_ADDER_1_X_and00001 : LUT3_D
    generic map(
      INIT => X"02"
    )
    port map (
      I0 => STACK_OPERATION_FSM_fsm_state_FSM_FFd1_1_335,
      I1 => STACK_OPERATION_FSM_fsm_state_FSM_FFd3_338,
      I2 => STACK_OPERATION_FSM_fsm_state_FSM_FFd2_336,
      LO => N142,
      O => STACK_DataPath_Mux_A_ADDER_1_X_and0000
    );
  STACK_DataPath_Mux_B_ADDER_1_X_0_11 : LUT4_D
    generic map(
      INIT => X"CF8A"
    )
    port map (
      I0 => STACK_ADD_SUB_UN_FSM_1_fsm_state_FSM_FFd4_233,
      I1 => STACK_OPERATION_FSM_fsm_state_FSM_FFd3_338,
      I2 => STACK_OPERATION_FSM_fsm_state_FSM_FFd1_1_335,
      I3 => STACK_signal_TOS_SELECTOR(0),
      LO => N143,
      O => STACK_DataPath_N01
    );
  STACK_DataPath_ADDER_SUBBER_1_Mxor_OVF_Result1_SW1 : LUT4_L
    generic map(
      INIT => X"57FF"
    )
    port map (
      I0 => STACK_OPERATION_FSM_fsm_state_FSM_FFd3_338,
      I1 => N134,
      I2 => STACK_DataPath_Stack_Register_1_Q(7),
      I3 => STACK_ADD_SUB_UN_FSM_1_fsm_state_FSM_FFd2_230,
      LO => N78
    );
  STACK_FlipFlopStack_2_Mshreg_Q : SRL16
    generic map(
      INIT => X"0000"
    )
    port map (
      A0 => N0,
      A1 => N0,
      A2 => N0,
      A3 => N0,
      CLK => CLK_BUFGP_5,
      D => STACK_SPGEN_BTN0_currentS_FSM_FFd2_344,
      Q => STACK_FlipFlopStack_2_Mshreg_Q_329
    );
  STACK_FlipFlopStack_2_Q : FD
    port map (
      C => CLK_BUFGP_5,
      D => STACK_FlipFlopStack_2_Mshreg_Q_329,
      Q => STACK_FlipFlopStack_2_Q_330
    );
  STACK_Stack_1 : Stack
    port map (
      clka => CLK_BUFGP_5,
      douta(7) => NUM_OUT_7_OBUF_85,
      douta(6) => NUM_OUT_6_OBUF_84,
      douta(5) => NUM_OUT_5_OBUF_83,
      douta(4) => NUM_OUT_4_OBUF_82,
      douta(3) => NUM_OUT_3_OBUF_81,
      douta(2) => NUM_OUT_2_OBUF_80,
      douta(1) => NUM_OUT_1_OBUF_79,
      douta(0) => NUM_OUT_0_OBUF_78,
      wea(0) => STACK_FlipFlopStack_2_Q_330,
      addra(3) => STACK_TOS_temp(3),
      addra(2) => STACK_TOS_temp(2),
      addra(1) => STACK_TOS_temp(1),
      addra(0) => STACK_TOS_temp(0),
      dina(7) => STACK_signal_stackIn(7),
      dina(6) => STACK_signal_stackIn(6),
      dina(5) => STACK_signal_stackIn(5),
      dina(4) => STACK_signal_stackIn(4),
      dina(3) => STACK_signal_stackIn(3),
      dina(2) => STACK_signal_stackIn(2),
      dina(1) => STACK_signal_stackIn(1),
      dina(0) => STACK_signal_stackIn(0)
    );

end Structure;

-- synthesis translate_on
