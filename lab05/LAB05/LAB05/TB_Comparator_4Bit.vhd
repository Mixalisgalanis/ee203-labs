LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY TB_Comparator_4Bit IS
END TB_Comparator_4Bit;
 
ARCHITECTURE behavior OF TB_Comparator_4Bit IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Comparator_4Bit
    PORT(
         A : IN  std_logic_vector(0 to 3);
         B : IN  std_logic_vector(0 to 3);
         EQ : OUT  std_logic;
         G_T : OUT  std_logic;
         L_T : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(0 to 3) := (others => '0');
   signal B : std_logic_vector(0 to 3) := (others => '0');

 	--Outputs
   signal EQ : std_logic;
   signal G_T : std_logic;
   signal L_T : std_logic;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Comparator_4Bit PORT MAP (
          A => A,
          B => B,
          EQ => EQ,
          G_T => G_T,
          L_T => L_T
        );

   -- Stimulus process
   stim_proc: process
   begin		
      ---------------------------------
		A <= "0001";
		B <= "0100";
		wait for 100 ns;
		
		A <= "0011";
		B <= "0011";
		wait for 100 ns;

		A <= "0101";
		B <= "0001";
		wait for 100 ns;
      ---------------------------------

      wait;
   end process;

END;
