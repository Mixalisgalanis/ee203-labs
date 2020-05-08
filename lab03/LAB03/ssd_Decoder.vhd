library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ssd_Decoder is
    Port ( STATE : in  STD_LOGIC_VECTOR (1 downto 0);
			  EN 		 : in STD_LOGIC;
			  DATA_OUT : out  STD_LOGIC_VECTOR (31 downto 0));
end ssd_Decoder;

architecture Behavioral of ssd_Decoder is

begin

process(STATE,EN)
begin
	
	DATA_OUT <= (others => '1');
	
	if (EN = '1') then
		Case STATE is
		
		--EMPTY STATE (01)
		when "01" => DATA_OUT(0) <= '0';
						 DATA_OUT(3) <= '0';
						 DATA_OUT(4) <= '0';
						 DATA_OUT(5) <= '0';
						 DATA_OUT(6) <= '0';
		
		--FULL STATE (10)
		when "10" => DATA_OUT(0) <= '0';
						 DATA_OUT(4) <= '0';
						 DATA_OUT(5) <= '0';
						 DATA_OUT(6) <= '0';
		
		--OVERFLOW STATE (11)
		when "11" => --F
						 DATA_OUT(0) <= '0';
						 DATA_OUT(4) <= '0';
						 DATA_OUT(5) <= '0';
						 DATA_OUT(6) <= '0';
						 
						 --V
						 DATA_OUT(9) <= '0';
						 DATA_OUT(10) <= '0';
						 DATA_OUT(11) <= '0';
						 DATA_OUT(12) <= '0';
						 DATA_OUT(13) <= '0';
						 
						 --0
						 DATA_OUT(16) <= '0';
						 DATA_OUT(17) <= '0';
						 DATA_OUT(18) <= '0';
						 DATA_OUT(19) <= '0';
						 DATA_OUT(20) <= '0';
						 DATA_OUT(21) <= '0';
		
		--BETWEEN STATE (00)
		when others => DATA_OUT <= (others => '1');
		
		end case;
	end if;
end process;

end Behavioral;

