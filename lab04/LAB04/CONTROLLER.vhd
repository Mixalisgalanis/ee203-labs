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
			  SEL : out STD_LOGIC_VECTOR (1 downto 0));
end STACK_CONTROLLER;

architecture Structural of STACK_CONTROLLER is

signal signal_btn0_pulse, signal_btn1_pulse, signal_mode_pulse : STD_LOGIC; --Needed signals for clock pulses
signal signal_TOS : STD_LOGIC_VECTOR (3 downto 0);
--signal signal_TOS_1 : STD_LOGIC_VECTOR (3 downto 0);
signal signal_stack_full, signal_stack_empty : STD_LOGIC;
signal signal_FSMOut_EN, signal_FSMOut_UD : STD_LOGIC;
signal signal_ff_stack_1,signal_ff_stack_2 : STD_LOGIC;
--signal signal_ff_counter: STD_LOGIC;
signal signal_OpFSM_Mode : STD_LOGIC_VECTOR (1 downto 0);


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
		 MODE		: in std_logic_vector (1 downto 0);
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

Component Stack is
Port ( clka : in STD_LOGIC;
		 wea : in STD_LOGIC_VECTOR(0 downto 0);
		 addra: in STD_LOGIC_VECTOR(3 downto 0);
		 dina: in STD_LOGIC_VECTOR(7 downto 0);
		 douta: out STD_LOGIC_VECTOR(7 downto 0)
		 );
end Component;

begin

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


--FlipFlopCounter: FlipFlop port map( D => signal_FSMOut_EN,
--												CLK => CLK,
--												Q => signal_ff_counter
--												);


--TOS_1: Counter port map( CLK => CLK,
--										RST => RST,
--										U_D => signal_FSMOut_UD,
--										EN => signal_ff_counter,
--										Q => signal_TOS_1
--										);
										
										
FullComparator: Comparator_4Bit port map( A => "1011",
														 B => signal_TOS,
														 EQ => signal_stack_full
														 );
									
EmptyComparator: Comparator_4Bit port map( A => "0000",
														 B => signal_TOS,
														 EQ => signal_stack_empty
														 );

FlipFlopStack_1: FlipFlop port map( D => signal_btn0_pulse,
												CLK => CLK,
												Q => signal_ff_stack_1
												);
												
FlipFlopStack_2: FlipFlop port map( D => signal_ff_stack_1,
												CLK => CLK,
												Q => signal_ff_stack_2
												);


														 
Stack_1: Stack port map( clka => CLK,
							  wea(0) => signal_ff_stack_2,
							  addra => signal_TOS,
							  dina => NUM_IN,
							  douta => NUM_OUT
							  );


														 
														 
FSM: StackFSM port map ( CLK => CLK,
								 RST => RST,
								 BTN0 => signal_btn0_pulse,
								 BTN1 => signal_btn1_pulse,
								 MODE => signal_OpFSM_Mode,
								 FULL => signal_stack_full,
								 EMPTY => signal_stack_empty,
								 EN => signal_FSMOut_EN,
								 UD => signal_FSMOut_UD,
								 STACK_STATE => STACK_STATE
								);


OPERATION_FSM : OperationFSM port map (CLK => CLK,
													RST => RST,
													BTN0 => signal_btn0_pulse,
													BTN1 => signal_btn1_pulse,
													MODE => signal_mode_pulse,
													OPOut => OpOut,
													SEL => signal_OpFSM_Mode
													);
													
SEL <= signal_OpFSM_Mode;
													

end Structural;

