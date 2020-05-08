library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ssd_Decoder is
    Port ( STATE : in  STD_LOGIC_VECTOR (4 downto 0);
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
		
		--StackFSM
		--EMPTY STATE (0001)
		when "00001" => DATA_OUT(0) <= '0';
						 DATA_OUT(3) <= '0';
						 DATA_OUT(4) <= '0';
						 DATA_OUT(5) <= '0';
						 DATA_OUT(6) <= '0';
		
		--FULL STATE (0010)
		when "00010" => DATA_OUT(0) <= '0';
						 DATA_OUT(4) <= '0';
						 DATA_OUT(5) <= '0';
						 DATA_OUT(6) <= '0';
		
		--OVERFLOW STATE (0011)
		when "00011" => --F
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
		
		--OPERATIONS
		--Mode Selection 1
		when "10011" => --1
						 DATA_OUT(25) <= '0';
						 DATA_OUT(26) <= '0';
		--Mode Selection 2
		when "10111" => --2
						 DATA_OUT(24) <= '0';
						 DATA_OUT(25) <= '0';
						 DATA_OUT(27) <= '0';
						 DATA_OUT(28) <= '0';
						 DATA_OUT(30) <= '0';
		--Add
		when "10001" => --A
						 DATA_OUT(24) <= '0';
						 DATA_OUT(25) <= '0';
						 DATA_OUT(26) <= '0';
						 DATA_OUT(28) <= '0';
						 DATA_OUT(29) <= '0';
						 DATA_OUT(30) <= '0';
		--Sub
		when "10101" => --S
						 DATA_OUT(24) <= '0';
						 DATA_OUT(26) <= '0';
						 DATA_OUT(27) <= '0';
						 DATA_OUT(29) <= '0';
						 DATA_OUT(30) <= '0';
		--Unary Sub
		when "10010" => --U
						 DATA_OUT(25) <= '0';
						 DATA_OUT(26) <= '0';
						 DATA_OUT(27) <= '0';
						 DATA_OUT(28) <= '0';
						 DATA_OUT(29) <= '0';
		-- X<>Y
		when "10110" => --<>
						 DATA_OUT(24) <= '0';
						 DATA_OUT(27) <= '0';
						 DATA_OUT(28) <= '0';
						 DATA_OUT(29) <= '0';
						 
						 DATA_OUT(16) <= '0';
						 DATA_OUT(17) <= '0';
						 DATA_OUT(18) <= '0';
						 DATA_OUT(19) <= '0';
		--AOVF in ADD
		when "11001" => 
						--F
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
						 
						 --A
						 DATA_OUT(24) <= '0';
						 DATA_OUT(25) <= '0';
						 DATA_OUT(26) <= '0';
						 DATA_OUT(28) <= '0';
						 DATA_OUT(29) <= '0';
						 DATA_OUT(30) <= '0';	
		
		--AOVF in SUB
		when "11101" => 
						--F
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
						 
						 --A
						 DATA_OUT(24) <= '0';
						 DATA_OUT(25) <= '0';
						 DATA_OUT(26) <= '0';
						 DATA_OUT(28) <= '0';
						 DATA_OUT(29) <= '0';
						 DATA_OUT(30) <= '0';	
		
		when others => DATA_OUT <= (others => '1'); --includes BETWEEN STATE (0000)
		
		end case;
	end if;
end process;

end Behavioral;

