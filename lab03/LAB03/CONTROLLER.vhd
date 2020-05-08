library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity STACK_CONTROLLER is
    Port ( CLK : in  STD_LOGIC;
           RST : in  STD_LOGIC;
           PUSH : in  STD_LOGIC;
           POP : in  STD_LOGIC;
           NUM_IN : in  STD_LOGIC_VECTOR (7 downto 0);
           NUM_OUT : out  STD_LOGIC_VECTOR (7 downto 0);
			  STATE : out STD_LOGIC_VECTOR (1 downto 0));
end STACK_CONTROLLER;

architecture Structural of STACK_CONTROLLER is

signal signal_push_pulse, signal_pop_pulse : STD_LOGIC; --Needed signals for clock pulses
signal signal_TOS : STD_LOGIC_VECTOR (3 downto 0);
signal signal_stack_full, signal_stack_empty : STD_LOGIC;
signal signal_FSMOut_EN, signal_FSMOut_UD : STD_LOGIC;


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
       PUSH 	: in std_logic;
		 POP 	: in std_logic;
		 FULL 	: in std_logic;
		 EMPTY 	: in std_logic;
       EN	: out std_logic;
		 UD	: out  std_logic;
		 STATE : out std_logic_vector (1 downto 0)
      );
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

Component Stack is
Port ( clka : in STD_LOGIC;
		 wea : in STD_LOGIC_VECTOR(0 downto 0);
		 addra: in STD_LOGIC_VECTOR(3 downto 0);
		 dina: in STD_LOGIC_VECTOR(7 downto 0);
		 douta: out STD_LOGIC_VECTOR(7 downto 0)
		 );
end Component;

begin

SPGEN_PUSH: singlepulsegen port map(	clk => CLK,
											rst => RST,
											input => PUSH,
											output => signal_push_pulse				
										);

SPGEN_POP: singlepulsegen port map(	clk => CLK,
											rst => RST,
											input => POP,
											output => signal_pop_pulse				
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
														 
Stack_1: Stack port map( clka => CLK,
							  wea(0) => signal_push_pulse,
							  addra => signal_TOS,
							  dina => NUM_IN,
							  douta => NUM_OUT
							  );


														 
														 
FSM: StackFSM port map ( CLK => CLK,
								 RST => RST,
								 PUSH => signal_push_pulse,
								 POP => signal_pop_pulse,
								 FULL => signal_stack_full,
								 EMPTY => signal_stack_empty,
								 EN => signal_FSMOut_EN,
								 UD => signal_FSMOut_UD,
								 STATE => STATE
								);

end Structural;

