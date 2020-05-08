LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY TB_ssd_Decoder2To4 IS
END TB_ssd_Decoder2To4;
 
ARCHITECTURE behavior OF TB_ssd_Decoder2To4 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ssd_Decoder2To4
    PORT(
         SEL : IN  std_logic_vector(1 downto 0);
         EN : IN  std_logic;
         AN : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal SEL : std_logic_vector(1 downto 0) := (others => '0');
   signal EN : std_logic := '0';

 	--Outputs
   signal AN : std_logic_vector(3 downto 0);
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ssd_Decoder2To4 PORT MAP (
          SEL => SEL,
          EN => EN,
          AN => AN
        );
 
   -- Stimulus process
   stim_proc: process
   begin		
      
		---------------------------------------------------
		
		SEL <= "00";
		EN <= '1';
		
		--Testing 00 : AN0 is ON
		SEL <= "00";
		wait for 100 ns;
		
		--Testing 01 : AN1 is ON
		SEL <= "01";
		wait for 100 ns;
		
		--Testing 10 : AN2 is ON
		SEL <= "10";
		wait for 100 ns;
		
		--Testing 11 : AN3 is ON
		SEL <= "11";
		wait for 100 ns;
		
		
		---------------------------------------------------
      wait;
   end process;

END;
