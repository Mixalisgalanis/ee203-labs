LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY TB_ssd_Fsm IS
END TB_ssd_Fsm;
 
ARCHITECTURE behavior OF TB_ssd_Fsm IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ssd_Fsm
    PORT(
         CLK : IN  std_logic;
         RST : IN  std_logic;
         FULL : IN  std_logic;
         DATA_OUT : OUT  std_logic_vector(1 downto 0)
        );
    END COMPONENT;
    
   --Inputs
   signal CLK : std_logic := '0';
   signal RST : std_logic := '0';
   signal FULL : std_logic := '0';

 	--Outputs
   signal DATA_OUT : std_logic_vector(1 downto 0);

   -- Clock period definitions
   constant CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ssd_Fsm PORT MAP (
          CLK => CLK,
          RST => RST,
          FULL => FULL,
          DATA_OUT => DATA_OUT
        );

   -- Clock process definitions
   CLK_process :process
   begin
		CLK <= '0';
		wait for CLK_period/2;
		CLK <= '1';
		wait for CLK_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      ---------------------------------------------------
		--Initialize
		RST <= '1';
      wait for 100 ns;	

		RST <= '0';
		FULL <= '0';
      wait for CLK_period;
		
		wait for CLK_period *10;
		
		--Proceed to next state B
		FULL <= '1';
		wait for CLK_period;
		FULL <= '0';
		--Waits 10 cycles (until 125K)
		wait for CLK_period *10;
		
		--Proceed to next state C
		FULL <= '1';
		wait for CLK_period;
		FULL <= '0';
		--Waits 10 cycles (until 125K)
		wait for CLK_period *10;
		
		--Proceed to next state D
		FULL <= '1';
		wait for CLK_period;
		FULL <= '0';
		--Waits 10 cycles (until 125K)
		wait for CLK_period *10;
		
		--Proceed to next state A
		FULL <= '1';
		wait for CLK_period;
		FULL <= '0';
		--Waits 10 cycles (until 125K)
		wait for CLK_period *10;
		
		--Proceed to next state B
		FULL <= '1';
		wait for CLK_period;
		FULL <= '0';
		--Waits 10 cycles (until 125K)
		wait for CLK_period *10;
		
		--Resets to A
		RST <= '1';
      wait for 100 ns;	

		RST <= '0';
		FULL <= '0';
      wait for CLK_period;
		

      ---------------------------------------------------
      wait;
   end process;

END;
