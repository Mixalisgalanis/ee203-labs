library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity TOP_MODULE is
    Port ( BTN0 : in  STD_LOGIC;
           BTN1 : in  STD_LOGIC;
           MODE : in  STD_LOGIC;
           RST : in  STD_LOGIC;
           CLK : in  STD_LOGIC;
           NUM_IN : in  STD_LOGIC_VECTOR (7 downto 0);
           NUM_OUT : out  STD_LOGIC_VECTOR (7 downto 0);
           SSD_EN : out  STD_LOGIC_VECTOR (3 downto 0);
           SSD_VALUE : out  STD_LOGIC_VECTOR (7 downto 0));
end TOP_MODULE;

architecture Structural of TOP_MODULE is
signal signal_stack_state : STD_LOGIC_VECTOR (1 downto 0);
signal signal_OpOut : STD_LOGIC;
signal signal_SEL : STD_LOGIC_VECTOR (1 downto 0);
signal signal_AOVF : STD_LOGIC;

Component STACK_CONTROLLER is
    Port ( CLK : in  STD_LOGIC;
           RST : in  STD_LOGIC;
           BTN0 : in  STD_LOGIC;
           BTN1 : in  STD_LOGIC;
			  MODE : in STD_LOGIC;
			  OpOut : out STD_LOGIC;
			  SEL : out STD_LOGIC_VECTOR (1 downto 0);
           NUM_IN : in  STD_LOGIC_VECTOR (7 downto 0);
           NUM_OUT : out  STD_LOGIC_VECTOR (7 downto 0);
			  A_OVF : out STD_LOGIC;
			  STACK_STATE : out STD_LOGIC_VECTOR (1 downto 0));
end Component;

Component SSD_CONTROLLER is
    Port ( CLK : in  STD_LOGIC;
           RST : in  STD_LOGIC;
           STACK_STATE : in  STD_LOGIC_VECTOR (1 downto 0);
			  OpOut : in STD_LOGIC;
			  SEL : in STD_LOGIC_VECTOR (1 downto 0);
			  AOVF : in STD_LOGIC;
			  DATA_OUT : out STD_LOGIC_VECTOR (7 downto 0);
			  AN : out STD_LOGIC_VECTOR (3 downto 0));
end Component;

begin

STACK : STACK_CONTROLLER port map ( CLK => CLK,
												RST => RST,
												BTN0 => BTN0,
												BTN1 => BTN1,
												MODE => MODE,
												NUM_IN => NUM_IN,
												NUM_OUT => NUM_OUT,
												OpOut => signal_OpOut,
												SEL => signal_SEL,
												STACK_STATE => signal_stack_state,
												A_OVF => signal_AOVF
													);

SSD : SSD_CONTROLLER port map (  CLK => CLK,
											RST => RST,
											STACK_STATE => signal_stack_state,
											OpOut => signal_OpOut,
											SEL => signal_SEL,
											DATA_OUT => SSD_VALUE,
											AN => SSD_EN,
											AOVF => signal_AOVF
											);



end Structural;

