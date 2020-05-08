LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY LAB02_TB IS
END LAB02_TB;
 
ARCHITECTURE behavior OF LAB02_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT TOP_FSM
    PORT(
         RST : IN  std_logic;
         IN0 : IN  std_logic;
         IN1 : IN  std_logic;
         IN2 : IN  std_logic;
         CLK : IN  std_logic;
         LED : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;

   --Inputs
   signal RST : std_logic := '0';
   signal IN0 : std_logic := '0';
   signal IN1 : std_logic := '0';
   signal IN2 : std_logic := '0';
   signal CLK : std_logic := '0';

 	--Outputs
   signal LED : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: TOP_FSM PORT MAP (
          RST => RST,
          IN0 => IN0,
          IN1 => IN1,
          IN2 => IN2,
          CLK => CLK,
          LED => LED
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
      -- hold reset state for 100 ns.
		
		RST<='0';
		IN0<='0';
		IN1<='0';
		IN2<='0';
		wait for CLK_period*10;
		
      
		
		RST<='0';
		IN0<='1';
		IN1<='0';
		IN2<='0';
		wait for CLK_period*10;
      
		RST<='0';
		IN0<='0';
		IN1<='1';
		IN2<='0';
      wait for CLK_period*10;		
		
		RST<='0';
		IN0<='0';
		IN1<='0';
		IN2<='1';
      wait for CLK_period*10;	
		
		
		RST<='1';
		IN0<='0';
		IN1<='0';
		IN2<='0';
		wait for CLK_period*10;
		
		
		RST<='1';
		IN0<='1';
		IN1<='0';
		IN2<='0';
      wait for CLK_period*10;
		
		
		RST<='1';
		IN0<='0';
		IN1<='1';
		IN2<='0';
      wait for CLK_period*10;
		
		RST<='1';
		IN0<='0';
		IN1<='0';
		IN2<='1';
      wait for CLK_period*10;
		
		

      -- insert stimulus here 

      wait;
   end process;

END;
