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

P <= A XOR B;
G <= A AND B;

end Behavioral;