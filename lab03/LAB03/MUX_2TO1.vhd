library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity MUX_2TO1 is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           SEL : in  STD_LOGIC;
           X : out  STD_LOGIC);

end MUX_2TO1;

architecture Behavioral of MUX_2TO1 is

begin

X <= (A AND NOT(SEL)) OR (B AND SEL);

end Behavioral;

