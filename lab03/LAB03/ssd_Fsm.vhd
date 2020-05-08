library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ssd_Fsm is
    Port ( CLK : in  STD_LOGIC;
           RST : in  STD_LOGIC;
           FULL : in  STD_LOGIC;
           DATA_OUT : out  STD_LOGIC_VECTOR (1 downto 0));
end ssd_Fsm;

architecture Behavioral of ssd_Fsm is

	-- A=00, B=01, C=10, D=11
	TYPE state IS (A,B,C,D);
	signal fsm_state : state;

begin

	Process
	
	begin
	
		wait until (CLK' event and CLK = '1');
		
		if (RST = '1') then fsm_state <= A;
		else
		
			case fsm_state is
				when A => if FULL = '1' then 
									fsm_state <= B;
								 else fsm_state <= A;
								 end if;
				
				when B => if FULL = '1' then 
									fsm_state <= C;
								 else fsm_state <= B;
								 end if;
				
				when C => if FULL = '1' then 
									fsm_state <= D;
								 else fsm_state <= C;
								 end if;
				
				when D => if FULL = '1' then 
									fsm_state <= A;
								 else fsm_state <= D;
								 end if;
				
				when others => fsm_state <= A;
				
				end case;
		end if;
		
	end Process;
	
	Process(fsm_state)
	
	begin
	
		case fsm_state is
			when A => DATA_OUT <= "00";
			when B => DATA_OUT <= "01";
			when C => DATA_OUT <= "10";
			when D => DATA_OUT <= "11";
		end case;
	end Process;
		
	
end Behavioral;

