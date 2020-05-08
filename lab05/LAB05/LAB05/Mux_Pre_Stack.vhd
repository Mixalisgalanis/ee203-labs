library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Mux_Pre_Stack is
    Port ( OP_RESULT : in  STD_LOGIC_VECTOR (7 downto 0);
           SWAP : in  STD_LOGIC_VECTOR (7 downto 0);
           NUM_IN : in  STD_LOGIC_VECTOR (7 downto 0);
           SEL : in  STD_LOGIC_VECTOR (1 downto 0);
           OPOut : in  STD_LOGIC;
           X : out  STD_LOGIC_VECTOR (7 downto 0));
end Mux_Pre_Stack;

architecture Behavioral of Mux_Pre_Stack is

begin

	Process (OP_RESULT, SWAP, NUM_IN, SEL, OPOut)
	begin
	
		if (SEL = "00") then
			X <= NUM_IN;
		elsif (SEL = "10" and OPOut = '1') then
			X <= SWAP;
		else X <= OP_RESULT;
		end if;
	
	end Process;

end Behavioral;

