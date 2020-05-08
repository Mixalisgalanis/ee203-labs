library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ADD_SUB_FSM is
    Port ( SEL : in  STD_LOGIC_VECTOR (1 downto 0);
           OPOut : in  STD_LOGIC;
           CLK : in  STD_LOGIC;
           RST : in  STD_LOGIC;
			  OVF : in STD_LOGIC;
           POP : out  STD_LOGIC;
           A_OVF : out  STD_LOGIC;
           OP : out  STD_LOGIC;
           OP_EN : out  STD_LOGIC);
end ADD_SUB_FSM;

architecture Behavioral of ADD_SUB_FSM is

	type states is (START, POP1, POP2, OPERATION, AOVF);
	signal fsm_state : states;

begin

FSM: Process (CLK)
begin

	if rising_edge(CLK) then
		if (RST = '1') then 
			fsm_state <= START;
		else
			--if (OVF = '1') then
			--	fsm_state <= AOVF;
			--else
				if (SEL = "01") then
				
					case fsm_state is
						when START => fsm_state <= POP1;
						when POP1 => fsm_state <= POP2;
						when POP2 => fsm_state <= OPERATION;
						when OPERATION => if (OVF = '1') then fsm_state <= AOVF;
												else fsm_state <= START;
												end if;
						when others => fsm_state <= START;
					end case;
					
				else fsm_state <= START;
				end if;
			--end if;
		end if;
	end if;
	
end Process;




Outputs: Process (fsm_state, OpOut)
begin
	case fsm_state is
		when START => A_OVF <= '0';
						  POP <= '0';
						  OP <= '0'; --doesn't matter
						  OP_EN <= '0';
		
		when POP1 => A_OVF <= '0';
						 POP <= '1';
						 OP <= '0'; --doesn't matter
						 OP_EN <= '0';
		
		when POP2 => A_OVF <= '0';
						 POP <= '1';
						 OP <= '0'; --doesn't matter
						 OP_EN <= '0';
		
		when OPERATION => A_OVF <= '0';
								POP <= '0';
								OP_EN <= '1';
								OP <= OPOut;
		
		when AOVF => A_OVF <= '1';
						 POP <= '0';
						 OP <= '0'; --doesn't matter
						 OP_EN <= '0';
		
		when others => A_OVF <= '0';
						  POP <= '0';
						  OP <= '0'; --doesn't matter
						  OP_EN <= '0';
								
		
	end case;
end Process;




end Behavioral;

