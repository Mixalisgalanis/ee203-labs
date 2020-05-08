library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity STACK_CONTROLLER is
    Port ( CLK : in  STD_LOGIC;
           RST : in  STD_LOGIC;
           BTN0 : in  STD_LOGIC;
           BTN1 : in  STD_LOGIC;
			  MODE : in STD_LOGIC;
           NUM_IN : in  STD_LOGIC_VECTOR (7 downto 0);
           NUM_OUT : out  STD_LOGIC_VECTOR (7 downto 0);
			  STACK_STATE : out STD_LOGIC_VECTOR (1 downto 0);
			  OpOut : out STD_LOGIC;
			  SEL : out STD_LOGIC_VECTOR (1 downto 0);
			  A_OVF : out STD_LOGIC);
end STACK_CONTROLLER;

architecture Structural of STACK_CONTROLLER is

signal signal_btn0_pulse, signal_btn1_pulse, signal_mode_pulse : STD_LOGIC; --Needed signals for clock pulses
signal signal_TOS : STD_LOGIC_VECTOR (3 downto 0);
signal signal_stack_full, signal_stack_empty : STD_LOGIC;
signal signal_FSMOut_EN, signal_FSMOut_UD : STD_LOGIC;
signal signal_ff_stack, signal_ff_asu_fsm_push, signal_ff_swap_fsm_push, signal_single_ff_btn0, signal_single_ff_btn1 : STD_LOGIC;
signal signal_OpFSM_Mode : STD_LOGIC_VECTOR (1 downto 0);
signal signal_OpFSM_OpOut : STD_LOGIC;
signal signal_OVF : STD_LOGIC;

signal signal_btn0_pulse_or_btn1_pulse : STD_LOGIC;

signal signal_ASU_TOS_SELECTOR : STD_LOGIC_VECTOR (1 downto 0);
signal signal_SWAP_TOS_SELECTOR : STD_LOGIC_VECTOR (1 downto 0);
signal signal_Final_TOS_SELECTOR : STD_LOGIC_VECTOR (1 downto 0);


signal signal_OPERATION : STD_LOGIC;
signal signal_stackOut : STD_LOGIC_VECTOR (7 downto 0);
signal signal_stackIn : STD_LOGIC_VECTOR (7 downto 0);

signal signal_PUSH_ASU_FSM : STD_LOGIC;
signal signal_PUSH_SWAP_FSM : STD_LOGIC;

signal signal_POP_ASU_FSM : STD_LOGIC;
signal signal_POP_SWAP_FSM : STD_LOGIC;


signal signal_true_btn0_pulse : STD_LOGIC;
signal signal_true_btn0_pulse_wea : STD_LOGIC;
signal signal_true_btn1_pulse : STD_LOGIC;


signal signal_FINAL_PUSH_OR: STD_LOGIC;
signal signal_FINAL_PUSH_OR_WEA: STD_LOGIC;
signal signal_FINAL_POP_OR: STD_LOGIC;


Component singlepulsegen is
Port ( clk 		: in std_logic;		
       rst 		: in std_logic;				
       input 	: in std_logic;		
       output 	: out std_logic		
      );
end Component;

Component StackFSM is
Port ( CLK 		: in std_logic;		
       RST 		: in std_logic;				
       BTN0 	: in std_logic;
		 BTN1 	: in std_logic;
		 FULL 	: in std_logic;
		 EMPTY 	: in std_logic;
       EN	: out std_logic;
		 UD	: out  std_logic;
		 STACK_STATE : out std_logic_vector (1 downto 0)
      );
end Component;

Component OperationFSM is
    Port ( BTN0 : in  STD_LOGIC;
           BTN1 : in  STD_LOGIC;
           MODE : in  STD_LOGIC;
			  OVF : in STD_LOGIC;
			  CLK : in STD_LOGIC;
           RST : in  STD_LOGIC;
           OPOut : out  STD_LOGIC;
           SEL : out  STD_LOGIC_VECTOR (1 downto 0));
end Component;


Component Comparator_4Bit is
Port ( A 		: in  STD_LOGIC_VECTOR (3 downto 0);
       B 		: in  STD_LOGIC_VECTOR (3 downto 0);
       EQ 		: out  STD_LOGIC
      );
end Component;

Component Counter is
Port ( CLK : in  STD_LOGIC;
       RST : in  STD_LOGIC;
		 EN  : in  STD_LOGIC;
		 U_D : in STD_LOGIC;
       Q : out  STD_LOGIC_VECTOR(3 downto 0)
			  );
end Component;

Component FlipFlop is
    Port ( D : in  STD_LOGIC;
			  CLK : in STD_LOGIC;
           Q : out  STD_LOGIC);
end Component;

