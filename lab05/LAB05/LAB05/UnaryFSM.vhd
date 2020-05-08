library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity UnaryFSM is
    Port ( SEL : in  STD_LOGIC_VECTOR (1 downto 0);
           OPOut : in  STD_LOGIC;
           RST : in  STD_LOGIC;
           CLK : in  STD_LOGIC;
           POP : out  STD_LOGIC;
           OP : out  STD_LOGIC;
           OP_EN : out  STD_LOGIC);
end UnaryFSM;

architecture Behavioral of UnaryFSM is

	type states is (START, POP, OPERATION);
	signal fsm_state : states;

begin

FSM: Process (CLK)
begin

	if rising_edge(CLK) then
		if (RST = '1') then 
			fsm_state <= START;
		else
			if (SEL = "10" and OPOut = '0') then
				case fsm_state is
					when START => fsm_state <= POP;
					when POP => fsm_state <= OPERATION;
					when others => fsm_state <= START;
				end case;
			else fsm_state <= START;
			end if;
		end if;
	end if;
end Process;



Outputs: Process (fsm_state, OpOut)
begin
	case fsm_state is
		when START =>
						  POP <= '0';
						  OP <= '0'; --doesn't matter
						  OP_EN <= '0';
		
		when POP =>
						 POP <= '1';
						 OP <= '0'; --doesn't matter
						 OP_EN <= '0';
		
		when OPERATION =>
								POP <= '0';
								OP_EN <= '1';
								OP <= 1;
		
		when others =>
						  POP <= '0';
						  OP <= '0'; --doesn't matter
						  OP_EN <= '0';
								
		
	end case;
end Process;


end Behavioral;

