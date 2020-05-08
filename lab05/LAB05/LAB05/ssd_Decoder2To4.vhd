library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ssd_Decoder2To4 is
    Port ( SEL : in  STD_LOGIC_VECTOR (1 downto 0);
           EN : in  STD_LOGIC;
           AN : out  STD_LOGIC_VECTOR (3 downto 0));
end ssd_Decoder2To4;

architecture Behavioral of ssd_Decoder2To4 is

begin

	process(SEL,EN)
	begin
		
		AN <= (others => '1');
		
		if (EN = '1') then
			Case SEL is
				when "00" => AN <= "1110";
				when "01" => AN <= "1101";
				when "10" => AN <= "1011";
				when "11" => AN <= "0111";
				when others => AN <= "1111";
			end case;
		else AN <= "1111";
		end if;
	end process;
	
end Behavioral;