Component Double_FlipFlop is
    Port ( D : in  STD_LOGIC;
			  CLK : in STD_LOGIC;
           Q : out  STD_LOGIC);
end Component;

Component Stack is
Port ( clka : in STD_LOGIC;
		 wea : in STD_LOGIC_VECTOR(0 downto 0);
		 addra: in STD_LOGIC_VECTOR(3 downto 0);
		 dina: in STD_LOGIC_VECTOR(7 downto 0);
		 douta: out STD_LOGIC_VECTOR(7 downto 0)
		 );
end Component;

Component Stack_DataPath is
    Port ( NUM_IN : in  STD_LOGIC_VECTOR (7 downto 0);
           DOUTA : in  STD_LOGIC_VECTOR (7 downto 0);
           SEL : in  STD_LOGIC_VECTOR (1 downto 0);
           OPOut : in  STD_LOGIC;
           PART_POP : in  STD_LOGIC_VECTOR (1 downto 0);
           M : in  STD_LOGIC;
			  CLK : in STD_LOGIC;
			  Cout : out STD_LOGIC;
           DINA : out  STD_LOGIC_VECTOR (7 downto 0);
           OVF : out  STD_LOGIC);
end Component;

Component SWAP_FSM is
    Port ( SEL : in  STD_LOGIC_VECTOR (1 downto 0);
           OPOut : in  STD_LOGIC;
           RST : in  STD_LOGIC;
           CLK : in  STD_LOGIC;
           PUSH : out  STD_LOGIC;
			  BTN_PULSE : in STD_LOGIC;
			  TOS_SELECTOR : out STD_LOGIC_VECTOR (1 downto 0);
           POP : out  STD_LOGIC);
end Component;

Component ADD_SUB_UN_FSM is
    Port ( SEL : in  STD_LOGIC_VECTOR (1 downto 0);
           OPOut : in  STD_LOGIC;
           CLK : in  STD_LOGIC;
           RST : in  STD_LOGIC;
			  OVF : in STD_LOGIC;
           POP : out  STD_LOGIC;
			  PUSH : out STD_LOGIC;
			  BTN_PULSE : in STD_LOGIC;
			  TOS_SELECTOR : out STD_LOGIC_VECTOR (1 downto 0);
           A_OVF : out  STD_LOGIC;
           OP : out  STD_LOGIC);
end Component;

Component Mux_True_Btn_Pulse is
    Port ( BTN_PULSE : in  STD_LOGIC;
           SEL : in  STD_LOGIC_VECTOR (1 downto 0);
           OPOut : in  STD_LOGIC;
           TRUE_PULSE : out  STD_LOGIC);
end component;


Component Mux_FinalTosSelector is
    Port ( TOS_SELECTOR_1 : in  STD_LOGIC_VECTOR (1 downto 0);
           TOS_SELECTOR_2 : in  STD_LOGIC_VECTOR (1 downto 0);
           SEL : in  STD_LOGIC_VECTOR (1 downto 0);
           OPOut : in  STD_LOGIC;
           X : out  STD_LOGIC_VECTOR (1 downto 0));
end COmponent;




begin

signal_FINAL_PUSH_OR <= (signal_true_btn0_pulse OR signal_PUSH_ASU_FSM OR signal_PUSH_SWAP_FSM);
signal_FINAL_PUSH_OR_WEA <= (signal_true_btn0_pulse_wea OR signal_ff_asu_fsm_push OR signal_ff_swap_fsm_push);
signal_FINAL_POP_OR <= (signal_true_btn1_pulse OR signal_POP_ASU_FSM OR signal_POP_SWAP_FSM);



SPGEN_BTN0: singlepulsegen port map(	clk => CLK,
											rst => RST,
											input => BTN0,
											output => signal_btn0_pulse				
										);

SPGEN_BTN1: singlepulsegen port map(	clk => CLK,
											rst => RST,
											input => BTN1,
											output => signal_btn1_pulse				
										);

signal_btn0_pulse_or_btn1_pulse <= signal_single_ff_btn1 OR signal_single_ff_btn0;


FF_BTN0 : flipflop port map ( D => signal_btn0_pulse,
										CLK => CLK,
										Q => signal_single_ff_btn0);
										
										
FF_BTN1 : flipflop port map ( D => signal_btn1_pulse,
										CLK => CLK,
										Q => signal_single_ff_btn1);




SPGEN_MODE: singlepulsegen port map(	clk => CLK,
											rst => RST,
											input => MODE,
											output => signal_mode_pulse				
										);


TOS: Counter port map( CLK => CLK,
										RST => RST,
										U_D => signal_FSMOut_UD,
										EN => signal_FSMOut_EN,
										Q => signal_TOS
										);
										
FullComparator: Comparator_4Bit port map( A => "1011",
														 B => signal_TOS,
														 EQ => signal_stack_full
														 );
									
