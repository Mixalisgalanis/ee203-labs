LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY TB_COUNTER IS
END TB_COUNTER;
 
ARCHITECTURE behavior OF TB_COUNTER IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Counter
    PORT(
         CLK : IN  std_logic;
         RST : IN  std_logic;
         U_D : IN  std_logic;
			EN  : IN std_logic;
         Q : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal CLK : std_logic := '0';
   signal RST : std_logic := '0';
   signal U_D : std_logic := '0';
	signal EN  : std_logic := '1';

 	--Outputs
   signal Q : std_logic_vector(3 downto 0);

   -- Clock period definitions
   constant CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Counter PORT MAP (
          CLK => CLK,
          RST => RST,
          U_D => U_D,
			 EN  => EN,
          Q => Q
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
		wait for CLK_period;
		
      RST <= '0';
		wait for CLK_period;
		
		RST <= '1';
		U_D <= '1';
		wait for CLK_period*20;
		
		U_D <= '0';
		wait for CLK_period*10;

		RST <= '0';
		wait for CLK_period;
		EN <= '0';
		
      -- insert stimulus here 

      wait;
   end process;

END;
