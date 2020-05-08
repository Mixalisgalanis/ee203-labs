
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity Comparator_5_BIT is
    Port ( A : in  STD_LOGIC_VECTOR (4 downto 0);
           B : in  STD_LOGIC_VECTOR (4 downto 0);
           EQ : out  STD_LOGIC;
           L_T : out  STD_LOGIC;
           G_T : out  STD_LOGIC);
end Comparator_5_BIT;

architecture Behavioral of Comparator_5_BIT is

begin


EQ <= ((A(4) XNOR B(4)) AND (A(3) XNOR B(3)) AND (A(2) XNOR B(2)) AND (A(1) XNOR B(1)) AND (A(0) XNOR B(0)));

G_T <= ((NOT (B(4)) AND A(4)) OR (NOT (B(3)) AND A(3) AND (A(4) XNOR B(4))) OR (NOT (B(2)) AND A(2) AND (A(4) XNOR B(4)) AND (A(3) XNOR B(2))) OR (NOT(B(1)) AND A(1) AND (A(4) XNOR B(4)) AND (A(3) XNOR B(3)) AND (A(2) XNOR B(2))) OR (NOT(B(0)) AND A(0) AND(A(4) XNOR B(4)) AND (A(3) XNOR B(3)) AND (A(2) XNOR B(2)) AND (A(1) XNOR B(1))));

L_T <= ((A(4) XNOR B(4)) AND (A(3) XNOR B(3)) AND (A(2) XNOR B(2)) AND (A(1) XNOR B(1)) AND (A(0) XNOR B(0))) NOR ((NOT (B(4)) AND A(4)) OR (NOT (B(3)) AND A(3) AND (A(4) XNOR B(4))) OR (NOT (B(2)) AND A(2) AND (A(4) XNOR B(4)) AND (A(3) XNOR B(2))) OR (NOT(B(1)) AND A(1) AND (A(4) XNOR B(4)) AND (A(3) XNOR B(3)) AND (A(2) XNOR B(2))) OR (NOT(B(0)) AND A(0) AND(A(4) XNOR B(4)) AND (A(3) XNOR B(3)) AND (A(2) XNOR B(2)) AND (A(1) XNOR B(1))));




end Behavioral;

