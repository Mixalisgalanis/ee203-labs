LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY LAB02_TB_LEDS IS
END LAB02_TB_LEDS;
 
ARCHITECTURE behavior OF LAB02_TB_LEDS IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Carry_Look_Ahead_Adder
    PORT(
         A : IN  std_logic_vector(3 downto 0);
         B : IN  std_logic_vector(7 downto 4);
         Cin : IN  std_logic;
         S : OUT  std_logic_vector(3 downto 0);
         C3 : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(3 downto 0) := (others => '0');
   signal B : std_logic_vector(7 downto 4) := (others => '0');
   signal Cin : std_logic := '0';

 	--Outputs
   signal S : std_logic_vector(3 downto 0);
   signal C3 : std_logic;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Carry_Look_Ahead_Adder PORT MAP (
          A => A,
          B => B,
          Cin => Cin,
          S => S,
          C3 => C3
        );

   -- Stimulus process
   stim_proc: process
   begin		
      -------------------------------------------
		--4 Testing cases are enough to validate our results
		
		  --Testing Sum of 0001 + 0001 with Cin=0
		  --Expected Result = 0010 with Cout=0
		  A(0) <= '1';
		  A(1) <= '0';
		  A(2) <= '0';
		  A(3) <= '0';
		  
		  B(4) <= '1';
		  B(5) <= '0';
		  B(6) <= '0';
		  B(7) <= '0';
		  
		  Cin <= '0';
		  
		  wait for 100 ns;
		
		
		  --Testing Sum of 0011 + 0010 with Cin=1
		  --Expected Result = 0110 with Cout=0
		  A(0) <= '1';
		  A(1) <= '1';
		  A(2) <= '0';
		  A(3) <= '0';
		  
		  B(4) <= '0';
		  B(5) <= '1';
		  B(6) <= '0';
		  B(7) <= '0';
		  
		  Cin <= '1';
		  
		  wait for 100 ns;
		  
		  
		  --Testing Sum of 0001 + 0001 with Cin=1
		  --Expected Result = 0010 with Cout=0
		  A(0) <= '1';
		  A(1) <= '1';
		  A(2) <= '1';
		  A(3) <= '0';
		  
		  B(4) <= '1';
		  B(5) <= '0';
		  B(6) <= '1';
		  B(7) <= '0';
		  
		  Cin <= '0';
		  
		  wait for 100 ns;
		  
		  
		  --Testing Sum of 0100 + 1010 with Cin=1
		  --Expected Result = 1111 with Cout=0
		  A(0) <= '0';
		  A(1) <= '0';
		  A(2) <= '1';
		  A(3) <= '0';
		  
		  B(4) <= '0';
		  B(5) <= '1';
		  B(6) <= '0';
		  B(7) <= '1';
		  
		  Cin <= '1';
		  
		  wait for 100 ns;
		-------------------------------------------

      wait;
   end process;

END;
