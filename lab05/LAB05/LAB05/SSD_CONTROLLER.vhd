library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_unsigned.all;

entity SSD_CONTROLLER is
    Port ( CLK : in  STD_LOGIC;
           RST : in  STD_LOGIC;
           STACK_STATE : in  STD_LOGIC_VECTOR (1 downto 0);
			  OpOut : in STD_LOGIC;
			  SEL : in STD_LOGIC_VECTOR (1 downto 0);
			  AOVF : in STD_LOGIC;
			  DATA_OUT : out STD_LOGIC_VECTOR (7 downto 0);
			  AN : out STD_LOGIC_VECTOR (3 downto 0));
end SSD_CONTROLLER;

architecture Structural of SSD_CONTROLLER is

signal signal_count : std_logic_vector (16 downto 0); -- Q of 125K-Counter
signal signal_full : std_logic; --output of comparator
signal signal_FsmOut : std_logic_vector (1 downto 0); --Output of FSM

Component ssd_Counter is
    Port ( CLK : in  STD_LOGIC;
           RST : in  STD_LOGIC;
           EN : in  STD_LOGIC;
           Q : out  STD_LOGIC_VECTOR (16 downto 0));
end Component;


Component ssd_Comparator is
    Port ( A,B : in STD_LOGIC_VECTOR(16 downto 0);
           EQ : out  STD_LOGIC);
end Component;


Component ssd_Fsm is
    Port ( CLK : in  STD_LOGIC;
           RST : in  STD_LOGIC;
           FULL : in  STD_LOGIC;
           DATA_OUT : out  STD_LOGIC_VECTOR (1 downto 0));
end Component;


Component ssd_Decoder2To4 is
    Port ( SEL : in  STD_LOGIC_VECTOR (1 downto 0);
           EN : in  STD_LOGIC;
           AN : out  STD_LOGIC_VECTOR (3 downto 0));
end Component;

Component ssd_DataPath is
    Port ( STATE : in  STD_LOGIC_VECTOR (1 downto 0);
           AN_SEL : in  STD_LOGIC_VECTOR (1 downto 0);
			  MODE : in STD_LOGIC_VECTOR (1 downto 0);
			  OPOut : in STD_LOGIC;
			  AOVF : in STD_LOGIC;
           SEG : out  STD_LOGIC_VECTOR (7 downto 0));
end Component;


begin


FullComparator : ssd_Comparator port map ( --A is 125000 in binary
														 --11110100001001000 is 125K in binary
														 A => "11110100001001000",
														 B => signal_count,
														 EQ =>	signal_full												
																);

Counter125K : ssd_Counter port map(	CLK => CLK,
												RST => RST,
												EN => '1',
												Q => signal_count
													);


Fsm : ssd_Fsm port map ( CLK => CLK,
								 RST => RST,
								 FULL => signal_full,
								 DATA_OUT => signal_FsmOut
										);

DataPath : ssd_DataPath port map ( STATE => STACK_STATE,
											  AN_SEL => signal_FsmOut,
											  MODE => SEL,
											  OpOut => OpOut,
											  SEG => DATA_OUT,
											  AOVF => AOVF
													);
			
															
AnSelector : ssd_Decoder2To4 port map ( SEL => signal_FSMOut,
													 EN => '1',
													 AN => AN
													);

end Structural;

