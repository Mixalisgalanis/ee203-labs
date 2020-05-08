library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity TOP_MODULE is
    Port ( PUSH : in  STD_LOGIC;
           POP : in  STD_LOGIC;
           UNKNOWN : in  STD_LOGIC;
           RST : in  STD_LOGIC;
           CLK : in  STD_LOGIC;
           NUM_IN : in  STD_LOGIC_VECTOR (7 downto 0);
           NUM_OUT : out  STD_LOGIC_VECTOR (7 downto 0);
           SSD_EN : out  STD_LOGIC_VECTOR (3 downto 0);
           SSD_VALUE : out  STD_LOGIC_VECTOR (7 downto 0));
end TOP_MODULE;

architecture Structural of TOP_MODULE is
signal ControllerConnector : STD_LOGIC_VECTOR (1 downto 0);

Component STACK_CONTROLLER is
    Port ( CLK : in  STD_LOGIC;
           RST : in  STD_LOGIC;
           PUSH : in  STD_LOGIC;
           POP : in  STD_LOGIC;
           NUM_IN : in  STD_LOGIC_VECTOR (7 downto 0);
           NUM_OUT : out  STD_LOGIC_VECTOR (7 downto 0);
			  STATE : out STD_LOGIC_VECTOR (1 downto 0));
end Component;

Component SSD_CONTROLLER is
    Port ( CLK : in  STD_LOGIC;
           RST : in  STD_LOGIC;
           DATA_IN : in  STD_LOGIC_VECTOR (1 downto 0);
			  DATA_OUT : out STD_LOGIC_VECTOR (7 downto 0);
			  AN : out STD_LOGIC_VECTOR (3 downto 0));
end Component;

begin

STACK : STACK_CONTROLLER port map ( CLK => CLK,
												RST => RST,
												PUSH => PUSH,
												POP => POP,
												NUM_IN => NUM_IN,
												NUM_OUT => NUM_OUT,
												STATE => ControllerConnector
													);

SSD : SSD_CONTROLLER port map (  CLK => CLK,
											RST => RST,
											DATA_IN => ControllerConnector,
											DATA_OUT => SSD_VALUE,
											AN => SSD_EN
											);



end Structural;

