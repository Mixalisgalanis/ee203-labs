LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY TB_TOP_MODULE IS
END TB_TOP_MODULE;
 
ARCHITECTURE behavior OF TB_TOP_MODULE IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT TOP_MODULE
    PORT(
         PUSH : IN  std_logic;
         POP : IN  std_logic;
         UNKNOWN : IN  std_logic;
         RST : IN  std_logic;
         CLK : IN  std_logic;
         NUM_IN : IN  std_logic_vector(7 downto 0);
         NUM_OUT : OUT  std_logic_vector(7 downto 0);
         SSD_EN : OUT  std_logic_vector(3 downto 0);
         SSD_VALUE : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal PUSH : std_logic := '0';
   signal POP : std_logic := '0';
   signal UNKNOWN : std_logic := '0';
   signal RST : std_logic := '0';
   signal CLK : std_logic := '0';
   signal NUM_IN : std_logic_vector(7 downto 0) := (others => '0');
   signal NUM_OUT : std_logic_vector(7 downto 0) := (others => '0');

 	--Outputs
   signal SSD_EN : std_logic_vector(3 downto 0);
   signal SSD_VALUE : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: TOP_MODULE PORT MAP (
          PUSH => PUSH,
          POP => POP,
          UNKNOWN => UNKNOWN,
          RST => RST,
          CLK => CLK,
          NUM_IN => NUM_IN,
          NUM_OUT => NUM_OUT,
          SSD_EN => SSD_EN,
          SSD_VALUE => SSD_VALUE
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
      ----------------------------------------
		--Instatiation
		NUM_IN <= "00000000";
		RST <= '1';
		wait for CLK_period;
		RST <= '0';
		wait for CLK_period * 500000;
		
		--Push 00001111
		RST <= '0';
		NUM_IN <= "00001111";
		PUSH <= '1';
      wait for CLK_period;
		
		PUSH <= '0';
		wait for CLK_period * 500000;
		
		
		--Push 11110000		
		NUM_IN <= "11110000";
		PUSH <= '1';
      wait for CLK_period;
		
		PUSH <= '0';
		wait for CLK_period * 500000;
		
		
		--Push 10010111
		NUM_IN <= "10010111";
		PUSH <= '1';
      wait for CLK_period;
		
		PUSH <= '0';
		wait for CLK_period * 500000;
		
		
		--Push 01100111
		NUM_IN <= "01100111";
		PUSH <= '1';
      wait for CLK_period;
		
		PUSH <= '0';
		wait for CLK_period * 500000;
		
		
		--Push 11001100
		NUM_IN <= "11001100";
		PUSH <= '1';
      wait for CLK_period;
		
		PUSH <= '0';
		wait for CLK_period * 500000;
		
		
		--Push 10101010
		NUM_IN <= "10101010";
		PUSH <= '1';
      wait for CLK_period;
		
		PUSH <= '0';
		wait for CLK_period * 500000;
		
		
		--Push 01010101
		NUM_IN <= "01010101";
		PUSH <= '1';
      wait for CLK_period;
		
		PUSH <= '0';
		wait for CLK_period * 500000;
		
		
		--Push 00110100
		NUM_IN <= "00110100";
		PUSH <= '1';
      wait for CLK_period;
		
		PUSH <= '0';
		wait for CLK_period * 500000;
		
		
		--Push 10001011
		NUM_IN <= "10001011";
		PUSH <= '1';
      wait for CLK_period;
		
		PUSH <= '0';
		wait for CLK_period * 500000;
		
		
		--Push 00011011
		NUM_IN <= "00011011";
		PUSH <= '1';
      wait for CLK_period;
		
		PUSH <= '0';
		wait for CLK_period * 500000;
		
		
		--Push 10000000
		NUM_IN <= "10000000";
		PUSH <= '1';
      wait for CLK_period;
		
		PUSH <= '0';
		wait for CLK_period * 500000;
		
		
		--Push 01001110
		NUM_IN <= "01001110";
		PUSH <= '1';
      wait for CLK_period;
		
		PUSH <= '0';
		wait for CLK_period * 500000;
		
		
		--Push 10101111
		NUM_IN <= "10101111";
		PUSH <= '1';
      wait for CLK_period;
		
		PUSH <= '0';
		wait for CLK_period * 500000;
		
		
		
		--Pop
		POP <= '1';
      wait for CLK_period;
		POP <= '0';
		wait for CLK_period * 500000;
		
		--Pop
		POP <= '1';
		wait for CLK_period;
		POP <= '0';
		wait for CLK_period * 500000;
		
		
		
		RST <= '1';
		wait for CLK_period;
		RST <= '0';
		wait for CLK_period * 500000;
		----------------------------------------

      wait;
   end process;

END;
