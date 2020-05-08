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
		RST <= '1';
		wait for CLK_period;
		RST <= '0';
		wait for CLK_period * 500000;
		
		--Inserting a few numbers
		
		--Push number '50'
		NUM_IN <= "00110010";
		BTN0 <= '1';
      wait for CLK_period;
		BTN0 <= '0';
		wait for CLK_period * 500000;
		
		--Push number '12'
		NUM_IN <= "00001100";
		BTN0 <= '1';
      wait for CLK_period;
		BTN0 <= '0';
		wait for CLK_period * 500000;
		
		
		--Push number '2'
		NUM_IN <= "00000010";
		BTN0 <= '1';
      wait for CLK_period;
		BTN0 <= '0';
		wait for CLK_period * 500000;
		
		
		--Push number '4'
		NUM_IN <= "00000100";
		BTN0 <= '1';
      wait for CLK_period;
		BTN0 <= '0';
		wait for CLK_period * 500000;
		
		--Push number '20'
		NUM_IN <= "00010100";
		BTN0 <= '1';
      wait for CLK_period;
		BTN0 <= '0';
		wait for CLK_period * 500000;
		
		--Push number '63'
		NUM_IN <= "00111111";
		BTN0 <= '1';
      wait for CLK_period;
		BTN0 <= '0';
		wait for CLK_period * 500000;
		
		
		--CURRENT SIMULATION TIME : 35ms
		--Mode 0->1 (should display '1')
		MODE <= '1';
		wait for CLK_period;
		MODE <= '0';
		wait for CLK_period * 500000;
		
		--CURRENT SIMULATION TIME : 40ms (ADD)
		--Should display 'A - - -'
		--Add
		BTN0 <= '1';
      wait for CLK_period;
		BTN0 <= '0';
		wait for CLK_period * 500000;
		
		--CURRENT SIMULATION TIME : 45ms (SUB)
		--Should display 'S - - -'
		--Sub
		BTN1 <= '1';
      wait for CLK_period;
		BTN1 <= '0';
		wait for CLK_period * 500000;
		
		--CURRENT SIMULATION TIME : 50ms (SUB)
		--Should display 'S - - -'
		--Sub
		BTN1 <= '1';
      wait for CLK_period;
		BTN1 <= '0';
		wait for CLK_period * 500000;
		
		--Mode 1->2 (should display '2')
		MODE <= '1';
		wait for CLK_period;
		MODE <= '0';
		wait for CLK_period * 500000;
		
		--CURRENT SIMULATION TIME : 60ms (UN)
		--Should display 'U - - -'
		--Unary
		BTN0 <= '1';
      wait for CLK_period;
		BTN0 <= '0';
		wait for CLK_period * 500000;
		
		--CURRENT SIMULATION TIME : 65ms (SWAP)
		--Should display '[ ] - -'
		--Swap
		BTN1 <= '1';
      wait for CLK_period;
		BTN1 <= '0';
		wait for CLK_period * 500000;
		
		--Mode 2->0
		MODE <= '1';
		wait for CLK_period;
		MODE <= '0';
		wait for CLK_period * 500000;
		
		--Mode 0->1 (should display '1')
		MODE <= '1';
		wait for CLK_period;
		MODE <= '0';
		wait for CLK_period * 500000;
		
		--CURRENT SIMULATION TIME : 80ms (SUB)
		--Should display 'S - - -'
		--Sub
		BTN1 <= '1';
      wait for CLK_period;
		BTN1 <= '0';
		wait for CLK_period * 500000;
		
		--CURRENT SIMULATION TIME : 85ms (ADD)
		--Should display 'A - - -'
		--Add
		BTN0 <= '1';
      wait for CLK_period;
		BTN0 <= '0';
		wait for CLK_period * 500000;
		
		--OVERFLOW
		
		--Should display 'A O V F'
		--Add
		BTN0 <= '1';
      wait for CLK_period;
		BTN0 <= '0';
		wait for CLK_period * 500000;
		
		
		--Mode 1->2 (Should display 'A O V F')
		MODE <= '1';
		wait for CLK_period;
		MODE <= '0';
		wait for CLK_period * 500000;
		
		--Mode 2->0 (Should display 'A O V F')
		MODE <= '1';
		wait for CLK_period;
		MODE <= '0';
		wait for CLK_period * 500000;
		
		--Resets
		RST <= '1';
		wait for CLK_period;
		RST <= '0';
		wait for CLK_period * 500000;
		
		--TOTAL SIMULATION TIME : 110ms
		----------------------------------------

      wait;
   end process;

END;
