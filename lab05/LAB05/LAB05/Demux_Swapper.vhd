library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Demux_Swapper is
    Port ( TOS_1 : in  STD_LOGIC_VECTOR (7 downto 0);
           X : out  STD_LOGIC_VECTOR (7 downto 0);
           Y : out  STD_LOGIC_VECTOR (7 downto 0);
           SEL : in  STD_LOGIC_VECTOR (1 downto 0);
           OPOut : in  STD_LOGIC);
end Demux_Swapper;

architecture Behavioral of Demux_Swapper is

begin

	Process (TOS_1, SEL, OpOut)
	begin
	
		if (SEL = "10" and OpOut = '1') then
			Y <= TOS_1;
			X <= "00000000";
		else X <= TOS_1;
				Y <= "00000000";
		end if;
	
	end Process;

end Behavioral;

