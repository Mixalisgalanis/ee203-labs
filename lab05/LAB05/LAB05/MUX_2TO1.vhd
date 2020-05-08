library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Mux_A_ADDER is
    Port ( A : in  STD_LOGIC_VECTOR(7 downto 0);
			  SEL : in STD_LOGIC_VECTOR(1 downto 0);
			  OpOut : in STD_LOGIC;
           X : out  STD_LOGIC_VECTOR(7 downto 0));
end Mux_A_ADDER;

architecture Behavioral of Mux_A_ADDER is

begin

	Process (A,SEL, OpOut)
	begin
	
		if (SEL = "10" and OpOut = '0') then
			X <= "00000000";
		else X <= A;
		end if;
	
	end Process;

end Behavioral;

