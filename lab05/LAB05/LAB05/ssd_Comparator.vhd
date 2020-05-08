library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity ssd_Comparator is
    Port ( A,B : in STD_LOGIC_VECTOR(16 downto 0);
           EQ : out  STD_LOGIC);
end ssd_Comparator;

architecture Behavioral of ssd_Comparator is
signal tempA,tempB : integer;

begin

tempA <= to_integer(unsigned(A));

tempB <= to_integer(unsigned(B));

EQ <= '1' when (tempA = tempB) else '0';

end Behavioral;

