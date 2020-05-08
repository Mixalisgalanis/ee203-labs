library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity LAB01 is
    Port ( IN0, IN1 : in  STD_LOGIC;
           BTN0, BTN1, BTN2, BTN3 : in  STD_LOGIC;
           LED : out  STD_LOGIC_VECTOR (5 downto 0)
			);
end LAB01;

architecture Behavioral of LAB01 is

begin

	LED(0) <= (IN0 NAND IN1) AND BTN0;
	LED(1) <= (IN0 XOR IN1) AND BTN1;
	LED(2) <= (IN0 OR IN1) AND BTN2;
	LED(3) <= NOT IN0 AND BTN3;
	LED(4) <= IN0;
	LED(5) <= IN1;

end Behavioral;