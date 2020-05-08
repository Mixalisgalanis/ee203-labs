library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Carry_Look_Ahead_Unit is
    Port ( P : in  STD_LOGIC_VECTOR (3 downto 0);
           G : in  STD_LOGIC_VECTOR (3 downto 0);
           Cin : in  STD_LOGIC;
           C : out  STD_LOGIC_VECTOR (3 downto 0));
end Carry_Look_Ahead_Unit;

architecture Behavioral of Carry_Look_Ahead_Unit is

begin

C(0) <= G(0) OR (P(0) AND Cin);
C(1) <= G(1) OR (P(1) AND G(0)) OR (P(1) AND P(0) AND Cin);
C(2) <= G(2) OR (P(2) AND G(1)) OR (P(2) AND P(1) AND G(0)) OR (P(2) AND P(1) AND P(0) AND Cin);
C(3) <= G(3) OR (P(3) AND G(2)) OR (P(3) AND P(2) AND G(1)) OR (P(3) AND P(2) AND P(1) AND G(0)) OR (P(3) AND P(2) AND P(1) AND P(0) AND Cin);


end Behavioral;