EmptyComparator: Comparator_4Bit port map( A => "0000",
														 B => signal_TOS,
														 EQ => signal_stack_empty
														 );

FlipFlopStack: Double_FlipFlop port map( D => signal_btn0_pulse,
												CLK => CLK,
												Q => signal_ff_stack
												);

FlipFlop_ASU_FSM_Push: Double_FlipFlop port map( D => signal_PUSH_ASU_FSM,
															CLK => CLK,
															Q => signal_ff_asu_fsm_push
															);

FlipFlop_SWAP_FSM_Push: Double_FlipFlop port map( D => signal_PUSH_SWAP_FSM,
															CLK => CLK,
															Q => signal_ff_swap_fsm_push
															);
														 
Stack_1: Stack port map( clka => CLK,
							  wea(0) => signal_FINAL_PUSH_OR_WEA,
							  addra => signal_TOS,
							  dina => signal_stackIn,
							  douta => signal_stackOut
							  );

PUSH_TRUE_PULSE : Mux_True_Btn_Pulse port map (BTN_PULSE => signal_btn0_pulse,
																SEL => signal_OpFSM_Mode,
																OPOut => signal_OpFSM_OpOut,
																TRUE_PULSE => signal_true_btn0_pulse);

PUSH_TRUE_PULSE_WEA : Mux_True_Btn_Pulse port map (BTN_PULSE => signal_ff_stack,
																SEL => signal_OpFSM_Mode,
																OPOut => signal_OpFSM_OpOut,
																TRUE_PULSE => signal_true_btn0_pulse_wea);
																
POP_TRUE_PULSE : Mux_True_Btn_Pulse port map (BTN_PULSE => signal_btn1_pulse,
																SEL => signal_OpFSM_Mode,
																OPOut => signal_OpFSM_OpOut,
																TRUE_PULSE => signal_true_btn1_pulse);
														 
														 
FSM: StackFSM port map ( CLK => CLK,
								 RST => RST,
								 BTN0 => signal_FINAL_PUSH_OR,
								 BTN1 => signal_FINAL_POP_OR,
								 FULL => signal_stack_full,
								 EMPTY => signal_stack_empty,
								 EN => signal_FSMOut_EN,
								 UD => signal_FSMOut_UD,
								 STACK_STATE => STACK_STATE
								);


OPERATION_FSM : OperationFSM port map (CLK => CLK,
													RST => RST,
													OVF => signal_OVF,
													BTN0 => signal_btn0_pulse,
													BTN1 => signal_btn1_pulse,
													MODE => signal_mode_pulse,
													OPOut => signal_OpFSM_OpOut,
													SEL => signal_OpFSM_Mode
													);

NUM_OUT <= signal_stackOut;											
SEL <= signal_OpFSM_Mode;
OPOut <= signal_OpFSM_OpOut;
													

ADD_SUB_UN_FSM_1 : ADD_SUB_UN_FSM port map(SEL => signal_OpFSM_Mode,
														  OPOut => signal_OpFSM_OpOut,
														  CLK=> CLK,
														  RST=> RST,
														  OVF=> signal_OVF,
														  POP=> signal_POP_ASU_FSM,
														  PUSH => signal_PUSH_ASU_FSM,
														  BTN_PULSE => signal_btn0_pulse_or_btn1_pulse,
														  TOS_SELECTOR => signal_ASU_TOS_SELECTOR,
														  A_OVF=> A_OVF,
														  OP=> signal_OPERATION);

SWAP_FSM_1 : SWAP_FSM port map( SEL => signal_OpFSM_Mode,
											OPOut => signal_OpFSM_OpOut,
											CLK=> CLK,
											RST=> RST,
											PUSH => signal_PUSH_SWAP_FSM,
											BTN_PULSE => signal_single_ff_btn1,
											TOS_SELECTOR => signal_SWAP_TOS_SELECTOR,
											POP => signal_POP_SWAP_FSM);


DataPath : Stack_DataPath port map(NUM_IN => NUM_IN,
												SEL => signal_OpFSM_Mode, 
												DOUTA => signal_stackOut,
												OPOut => signal_OpFSM_OpOut,
												M => signal_OPERATION,
												PART_POP => signal_Final_TOS_SELECTOR,
												CLK => CLK,
												DINA => signal_stackIn, 
												OVF => signal_OVF
												);



Final_TOS_SELECTOR : Mux_FinalTosSelector port map (TOS_SELECTOR_1 => signal_ASU_TOS_SELECTOR,
																	TOS_SELECTOR_2 => signal_SWAP_TOS_SELECTOR,
																	SEL => signal_OpFSM_Mode,
																	OPOut => signal_OpFSM_OpOut,
																	X => signal_Final_TOS_SELECTOR);

end Structural;

