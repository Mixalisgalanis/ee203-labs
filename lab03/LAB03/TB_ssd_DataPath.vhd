LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY TB_ssd_DataPath IS
END TB_ssd_DataPath;
 
ARCHITECTURE behavior OF TB_ssd_DataPath IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ssd_DataPath
    PORT(
         STATE : IN  std_logic_vector(1 downto 0);
         SEL : IN  std_logic_vector(1 downto 0);
         SEG : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal STATE : std_logic_vector(1 downto 0) := (others => '0');
   signal SEL : std_logic_vector(1 downto 0) := (others => '0');

 	--Outputs
   signal SEG : std_logic_vector(7 downto 0);
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ssd_DataPath PORT MAP (
          STATE => STATE,
          SEL => SEL,
          SEG => SEG
        );

   -- Stimulus process
   stim_proc: process
   begin		
      ---------------------------------------------------
		SEL(0) <= '0';
		SEL(1) <= '0';
		
		STATE(0) <= '0';
		STATE(1) <= '0';
		
		--Testing State 00: Between State - ALL SSD's are off
		SEL <= "00"; --AN0
      wait for 25 ns;
		SEL <= "01"; --AN1
      wait for 25 ns;
		SEL <= "10"; --AN2
      wait for 25 ns;
		SEL <= "11"; --AN3
      wait for 25 ns;
		
		
		--Testing State 01: Empty State
		STATE <= "01";
		
		SEL <= "00"; --AN0
      wait for 25 ns;
		SEL <= "01"; --AN1
      wait for 25 ns;
		SEL <= "10"; --AN2
      wait for 25 ns;
		SEL <= "11"; --AN3
      wait for 25 ns;
		
		
		--Testing State 10: Full State
		STATE <= "10";
		
		SEL <= "00"; --AN0
      wait for 25 ns;
		SEL <= "01"; --AN1
      wait for 25 ns;
		SEL <= "10"; --AN2
      wait for 25 ns;
		SEL <= "11"; --AN3
      wait for 25 ns;
	
	
		--Testing State 01: Overflow State
		STATE <= "11";
		
		SEL <= "00"; --AN0
      wait for 25 ns;
		SEL <= "01"; --AN1
      wait for 25 ns;
		SEL <= "10"; --AN2
      wait for 25 ns;
		SEL <= "11"; --AN3
      wait for 25 ns;
      ---------------------------------------------------

      wait;
   end process;

END;
