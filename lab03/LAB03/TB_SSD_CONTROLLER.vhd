LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY TB_SSD_CONTROLLER IS
END TB_SSD_CONTROLLER;
 
ARCHITECTURE behavior OF TB_SSD_CONTROLLER IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT SSD_CONTROLLER
    PORT(
         CLK : IN  std_logic;
         RST : IN  std_logic;
         DATA_IN : IN  std_logic_vector(1 downto 0);
         DATA_OUT : OUT  std_logic_vector(7 downto 0);
         AN : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal CLK : std_logic := '0';
   signal RST : std_logic := '0';
   signal DATA_IN : std_logic_vector(1 downto 0) := (others => '0');

 	--Outputs
   signal DATA_OUT : std_logic_vector(7 downto 0);
   signal AN : std_logic_vector(3 downto 0);

   -- Clock period definitions
   constant CLK_period : time := 2 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: SSD_CONTROLLER PORT MAP (
          CLK => CLK,
          RST => RST,
          DATA_IN => DATA_IN,
          DATA_OUT => DATA_OUT,
          AN => AN
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
		RST <= '1';
		
		--Testing 00
		DATA_IN <= "00";
		wait for CLK_period*125;
		
		--Testing 01
		DATA_IN <= "01";
		wait for CLK_period*125;
		
		--Testing 10
		DATA_IN <= "10";
		wait for CLK_period*125;
		
		--Testing 11
		DATA_IN <= "11";
		wait for CLK_period*125;

      ---------------------------------------------------

      wait;
   end process;

END;
