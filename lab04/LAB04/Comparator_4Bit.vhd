library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Comparator_4Bit is
    Port ( A,B : in STD_LOGIC_VECTOR(3 downto 0);
           EQ : out  STD_LOGIC);
end Comparator_4Bit;

architecture Behavioral of Comparator_4Bit is
signal tempA,tempB : integer;

begin

tempA <= to_integer(unsigned(A));

tempB <= to_integer(unsigned(B));

EQ <= '1' when (tempA = tempB) else '0';

end Behavioral;

