library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity ssd_equalComparator is
    Port ( A,B : integer range 0 to 125000;
           X : out  STD_LOGIC);
end ssd_equalComparator;

architecture Behavioral of ssd_equalComparator is

begin

X <= '1' when (A = B) else '0';

end Behavioral;

