library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Mux_Push_Stack_FSM is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           X : in  STD_LOGIC;
           SEL : in  STD_LOGIC_VECTOR (1 downto 0);
           OPOut : in  STD_LOGIC);
end Mux_Push_Stack_FSM;

architecture Behavioral of Mux_Push_Stack_FSM is

begin

	Process (A,B, SEL, OpOut)
	begin
	
		if (SEL = "00") then
			X <= A;
		else X <= B;
		end if;
	
	end Process;

end Behavioral;

