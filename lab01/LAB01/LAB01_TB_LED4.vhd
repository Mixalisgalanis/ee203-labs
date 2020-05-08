LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY LAB01_TB_LED4 IS
END LAB01_TB_LED4;
 
ARCHITECTURE behavior OF LAB01_TB_LED4 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT LAB01
    PORT(
         IN0 : IN  std_logic;
         IN1 : IN  std_logic;
         BTN0 : IN  std_logic;
         BTN1 : IN  std_logic;
         BTN2 : IN  std_logic;
         BTN3 : IN  std_logic;
         LED : OUT  std_logic_vector(5 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal IN0 : std_logic := '0';
   signal IN1 : std_logic := '0';
   signal BTN0 : std_logic := '0';
   signal BTN1 : std_logic := '0';
   signal BTN2 : std_logic := '0';
   signal BTN3 : std_logic := '0';

 	--Outputs
   signal LED : std_logic_vector(5 downto 0);
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: LAB01 PORT MAP (
          IN0 => IN0,
          IN1 => IN1,
          BTN0 => BTN0,
          BTN1 => BTN1,
          BTN2 => BTN2,
          BTN3 => BTN3,
          LED => LED
        );

   -- Stimulus process
   stim_proc: process
   begin		
	
   ----------------------------------------------------------
		--Initial values are (IN0,IN1,BTN0,BTN1,BTN2,BTN3) = (0,0,0,0,0,0,0)
		--This section creates truth table for input IN0.
		--Only needed values are changed.
		
		--IN0 = 0
      wait for 100 ns;
		
		--IN0 = 1
		IN0 <= '1';
		wait for 100 ns;
		----------------------------------------------------------

      wait;
   end process;

END;