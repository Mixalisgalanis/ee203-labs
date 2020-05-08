library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Demux_Post_Stack is
    Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
           TOS : out  STD_LOGIC_VECTOR (7 downto 0);
           TOS_1 : out  STD_LOGIC_VECTOR (7 downto 0);
			  EN_1 : out STD_LOGIC;
           TOS_SELECTOR : in  STD_LOGIC_VECTOR (1 downto 0));
end Demux_Post_Stack;

architecture Behavioral of Demux_Post_Stack is

begin

	Process (A,TOS_SELECTOR)
	begin
	
		if (TOS_SELECTOR = "00") then
			TOS <= A;
			EN_1 <= '1';
			TOS_1 <= "00000000";
		else TOS_1 <= A;
				EN_1 <= '0';
			TOS <= "00000000";
		end if;
	
	end Process;


end Behavioral;

