library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Sum_Unit is
    Port ( P : in  STD_LOGIC_VECTOR (3 downto 0);
           C : in  STD_LOGIC_VECTOR (2 downto 0);
           Cin : in  STD_LOGIC;
           S : out  STD_LOGIC_VECTOR (3 downto 0));
end Sum_Unit;

architecture Behavioral of Sum_Unit is

begin

S(0) <= P(0) XOR Cin;
S(1) <= P(1) XOR C(0);
S(2) <= P(2) XOR C(1);
S(3) <= P(3) XOR C(2);

end Behavioral;

