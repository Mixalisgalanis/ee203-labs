LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY TB_STACK_CONTROLLER IS
END TB_STACK_CONTROLLER;
 
ARCHITECTURE behavior OF TB_STACK_CONTROLLER IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT STACK_CONTROLLER
    PORT(
         CLK : IN  std_logic;
         RST : IN  std_logic;
         PUSH : IN  std_logic;
         POP : IN  std_logic;
         NUM_IN : IN  std_logic_vector(7 downto 0);
         NUM_OUT : OUT  std_logic_vector(7 downto 0);
         STATE : OUT  std_logic_vector(1 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal CLK : std_logic := '0';
   signal RST : std_logic := '0';
   signal PUSH : std_logic := '0';
   signal POP : std_logic := '0';
   signal NUM_IN : std_logic_vector(7 downto 0) := (others => '0');

 	--Outputs
   signal NUM_OUT : std_logic_vector(7 downto 0);
   signal STATE : std_logic_vector(1 downto 0);

   -- Clock period definitions
   constant CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: STACK_CONTROLLER PORT MAP (
          CLK => CLK,
          RST => RST,
          PUSH => PUSH,
          POP => POP,
          NUM_IN => NUM_IN,
          NUM_OUT => NUM_OUT,
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
      -----------------------------------------
      RST <= '1';
		wait for CLK_period;
		RST <= '0';
		wait for CLK_period * 5;
		
		
		--Push 00001111
		RST <= '0';
		NUM_IN <= "00001111";
		PUSH <= '1';
      wait for CLK_period;
		
		PUSH <= '0';
		wait for CLK_period * 5;
		
		
		--Push 11110000		
		NUM_IN <= "11110000";
		PUSH <= '1';
      wait for CLK_period;
		
		PUSH <= '0';
		wait for CLK_period * 5;
		
		
		--Push 10010111
		NUM_IN <= "10010111";
		PUSH <= '1';
      wait for CLK_period;
		
		PUSH <= '0';
		wait for CLK_period * 5;
		
		
		--Push 01100111
		NUM_IN <= "01100111";
		PUSH <= '1';
      wait for CLK_period;
		
		PUSH <= '0';
		wait for CLK_period * 5;
		
		
		--Push 11001100
		NUM_IN <= "11001100";
		PUSH <= '1';
      wait for CLK_period;
		
		PUSH <= '0';
		wait for CLK_period * 5;
		
		
		--Push 10101010
		NUM_IN <= "10101010";
		PUSH <= '1';
      wait for CLK_period;
		
		PUSH <= '0';
		wait for CLK_period * 5;
		
		
		--Push 01010101
		NUM_IN <= "01010101";
		PUSH <= '1';
      wait for CLK_period;
		
		PUSH <= '0';
		wait for CLK_period * 5;
		
		
		--Push 00110100
		NUM_IN <= "00110100";
		PUSH <= '1';
      wait for CLK_period;
		
		PUSH <= '0';
		wait for CLK_period * 5;
		
		
		--Push 10001011
		NUM_IN <= "10001011";
		PUSH <= '1';
      wait for CLK_period;
		
		PUSH <= '0';
		wait for CLK_period * 5;
		
		
		--Push 00011011
		NUM_IN <= "00011011";
		PUSH <= '1';
      wait for CLK_period;
		
		PUSH <= '0';
		wait for CLK_period * 5;
		
		
		--Push 10000000
		NUM_IN <= "10000000";
		PUSH <= '1';
      wait for CLK_period;
		
		PUSH <= '0';
		wait for CLK_period * 5;
		
		--Push 01001110
		NUM_IN <= "01001110";
		PUSH <= '1';
      wait for CLK_period;
		
		PUSH <= '0';
		wait for CLK_period * 5;
		
		
		--Push 10101111
		NUM_IN <= "10101111";
		PUSH <= '1';
      wait for CLK_period;
		
		PUSH <= '0';
		wait for CLK_period * 5;
		
		
		
		--Pop
		POP <= '1';
      wait for CLK_period;
		POP <= '0';
		wait for CLK_period*5;
		
		--Pop
		POP <= '1';
		wait for CLK_period;
		POP <= '0';
		wait for CLK_period*5;
		
		
		
		RST <= '1';
		wait for CLK_period;
		RST <= '0';
		wait for CLK_period * 5;

      -----------------------------------------

      wait;
   end process;

END;
