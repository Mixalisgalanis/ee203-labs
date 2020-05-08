LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY TB_TOP_MODULE IS
END TB_TOP_MODULE;
 
ARCHITECTURE behavior OF TB_TOP_MODULE IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT TOP_MODULE
    PORT(
         BTN0 : IN  std_logic;
         BTN1 : IN  std_logic;
         MODE : IN  std_logic;
         RST : IN  std_logic;
         CLK : IN  std_logic;
         NUM_IN : IN  std_logic_vector(7 downto 0);
         NUM_OUT : OUT  std_logic_vector(7 downto 0);
         SSD_EN : OUT  std_logic_vector(3 downto 0);
         SSD_VALUE : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal BTN0 : std_logic := '0';
   signal BTN1 : std_logic := '0';
   signal MODE : std_logic := '0';
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
          BTN0 => BTN0,
          BTN1 => BTN1,
          MODE => MODE,
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
		
		--BTN0 00001111
		RST <= '0';
		NUM_IN <= "00001111";
		BTN0 <= '1';
      wait for CLK_period;
		
		BTN0 <= '0';
		wait for CLK_period * 500000;
		
		
		--BTN0 11110000		
		NUM_IN <= "11110000";
		BTN0 <= '1';
      wait for CLK_period;
		
		BTN0 <= '0';
		wait for CLK_period * 500000;
		
		
		--BTN0 10010111
		NUM_IN <= "10010111";
		BTN0 <= '1';
      wait for CLK_period;
		
		BTN0 <= '0';
		wait for CLK_period * 500000;
		
		
		--BTN0 01100111
		NUM_IN <= "01100111";
		BTN0 <= '1';
      wait for CLK_period;
		
		BTN0 <= '0';
		wait for CLK_period * 500000;
		
		
		--BTN0 11001100
		NUM_IN <= "11001100";
		BTN0 <= '1';
      wait for CLK_period;
		
		BTN0 <= '0';
		wait for CLK_period * 500000;
		
		
		--BTN0 10101010
		NUM_IN <= "10101010";
		BTN0 <= '1';
      wait for CLK_period;
		
		BTN0 <= '0';
		wait for CLK_period * 500000;
		
		
		--BTN0 01010101
		NUM_IN <= "01010101";
		BTN0 <= '1';
      wait for CLK_period;
		
		BTN0 <= '0';
		wait for CLK_period * 500000;
		
		
		--BTN0 00110100
		NUM_IN <= "00110100";
		BTN0 <= '1';
      wait for CLK_period;
		
		BTN0 <= '0';
		wait for CLK_period * 500000;
		
		
		--BTN0 10001011
		NUM_IN <= "10001011";
		BTN0 <= '1';
      wait for CLK_period;
		
		BTN0 <= '0';
		wait for CLK_period * 500000;
		
		
		--BTN0 00011011
		NUM_IN <= "00011011";
		BTN0 <= '1';
      wait for CLK_period;
		
		BTN0 <= '0';
		wait for CLK_period * 500000;
		
		
		--BTN0 10000000
		NUM_IN <= "10000000";
		BTN0 <= '1';
      wait for CLK_period;
		
		BTN0 <= '0';
		wait for CLK_period * 500000;
		
		
		--BTN0 01001110
		NUM_IN <= "01001110";
		BTN0 <= '1';
      wait for CLK_period;
		
		BTN0 <= '0';
		wait for CLK_period * 500000;
		
		
		--BTN0 10101111
		NUM_IN <= "10101111";
		BTN0 <= '1';
      wait for CLK_period;
		
		BTN0 <= '0';
		wait for CLK_period * 500000;
		
		
		
		--BTN1
		BTN1 <= '1';
      wait for CLK_period;
		BTN1 <= '0';
		wait for CLK_period * 500000;
		
		--BTN1
		BTN1 <= '1';
		wait for CLK_period;
		BTN1 <= '0';
		wait for CLK_period * 500000;
		
		
		--Resets
		RST <= '1';
		wait for CLK_period;
		RST <= '0';
		wait for CLK_period * 500000;
		
		--Push 10001011
		NUM_IN <= "10001011";
		BTN0 <= '1';
      wait for CLK_period;
		BTN0 <= '0';
		wait for CLK_period * 500000;
		
		--Mode 0->1 (should display '1')
		MODE <= '1';
		wait for CLK_period;
		MODE <= '0';
		wait for CLK_period * 500000;
		
		--Should display 'A'
		BTN0 <= '1';
      wait for CLK_period;
		BTN0 <= '0';
		wait for CLK_period * 500000;
		
		--Should display 'S'
		BTN1 <= '1';
      wait for CLK_period;
		BTN1 <= '0';
		wait for CLK_period * 500000;
		
		--Mode 1->2 (should display '2')
		MODE <= '1';
		wait for CLK_period;
		MODE <= '0';
		wait for CLK_period * 500000;
		
		--Should display 'U'
		BTN0 <= '1';
      wait for CLK_period;
		BTN0 <= '0';
		wait for CLK_period * 500000;
		
		--Should display 'X<>Y'
		BTN1 <= '1';
      wait for CLK_period;
		BTN1 <= '0';
		wait for CLK_period * 500000;
		
		--Resets
		RST <= '1';
		wait for CLK_period;
		RST <= '0';
		wait for CLK_period * 500000;
		----------------------------------------

      wait;
   end process;

END;
