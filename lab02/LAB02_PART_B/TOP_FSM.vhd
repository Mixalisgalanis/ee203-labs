library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity TOP_FSM is
    Port ( RST : in  STD_LOGIC;
           IN0 : in  STD_LOGIC;
           IN1 : in  STD_LOGIC;
           IN2 : in  STD_LOGIC;
			  CLK : in STD_LOGIC;
           LED : out  STD_LOGIC_VECTOR (7 downto 0));
end TOP_FSM;

architecture Structural of TOP_FSM is

signal signal_SPG0, signal_SPG1, signal_SPG2 : STD_LOGIC;
Component singlepulsegen is
Port ( clk 		: in std_logic;		
       rst 		: in std_logic;				
       input 	: in std_logic;		
       output 	: out std_logic		
      );
end Component;


Component FSM is
Port ( RST : in  STD_LOGIC;
       IN0 : in  STD_LOGIC;
	    IN1 : in  STD_LOGIC;
	    IN2 : in  STD_LOGIC;
		 CLK : in  STD_LOGIC;
       LED : out  STD_LOGIC_VECTOR(7 downto 0)
	  );
end Component;


begin

SPGEN0: singlepulsegen port map(	clk => CLK,
											rst => RST,
											input => IN0,
											output => signal_SPG0					
										);
										
SPGEN1: singlepulsegen port map(	clk => CLK,
											rst => RST,
											input => IN1,
											output => signal_SPG1					
										);
										
SPGEN2: singlepulsegen port map(	clk => CLK,
											rst => RST,
											input => IN2,
											output => signal_SPG2					
										);
										
FSM0: FSM port map ( CLK => CLK,
							RST => RST,
							IN0 => signal_SPG0,
							IN1 => signal_SPG1,
							IN2 => signal_SPG2,
							LED => LED
							);

end Structural;

