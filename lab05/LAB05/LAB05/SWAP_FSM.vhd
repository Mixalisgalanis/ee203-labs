library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity SWAP_FSM is
    Port ( SEL : in  STD_LOGIC_VECTOR (1 downto 0);
           OPOut : in  STD_LOGIC;
           RST : in  STD_LOGIC;
           CLK : in  STD_LOGIC;
			  BTN_PULSE : in STD_LOGIC;
           PUSH : out  STD_LOGIC;
			  TOS_SELECTOR : out STD_LOGIC_VECTOR (1 downto 0);
           POP : out  STD_LOGIC);
end SWAP_FSM;

architecture Behavioral of SWAP_FSM is

	type states is (START, POP1, POP2, WAIT1, PUSH1, WAIT2, PUSH2);
	signal fsm_state : states;

begin

FSM: Process (CLK)
begin

	if rising_edge(CLK) then
		if (RST = '1') then 
			fsm_state <= START;
		else
			if (SEL = "10" and OPOut = '1') then
				case fsm_state is
					when  START => 
										if (BTN_PULSE = '1') then
											fsm_state <= POP1;
										else fsm_state <= START;
										end if;
					when  POP1 => fsm_state <= POP2;
					when  POP2 => fsm_state <= WAIT1;
					when  WAIT1 => fsm_state <= PUSH1;
					when  PUSH1 => fsm_state <= WAIT2;
					when  WAIT2 => fsm_state <= PUSH2;
					when others => fsm_state <= START;
				end case;
			else fsm_state <= START;
			end if;
		end if;
	end if;
end Process;


Outputs: Process (fsm_state)
begin
	case fsm_state is
		when  START => PUSH <= '0';
							POP <= '0'; 
							if (BTN_PULSE = '1') then
							TOS_SELECTOR <= "00";
						   else TOS_SELECTOR <= "11";
						   end if;
						  
		when  POP1 => PUSH <= '0';
							POP <= '1';
							TOS_SELECTOR <= "11";
		when  POP2 => PUSH <= '0';
							POP <= '1';
							TOS_SELECTOR <= "10";
							
		when WAIT1 => PUSH <= '0';
								POP <= '0'; 
								TOS_SELECTOR <= "01";
							
		when  PUSH1 => PUSH <= '1';
							POP <= '0';
							TOS_SELECTOR <= "11";
		
							
		 when WAIT2 => PUSH <= '0';
							POP <= '0'; 		
							TOS_SELECTOR <= "11";		
							
		when  PUSH2 => PUSH <= '1';
							POP <= '0';	
							TOS_SELECTOR <= "11";

							
		when others => PUSH <= '0';
							POP <= '0';
							TOS_SELECTOR <= "00";
	end case;
end Process;

end Behavioral;

