LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

 
ENTITY TB_ssd_Mux32to8 IS
END TB_ssd_Mux32to8;
 
ARCHITECTURE behavior OF TB_ssd_Mux32to8 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ssd_Mux32To8
    PORT(
         DATA_IN : IN  std_logic_vector(31 downto 0);
         SEL : IN  std_logic_vector(1 downto 0);
         SEG : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal DATA_IN : std_logic_vector(31 downto 0) := (others => '1');
   signal SEL : std_logic_vector(1 downto 0) := (others => '0');

 	--Outputs
   signal SEG : std_logic_vector(7 downto 0);
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ssd_Mux32To8 PORT MAP (
          DATA_IN => DATA_IN,
          SEL => SEL,
          SEG => SEG
        );


   -- Stimulus process
   stim_proc: process
   begin		
      ---------------------------------------------------
		DATA_IN <= (others => '1');
		SEL <= (others => '0');
		
		--Testing 'E' in AN0
		DATA_IN(0) <= '0';
		DATA_IN(3) <= '0';
		DATA_IN(4) <= '0';
		DATA_IN(5) <= '0';
		DATA_IN(6) <= '0';

      wait for 100 ns;
		
		--Testing 'F' in AN0
		DATA_IN <= (others => '1');

		DATA_IN(0) <= '0';
		DATA_IN(4) <= '0';
		DATA_IN(5) <= '0';
		DATA_IN(6) <= '0';
      wait for 100 ns;	
		
		--Testing 'OVF' in AN0,AN1,AN2
		
		--AN0
		DATA_IN <= (others => '1');

		DATA_IN(0) <= '0';
		DATA_IN(3) <= '0';
		DATA_IN(4) <= '0';
		DATA_IN(5) <= '0';
		DATA_IN(6) <= '0';
      wait for 50 ns;

		--AN1
		DATA_IN <= (others => '1');

		DATA_IN(9) <= '0';
		DATA_IN(10) <= '0';
		DATA_IN(11) <= '0';
		DATA_IN(12) <= '0';
		DATA_IN(13) <= '0';
		
		SEL(0) <= '1';
		SEL(1) <= '0';
		wait for 50 ns;

		--AN2
		DATA_IN <= (others => '1');

		DATA_IN(16) <= '0';
		DATA_IN(17) <= '0';
		DATA_IN(18) <= '0';
		DATA_IN(19) <= '0';
		DATA_IN(20) <= '0';
		DATA_IN(21) <= '0';
		
		SEL(0) <= '0';
		SEL(1) <= '1';

      ---------------------------------------------------

      wait;
   end process;

END;
