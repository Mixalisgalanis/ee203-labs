library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ssd_Mux16To4 is
    Port ( DATA_IN : in  STD_LOGIC_VECTOR (15 downto 0);
           SEL : in  STD_LOGIC_VECTOR (1 downto 0);
           AN : out  STD_LOGIC_VECTOR (3 downto 0));
end ssd_Mux16To4;

architecture Behavioral of ssd_Mux16To4 is

begin


end Behavioral;

