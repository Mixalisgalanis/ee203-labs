library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity OperationFSM is
    Port ( BTN0 : in  STD_LOGIC;
           BTN1 : in  STD_LOGIC;
           MODE : in  STD_LOGIC;
			  CLK : in STD_LOGIC;
           RST : in  STD_LOGIC;
           OPOut : out  STD_LOGIC;
           SEL : out  STD_LOGIC_VECTOR (1 downto 0));
end OperationFSM;

architecture Behavioral of OperationFSM is

	type states is (M0,M1,M2);
	signal fsm_state : states;

begin


FSM: Process (CLK)
begin



	if rising_edge(CLK) then
		if (RST = '1') then fsm_state <= M0;
		else
			case fsm_state is
				when M0 => if (MODE = '1') then fsm_state <= M1;
							  end if;
				when M1 => if (MODE = '1') then fsm_state <= M2;
							  end if;
				when M2 => if (MODE = '1') then fsm_state <= M0;
							  end if;
				when others => fsm_state <= M0;
			end case;
		end if;
	end if;
	
	
	
	
end Process;


Outputs: Process (fsm_state, BTN0, BTN1)
begin
	case fsm_state is
		when M0 => SEL <= "00";
						if (BTN0 = '1') and (BTN1 = '0') then
							OPOut <= '0';
						elsif (BTN0 = '0') and (BTN1 = '1') then
							OPOut <= '1';
						else OPOut <= '0';
						end if;
		
		when M1 => 
						if (BTN0 = '1') and (BTN1 = '0') then
							OPOut <= '0';
							SEL <= "01";
						elsif (BTN0 = '0') and (BTN1 = '1') then
							OPOut <= '1';
							SEL <= "01";
						else  OPOut <= '0';
								SEL <= "11";	
						end if;
						
		when M2 => 
						if (BTN0 = '1') and (BTN1 = '0') then
							OPOut <= '0';
							SEL <= "10";
						elsif (BTN0 = '0') and (BTN1 = '1') then
							OPOut <= '1';
							SEL <= "10";
						else  OPOut <= '1';
								SEL <= "11";
						end if;


		when others => SEL <= "00";
							OPOut <= '0';
		
	
	end case;
end Process;


end Behavioral;

