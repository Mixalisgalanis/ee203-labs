library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Stack_Register is
    Port ( D : in  STD_LOGIC_VECTOR (7 downto 0);
           CLK : in  STD_LOGIC;
           Q : out  STD_LOGIC_VECTOR (7 downto 0));
end Stack_Register;

architecture Behavioral of Stack_Register is

begin

Process
begin

	Wait until CLK'Event and CLK = '1';
	Q <= D;
	
end Process;

end Behavioral;

