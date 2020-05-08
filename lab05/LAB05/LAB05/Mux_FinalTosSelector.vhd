library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Mux_FinalTosSelector is
    Port ( TOS_SELECTOR_1 : in  STD_LOGIC_VECTOR (1 downto 0);
           TOS_SELECTOR_2 : in  STD_LOGIC_VECTOR (1 downto 0);
           SEL : in  STD_LOGIC_VECTOR (1 downto 0);
           OPOut : in  STD_LOGIC;
           X : out  STD_LOGIC_VECTOR (1 downto 0));
end Mux_FinalTosSelector;

architecture Behavioral of Mux_FinalTosSelector is

begin

	Process (TOS_SELECTOR_1, TOS_SELECTOR_2, SEL, OPOut)
	begin
	
		if (SEL = "10" and OPOut = '1') then
			X <= TOS_SELECTOR_2;
		else X <= TOS_SELECTOR_1;
		end if;
	
	end Process;

end Behavioral;

