library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity RegisterController is
    Port ( DOUTA : in  STD_LOGIC_VECTOR (7 downto 0);
           EN : in  STD_LOGIC;
           SEL : in  STD_LOGIC_VECTOR (1 downto 0);
           OpOut : in  STD_LOGIC;
           Part : in  STD_LOGIC;
           REG_1 : out  STD_LOGIC_VECTOR (7 downto 0);
           REG_1_EN : out  STD_LOGIC;
           REG_2 : out  STD_LOGIC_VECTOR (7 downto 0);
           REG_2_EN : out  STD_LOGIC);
end RegisterControl_FSM;

architecture Behavioral of RegisterController is

begin

	
	Outputs: Process (DOUTA, EN, SEL, OPOut, Part)
	begin
		
		if (EN = '1') then
			if (SEL = "00") 
			
		else  
			REG_1 <= "00000000";
         REG_1_EN <= '0';
         REG_2 <= "00000000";
         REG_2_EN <= '0';
		end if;
	end Process;
	
	
	
end Behavioral;

