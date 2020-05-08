
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY TB_COMPARATOR IS
END TB_COMPARATOR;
 
ARCHITECTURE behavior OF TB_COMPARATOR IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Comparator_5_BIT
    PORT(
         A : IN  std_logic_vector(4 downto 0);
         B : IN  std_logic_vector(4 downto 0);
         EQ : OUT  std_logic;
         L_T : OUT  std_logic;
         G_T : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(4 downto 0) := (others => '0');
   signal B : std_logic_vector(4 downto 0) := (others => '0');

 	--Outputs
   signal EQ : std_logic;
   signal L_T : std_logic;
   signal G_T : std_logic;
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Comparator_5_BIT PORT MAP (
          A => A,
          B => B,
          EQ => EQ,
          L_T => L_T,
          G_T => G_T
        );

   -- Stimulus process
   stim_proc: process
   begin		
	
		A(4) <= '0';
		A(3) <= '1';
		A(2) <= '0';
		A(1) <= '0';
		A(0) <= '0';
		
		B(4) <= '0';
		B(3) <= '1';
		B(2) <= '1';
		B(1) <= '1';
		B(0) <= '1';
		
      wait for 100 ns;	
		
		A(4) <= '0';
		A(3) <= '1';
		A(2) <= '0';
		A(1) <= '0';
		A(0) <= '0';
		
		B(4) <= '0';
		B(3) <= '1';
		B(2) <= '0';
		B(1) <= '0';
		B(0) <= '0';
		
      wait for 100 ns;	
		A(4) <= '0';
		A(3) <= '0';
		A(2) <= '0';
		A(1) <= '1';
		A(0) <= '0';
		
		B(4) <= '0';
		B(3) <= '0';
		B(2) <= '0';
		B(1) <= '0';
		B(0) <= '0';
		
      wait for 100 ns;	

      wait;
   end process;

END;
