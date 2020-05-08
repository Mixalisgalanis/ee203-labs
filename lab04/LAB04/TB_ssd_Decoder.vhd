LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY TB_ssd_Decoder IS
END TB_ssd_Decoder;
 
ARCHITECTURE behavior OF TB_ssd_Decoder IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ssd_Decoder
    PORT(
         STATE : IN  std_logic_vector(1 downto 0);
         EN : IN  std_logic;
         DATA_OUT : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal STATE : std_logic_vector(1 downto 0) := (others => '0');
   signal EN : std_logic := '0';

 	--Outputs
   signal DATA_OUT : std_logic_vector(31 downto 0);
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ssd_Decoder PORT MAP (
          STATE => STATE,
          EN => EN,
          DATA_OUT => DATA_OUT
        );

   -- Stimulus process
   stim_proc: process
   begin		
      ---------------------------------------------------
      wait for 100 ns;
		
		--Enabling Decoder
		
		EN <= '1';
		--Default state 00: Between state - All SSD's are off
		STATE <= "00";
		wait for 100 ns;
		
		--State 01: Empty state
		STATE <= "01";
		wait for 100 ns;
		
		--State 10: Full state
		STATE <= "10";
		wait for 100 ns;
		
		--State 11: Overflow state
		STATE <= "11";
		wait for 100 ns;
		

		---------------------------------------------------
      wait;
   end process;

END;
