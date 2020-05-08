library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity FlipFlop is
    Port ( D : in  STD_LOGIC;
			  CLK : in STD_LOGIC;
           Q : out  STD_LOGIC);
end FlipFlop;

architecture Behavioral of FlipFlop is

begin

FlipFlop: Process (CLK)
begin

	if rising_edge(CLK) then
		Q <= D;
	end if;
	
end Process;
end Behavioral;

