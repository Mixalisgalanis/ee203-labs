library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_unsigned.all;

entity Counter is
    Port ( CLK : in  STD_LOGIC;
           RST : in  STD_LOGIC;
			  EN	: in  STD_LOGIC;
			  U_D : in  STD_LOGIC;
           Q 	: out STD_LOGIC_VECTOR(3 downto 0)
			  );
end Counter;

architecture Behavioral of Counter is

signal temp : std_logic_vector(3 downto 0);


begin

	process(CLK, RST, temp)
	
	begin
	
		if RST = '1' then					temp <= (others => '0');
		elsif rising_edge(CLK) then
			if EN = '1' then
				if U_D = '1' then				temp <= temp + 1;
				else								temp <= temp - 1;
				end if;
			end if;
		end if;
		
		Q <= temp;
		
	end process;


end Behavioral;

