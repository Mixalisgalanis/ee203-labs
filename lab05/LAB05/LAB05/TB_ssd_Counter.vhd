LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
 
ENTITY TB_ssd_Counter IS
END TB_ssd_Counter;
 
ARCHITECTURE behavior OF TB_ssd_Counter IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ssd_Counter
    PORT(
         CLK : IN  std_logic;
         RST : IN  std_logic;
         EN : IN  std_logic;
         Q : OUT  std_logic_vector(16 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal CLK : std_logic := '0';
   signal RST : std_logic := '0';
   signal EN : std_logic := '0';

 	--Outputs
   signal Q : std_logic_vector(16 downto 0);

   -- Clock period definitions
   constant CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ssd_Counter PORT MAP (
          CLK => CLK,
          RST => RST,
          EN => EN,
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
		wait for CLK_period*5;
		
		EN <= '1';
		RST <= '0';
      wait for CLK_period*5;
		
		RST <= '1';
		
		wait for CLK_period*40;
		
		RST <= '0';
		wait for CLK_period*5;
		
		RST <= '1';
		wait for CLK_period*40;
		
      wait;
   end process;

END;
