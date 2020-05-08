library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Mux_True_Btn_Pulse is
    Port ( BTN_PULSE : in  STD_LOGIC;
           SEL : in  STD_LOGIC_VECTOR (1 downto 0);
           OPOut : in  STD_LOGIC;
           TRUE_PULSE : out  STD_LOGIC);
end Mux_True_Btn_Pulse;

architecture Behavioral of Mux_True_Btn_Pulse is

begin

	Process (BTN_PULSE, SEL, OpOut)
	begin

		if (SEL = "00") then
			TRUE_PULSE <= BTN_PULSE;
		else TRUE_PULSE <= '0';
		end if;
	end process;

end Behavioral;

