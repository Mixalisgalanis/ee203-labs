
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity FSM is
    Port ( RST : in  STD_LOGIC;
           IN0 : in  STD_LOGIC;
           IN1 : in  STD_LOGIC;
           IN2 : in  STD_LOGIC;
			  CLK : in STD_LOGIC;
           LED : out  STD_LOGIC_VECTOR (7 downto 0));
end FSM;

architecture Behavioral of FSM is

	TYPE state IS (A,B,C);
	signal fsm_state : state;


begin
	
	PROCESS
	
	begin
	
		wait until (CLK' event and CLK = '1');
		
		if (RST = '1') then fsm_state <= A;
		else

			case fsm_state is
					when A =>		--Outputs
										--LED <= b"1111_1111";
					
										--Inputs
										if IN0 = '1' then fsm_state <= B;
										elsif IN1 = '1' then fsm_state <= C;
										elsif IN2 = '1' then fsm_state <= A;
										end if;
										
										
					when B =>		--Outputs
										--LED <= b"1111_0000";
										
										
										--Inputs
										if IN2 = '1' then fsm_state <= B;
										elsif IN0 = '1' then fsm_state <= C;
										elsif IN1 = '1' then fsm_state <= A;
										end if;
										
										
					when C =>		--Outputs
										--LED <= b"0000_1111";
										
										
										--Inputs
										if IN1 = '1' then fsm_state <= B;
										elsif IN2 = '1' then fsm_state <= C;
										elsif IN0 = '1' then fsm_state <= A;
										end if;
											
										
										
				end case;
		end if;
	end PROCESS;
	
	PROCESS(fsm_state)
	
	begin
		
		case fsm_state is
			when A => LED <= "11111111";
			when B => LED <= "11110000";
			when C => LED <= "00001111";
		end case;
		
	end Process;
			
end Behavioral;

