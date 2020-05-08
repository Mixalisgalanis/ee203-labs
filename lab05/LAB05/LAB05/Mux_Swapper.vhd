library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Mux_Swapper is
    Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
           B : in  STD_LOGIC_VECTOR (7 downto 0);
           X : out  STD_LOGIC_VECTOR (7 downto 0);
           SEL : in  STD_LOGIC);
end Mux_Swapper;

architecture Behavioral of Mux_Swapper is

begin

	Process (A, SEL, B)
	begin
	
		if (SEL = '0') then
			X <= A;
		else X <= B;
		end if;
	
	end Process;


end Behavioral;

