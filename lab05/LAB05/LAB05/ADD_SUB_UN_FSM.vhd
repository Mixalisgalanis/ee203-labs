library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ADD_SUB_UN_FSM is
    Port ( SEL : in  STD_LOGIC_VECTOR (1 downto 0);
           OPOut : in  STD_LOGIC;
           CLK : in  STD_LOGIC;
           RST : in  STD_LOGIC;
			  OVF : in STD_LOGIC;
			  BTN_PULSE : in STD_LOGIC;
			  PUSH : out STD_LOGIC;
           POP : out  STD_LOGIC;
			  TOS_SELECTOR : out STD_LOGIC_VECTOR (1 downto 0);
           A_OVF : out  STD_LOGIC;
           OP : out  STD_LOGIC);
end ADD_SUB_UN_FSM;

architecture Behavioral of ADD_SUB_UN_FSM is

	type states is (START, POP1, POP2, OPERATION, PUSH1, AOVF);
	signal fsm_state : states;

begin

FSM: Process (CLK)
begin

	if rising_edge(CLK) then
		if (RST = '1') then 
			fsm_state <= START;
		else
			case fsm_state is
				when START =>  if ((SEL = "01" or (SEL = "10" and OpOut = '0')) and BTN_PULSE = '1') then
										fsm_state <= POP1;
									elsif (OVF = '1') then fsm_state <= AOVF;
									else fsm_state <= START;
									end if;
									
				when POP1 => if (SEL = "01") then fsm_state <= POP2;
								 elsif (SEL = "10" and OPOut = '0') then fsm_state <= OPERATION;
								 else fsm_state <= START;
								 end if;
				when POP2 => fsm_state <= OPERATION;
				when OPERATION => fsm_state <= PUSH1;
				when PUSH1 => 	if (OVF = '1') then
										fsm_state <= AOVF;
									else fsm_state <= START;
									end if;
				
				when AOVF => fsm_state <= AOVF;
				
				when others => fsm_state <= START;
			end case;
		end if;
	end if;
	
end Process;




Outputs: Process (fsm_state, SEL, OpOut)
begin
	case fsm_state is
		when START => A_OVF <= '0';
						  POP <= '0';
						  PUSH <= '0';
						  if (SEL = "10" and OPOut = '0') then
									OP <= '1';
							else OP <= OPOut;
							end if;
						  if (BTN_PULSE = '1') then
							TOS_SELECTOR <= "00";
						  else TOS_SELECTOR <= "11";
						  end if;
		
		when POP1 => A_OVF <= '0';
						 POP <= '1';
						 PUSH <= '0';
						 if (SEL = "10" and OPOut = '0') then
									OP <= '1';
							else OP <= OPOut;
							end if;
						 TOS_SELECTOR <= "11";
		
		when POP2 => A_OVF <= '0';
						 POP <= '1';
						 PUSH <= '0';
						 if (SEL = "10" and OPOut = '0') then
									OP <= '1';
							else OP <= OPOut;
							end if;
						 TOS_SELECTOR <= "01";
		
		when OPERATION => A_OVF <= '0';
								POP <= '0';
								PUSH <= '0';
								if (SEL = "10" and OPOut = '0') then
									OP <= '1';
								else OP <= OPOut;
								end if;
								TOS_SELECTOR <= "10";
							
		when PUSH1 => A_OVF <= '0';
							POP <= '0';
							PUSH <= '1';
							if (SEL = "10" and OPOut = '0') then
									OP <= '1';
							else OP <= OPOut;
							end if;
							TOS_SELECTOR <= "11";
		
		when AOVF => A_OVF <= '1';
						 if (SEL = "10" and OPOut = '0') then
									OP <= '1';
							else OP <= OPOut;
							end if;
						 PUSH <= '0';
						 if (SEL = "10" and OPOut = '0') then
									OP <= '1';
								else OP <= OPOut;
								end if;
						 TOS_SELECTOR <= "11";
			
		when others => A_OVF <= '0';
						  POP <= '0';
						  PUSH <= '0';
						  OP <= '0';
						  TOS_SELECTOR <= "00";
								
		
	end case;
end Process;




end Behavioral;

