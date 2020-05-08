library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ssd_Mux5To4 is
    Port ( STACK_STATE : in  STD_LOGIC_VECTOR (1 downto 0);
           MODE : in  STD_LOGIC_VECTOR (1 downto 0);
           OPOut : in  STD_LOGIC;
           SEG : out  STD_LOGIC_VECTOR (3 downto 0));
end ssd_Mux5To4;

architecture Behavioral of ssd_Mux5To4 is

begin

Process(STACK_STATE, MODE, OpOut)
begin

	if (MODE = "00") then
		SEG(0) <= STACK_STATE(0);
		SEG(1) <= STACK_STATE(1);
		SEG(2) <= '0';
		SEG(3) <= '0';
		
	else SEG(3) <= '1';
		  SEG(2) <= OPOut;
		  SEG(1) <= MODE(1);
		  SEG(0) <= MODE(0);
		
	end if;

end process;
end Behavioral;

