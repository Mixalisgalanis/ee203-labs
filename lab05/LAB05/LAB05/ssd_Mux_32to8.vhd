library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ssd_Mux32To8 is
    Port ( DATA_IN : in  STD_LOGIC_VECTOR (31 downto 0);
           SEL : in  STD_LOGIC_VECTOR (1 downto 0);
           SEG : out  STD_LOGIC_VECTOR (7 downto 0));
end ssd_Mux32To8;

architecture Behavioral of ssd_Mux32To8 is

begin

	with SEL select SEG <= 
		DATA_IN(7 downto 0) when "00",
		DATA_IN(15 downto 8) when "01",
		DATA_IN(23 downto 16) when "10",
		DATA_IN(31 downto 24) when others;

end Behavioral;

