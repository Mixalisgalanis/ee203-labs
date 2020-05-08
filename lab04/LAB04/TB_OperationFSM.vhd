LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY TB_OperationFSM IS
END TB_OperationFSM;
 
ARCHITECTURE behavior OF TB_OperationFSM IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT OperationFSM
    PORT(
         BTN0 : IN  std_logic;
         BTN1 : IN  std_logic;
         BTN2 : IN  std_logic;
         CLK : IN  std_logic;
         RST : IN  std_logic;
         OPOut : OUT  std_logic;
         SEL : OUT  std_logic_vector(1 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal BTN0 : std_logic := '0';
   signal BTN1 : std_logic := '0';
   signal BTN2 : std_logic := '0';
   signal CLK : std_logic := '0';
   signal RST : std_logic := '0';

 	--Outputs
   signal OPOut : std_logic;
   signal SEL : std_logic_vector(1 downto 0);

   -- Clock period definitions
   constant CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: OperationFSM PORT MAP (
          BTN0 => BTN0,
          BTN1 => BTN1,
          BTN2 => BTN2,
          CLK => CLK,
          RST => RST,
          OPOut => OPOut,
          SEL => SEL
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
      ----------------------------------
		RST <= '1';
      wait for 100 ns;	
		RST <= '0';
		
		-- M0 -> M1
		BTN2 <= '1';
		wait for CLK_period;
		BTN2 <= '0';
		wait for CLK_period*5;
		
		-- M1 -> M2
		BTN2 <= '1';
		wait for CLK_period;
		BTN2 <= '0';
		wait for CLK_period*5;
		
		-- M2 -> M0
		BTN2 <= '1';
		wait for CLK_period;
		BTN2 <= '0';
		wait for CLK_period*5;
		--push
		BTN0 <= '1';
		BTN1 <= '0';
		wait for CLK_period;
		BTN0 <= '0';
		BTN1 <= '0';
		
		-- M0 -> M1
		BTN2 <= '1';
		wait for CLK_period;
		BTN2 <= '0';
		wait for CLK_period*5;
		--sub
		BTN0 <= '0';
		BTN1 <= '1';
		wait for CLK_period;
		BTN0 <= '0';
		BTN1 <= '0';
		
		-- M1 -> M2
		BTN2 <= '1';
		wait for CLK_period;
		BTN2 <= '0';
		wait for CLK_period*5;
		--un
		BTN0 <= '1';
		BTN1 <= '0';
		wait for CLK_period;
		BTN0 <= '0';
		BTN1 <= '0';
		
		wait for CLK_period*10;
      ----------------------------------
      wait;
   end process;

END;
