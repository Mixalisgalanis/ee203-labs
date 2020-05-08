LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

 
ENTITY TB_StackFSM IS
END TB_StackFSM;
 
ARCHITECTURE behavior OF TB_StackFSM IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT StackFSM
    PORT(
         CLK : IN  std_logic;
         RST : IN  std_logic;
         PUSH : IN  std_logic;
         POP : IN  std_logic;
         FULL : IN  std_logic;
         EMPTY : IN  std_logic;
         EN : OUT  std_logic;
         UD : OUT  std_logic;
         STATE : OUT  std_logic_vector(1 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal CLK : std_logic := '0';
   signal RST : std_logic := '0';
   signal PUSH : std_logic := '0';
   signal POP : std_logic := '0';
   signal FULL : std_logic := '0';
   signal EMPTY : std_logic := '0';

 	--Outputs
   signal EN : std_logic;
   signal UD : std_logic;
   signal STATE : std_logic_vector(1 downto 0);

   -- Clock period definitions
   constant CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: StackFSM PORT MAP (
          CLK => CLK,
          RST => RST,
          PUSH => PUSH,
          POP => POP,
          FULL => FULL,
          EMPTY => EMPTY,
          EN => EN,
          UD => UD,
          STATE => STATE
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
      --------------------------------------------
		push <= '0';
		pop <= '0';
		full <= '0';
		empty <= '0';
      RST <= '1';
		wait for 100 ns;	
		
		--Empty State
		RST <= '0';
		
		--Between State
		push <= '1';
		wait for CLK_period;
		push <= '0';
		
		
		--Empty State
		empty <= '1';
		pop <= '1';
		wait for CLK_period;
		empty <= '0';
		pop <= '0';
		
		--Between State
		push <= '1';
		wait for CLK_period*10;
		push <= '0';
		

		
		--Full State
		full <= '1';
		push <= '1';
		wait for CLK_period;
		full <= '0';
		push <= '0';
		
		--Overflow State
		push <= '1';
		wait for CLK_period;
		push <= '0';
		
		--Should not push
		pop <= '1';
		wait for CLK_period;
		pop <= '0';
		
		
		--Empty State
		RST <= '1';
		wait for CLK_period;
		RST <= '0';
		
		
		

      wait for CLK_period*10;

      --------------------------------------------

      wait;
   end process;

END;
