library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity StackFSM is
    Port ( CLK : in  STD_LOGIC;
           RST : in  STD_LOGIC;
           BTN0 : in  STD_LOGIC;
           BTN1 : in  STD_LOGIC;
			  MODE : in STD_LOGIC_VECTOR (1 downto 0);
           FULL : in  STD_LOGIC;
           EMPTY : in  STD_LOGIC;
           EN : out  STD_LOGIC;
			  UD : out  STD_LOGIC;
			  STACK_STATE : out STD_LOGIC_VECTOR (1 downto 0));
end StackFSM;

architecture Behavioral of StackFSM is

	type states is (B,E,F,OVF);
	signal fsm_state : states;

begin

FSM: Process (CLK)
begin

	if rising_edge(CLK) then
		if (RST = '1') then fsm_state <= E;
		else
			case fsm_state is
				when E => if (BTN0 = '1') then fsm_state <= B;
							 else fsm_state <= E;
							 end if;
							 
				when B => if (FULL = '1') then fsm_state <= F;
							 elsif (EMPTY = '1') then fsm_state <= E;
							 else fsm_state <= B;
							 end if;
				
				
				when F => if (BTN0 = '1') then fsm_state <= OVF;
							 elsif (BTN1 = '1') then fsm_state <= B;
							 else fsm_state <= F;
							 end if;
				
				when OVF => fsm_state <= OVF;
				
				when others => fsm_state <= E;
				
				
				end case;
			end if;
	end if;

end process;

Outputs: Process(CLK, fsm_state, BTN0, BTN1, MODE)
begin
	if (MODE = "00") then
		case fsm_state is
			when E => 
						STACK_STATE <= "01";
						if BTN0 = '1'  then
							EN <='1';
							UD <= '1';
						elsif BTN1 = '1' then
							EN <='0';
							UD <= '0';
						else EN <= '0';
							  UD <= '0';
						end if;
						
			
			when B => STACK_STATE <= "00";
						if BTN0 = '1' then
							EN <='1';
							UD <= '1';
						elsif BTN1 = '1' then
							EN <='1';
							UD <= '0';
						else EN <= '0';
							UD <= '0';
						end if;
						
						
			when F => STACK_STATE <= "10";
						if BTN1 = '1'  then 
							EN <='1';
							UD <= '0';
						elsif BTN0 = '1' then
							EN <='0';
							UD <= '1';
						else EN <= '0';
							  UD <= '0';
						end if;
						
			
			when OVF => STACK_STATE <= "11";
						  EN <= '0';
						  UD <= '1';
			
			when others=> EN <= '0';
							  UD <= '0';
			
		end case;
	else
		STACK_STATE <= "00";
		EN <= '0';
		UD <= '0';
	end if;
end process;
end Behavioral;

