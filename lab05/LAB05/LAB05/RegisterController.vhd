library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity RegisterController is
    Port ( DOUTA : in  STD_LOGIC_VECTOR (7 downto 0);
           SEL : in  STD_LOGIC_VECTOR (1 downto 0);
           OpOut : in  STD_LOGIC;
           PART_POP : in  STD_LOGIC_VECTOR (1 downto 0);
           REG_1 : out  STD_LOGIC_VECTOR (7 downto 0);
           REG_1_EN : out  STD_LOGIC;
           REG_2 : out  STD_LOGIC_VECTOR (7 downto 0);
           REG_2_EN : out  STD_LOGIC);
end RegisterController;

architecture Behavioral of RegisterController is

begin

	
	Process (DOUTA, SEL, OPOut, PART_POP)
	begin
		
		if (SEL = "01") then
			if (PART_POP = "00") then
				REG_1 <= "00000000";
				REG_1_EN <= '1';
				REG_2 <= "00000000";
				REG_2_EN <= '1';
			elsif (PART_POP = "01") then
				REG_1 <= DOUTA;
				REG_1_EN <= '1';
				REG_2 <= "00000000";
				REG_2_EN <= '0';
			elsif (PART_POP = "10") then
				REG_1 <= "00000000";
				REG_1_EN <= '0';
				REG_2 <= DOUTA;
				REG_2_EN <= '1';
			else	
				REG_1 <= "00000000";
				REG_1_EN <= '0';
				REG_2 <= "00000000";
				REG_2_EN <= '0';
			end if;
		elsif (SEL = "10") then
			if (OpOut = '0') then
					if (PART_POP = "00") then
					REG_1 <= "00000000";
					REG_1_EN <= '1';
					REG_2 <= "00000000";
					REG_2_EN <= '1';
				elsif (PART_POP = "01") then
					REG_1 <= DOUTA;
					REG_1_EN <= '1';
					REG_2 <= "00000000";
					REG_2_EN <= '0';
				elsif (PART_POP = "10") then
					REG_1 <= "00000000";
					REG_1_EN <= '1';
					REG_2 <= DOUTA;
					REG_2_EN <= '1';
				else	
					REG_1 <= "00000000";
					REG_1_EN <= '0';
					REG_2 <= "00000000";
					REG_2_EN <= '0';
				end if;
			else
				if (PART_POP = "00") then
					REG_1 <= "00000000";
					REG_1_EN <= '1';
					REG_2 <= "00000000";
					REG_2_EN <= '1';
				elsif (PART_POP = "01") then
					REG_1 <= DOUTA;
					REG_1_EN <= '1';
					REG_2 <= "00000000";
					REG_2_EN <= '0';
				elsif (PART_POP = "10") then
					REG_1 <= "00000000";
					REG_1_EN <= '0';
					REG_2 <= DOUTA;
					REG_2_EN <= '1';
				else	
					REG_1 <= "00000000";
					REG_1_EN <= '0';
					REG_2 <= "00000000";
					REG_2_EN <= '0';
				end if;
			end if;
		else  
			REG_1 <= "00000000";
			REG_1_EN <= '1';
			REG_2 <= "00000000";
			REG_2_EN <= '1';
		end if;
		
	end Process;
	
	
	
end Behavioral;

