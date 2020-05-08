library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Mux_B_ADDER is
    Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
           B : in  STD_LOGIC_VECTOR (7 downto 0);
           SEL : in  STD_LOGIC_VECTOR (1 downto 0);
           OPOut : in  STD_LOGIC;
           X : out  STD_LOGIC_VECTOR (7 downto 0));
end Mux_B_ADDER;

architecture Behavioral of Mux_B_ADDER is

begin

	Process (A,B, SEL, OpOut)
	begin
	
		if (SEL = "10" and OpOut = '0') then
			X <= A;
		else X <= B;
		end if;
	
	end Process;

end Behavioral;

