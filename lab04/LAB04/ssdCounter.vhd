library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_unsigned.all;

entity ssd_Counter is
    Port ( CLK : in  STD_LOGIC;
           RST : in  STD_LOGIC;
           EN : in  STD_LOGIC;
           Q : out  STD_LOGIC_VECTOR (16 downto 0));
end ssd_Counter;

architecture Behavioral of ssd_Counter is
signal temp : std_logic_vector (16 downto 0);

begin

process(CLK,RST,temp)
	
	begin
	
		if RST = '1' then					temp <= (others => '0');
		elsif rising_edge(CLK) then
			if EN = '1' then
				if temp = "11110100001001000" then temp <= (others => '0');
				else temp <= temp + 1;
				end if;
			end if;
		end if;
		
		Q <= temp;
		
	end process;



end Behavioral;

