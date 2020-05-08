library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity OperationFSM is
    Port ( BTN0 : in  STD_LOGIC;
           BTN1 : in  STD_LOGIC;
           MODE : in  STD_LOGIC;
			  OVF : in STD_LOGIC;
			  CLK : in STD_LOGIC;
           RST : in  STD_LOGIC;
           OPOut : out  STD_LOGIC;
           SEL : out  STD_LOGIC_VECTOR (1 downto 0));
end OperationFSM;

architecture Behavioral of OperationFSM is

	type states is (M0,M1,M2,add,sub,un,swap);
	signal fsm_state : states;

begin


FSM: Process (CLK)
begin



	if rising_edge(CLK) then
		if (RST = '1') then fsm_state <= M0;
		else
			case fsm_state is
				when M0 => if (MODE = '1') then fsm_state <= M1;
							  else fsm_state <= M0;
							  end if;
				when M1 => if (MODE = '1') then fsm_state <= M2;
							  elsif (BTN0 = '1' and BTN1 = '0') then fsm_state <= add;
							  elsif (BTN0 = '0' and BTN1 = '1') then fsm_state <= sub;
							  else fsm_state <= M1;
							  end if;
				when M2 => if (MODE = '1') then fsm_state <= M0;
							  elsif (BTN0 = '1' and BTN1 = '0') then fsm_state <= un;
							  elsif (BTN0 = '0' and BTN1 = '1') then fsm_state <= swap;
							  else fsm_state <= M2;
							  end if;
				when add => if (OVF = '1') then fsm_state <= add;
								elsif (MODE = '1') then fsm_state <= M2;
								elsif (BTN0 = '0' and BTN1 = '1') then fsm_state <= sub;
								else fsm_state <= add;
								end if;
				when sub => if (OVF = '1') then fsm_state <= sub;
								elsif (MODE = '1') then fsm_state <= M2;
								elsif (BTN0 = '1' and BTN1 = '0') then fsm_state <= add;
								else fsm_state <= sub;	
								end if;
				when un => if (MODE = '1') then fsm_state <= M0;
								elsif (BTN0 = '0' and BTN1 = '1') then fsm_state <= swap;
								else fsm_state <= un;
								end if;
				when swap => if (MODE = '1') then fsm_state <= M0;
								elsif (BTN0 = '1' and BTN1 = '0') then fsm_state <= un;
								else fsm_state <= swap;
								end if;
				when others => fsm_state <= M0;
			end case;
		end if;
	end if;

end Process;




Outputs: Process (fsm_state)
begin
	case fsm_state is
		when M0 => SEL <= "00";
					  OpOut <= '0';
		
		when M1 => SEL <= "11";
					  OpOut <= '0';
						
		when M2 => SEL <= "11";
					  OpOut <= '1';
		when add => SEL <= "01";
						OpOut <= '0';
		when sub => SEL <= "01";
						OpOut <= '1';			
		when un => SEL <= "10";
						OpOut <= '0';
		when swap => SEL <= "10";
						OpOut <= '1';
		when others => SEL <= "00";
							OPOut <= '0';
		
	
	end case;
end Process;


end Behavioral;

