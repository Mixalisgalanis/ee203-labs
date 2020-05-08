library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Carry_Generate_Propagate_Unit is
    Port ( A : in  STD_LOGIC_VECTOR (3 downto 0);
           B : in  STD_LOGIC_VECTOR (3 downto 0);
           P : out  STD_LOGIC_VECTOR (3 downto 0);
           G : out  STD_LOGIC_VECTOR (3 downto 0));
end Carry_Generate_Propagate_Unit;

architecture Behavioral of Carry_Generate_Propagate_Unit is

begin

P(0) <= A(0) XOR B(0);
P(1) <= A(1) XOR B(1);
P(2) <= A(2) XOR B(2);
P(3) <= A(3) XOR B(3);

G(0) <= A(0) AND B(0);
G(1) <= A(1) AND B(1);
G(2) <= A(2) AND B(2);
G(3) <= A(3) AND B(3);

end Behavioral;