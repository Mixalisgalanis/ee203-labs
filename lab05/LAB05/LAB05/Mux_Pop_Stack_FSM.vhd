library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity Mux_Pop_Stack_FSM is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           C : in  STD_LOGIC;
           X : out  STD_LOGIC;
           SEL : in  STD_LOGIC_VECTOR (1 downto 0);
           OPOut : in  STD_LOGIC);
end Mux_Pop_Stack_FSM;

architecture Behavioral of Mux_Pop_Stack_FSM is

begin

	Process (A,B, C, SEL, OpOut)
	begin
	
		if (SEL = "00") then
			X <= A;
		elsif (SEL = "10")
		else X <= B;
		end if;
	
	end Process;

end Behavioral;

