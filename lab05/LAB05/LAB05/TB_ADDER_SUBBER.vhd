LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY TB_ADDER_SUBBER IS
END TB_ADDER_SUBBER;
 
ARCHITECTURE behavior OF TB_ADDER_SUBBER IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ADDER_SUBBER
    PORT(
         A : IN  std_logic_vector(7 downto 0);
         B : IN  std_logic_vector(7 downto 0);
         M : IN  std_logic;
         S : OUT  std_logic_vector(7 downto 0);
         Cout : OUT  std_logic;
         OVF : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(7 downto 0) := (others => '0');
   signal B : std_logic_vector(7 downto 0) := (others => '0');
   signal M : std_logic := '0';

 	--Outputs
   signal S : std_logic_vector(7 downto 0);
   signal Cout : std_logic;
   signal OVF : std_logic;
	
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ADDER_SUBBER PORT MAP (
          A => A,
          B => B,
          M => M,
          S => S,
          Cout => Cout,
          OVF => OVF
        );

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
		A <= "00000001";
		B <= "00000001";
		M <= '0';
      wait for 100 ns;
		
		A <= "00000001";
		B <= "11111111";
		M <= '0';
      wait for 100 ns;
		
		A <= "00000010";
		B <= "00000001";
		M <= '1';
      wait for 100 ns;
		
		A <= "00000010";
		B <= "00000100";
		M <= '1';
      wait for 100 ns;
		
		A <= "01111111";
		B <= "00000001";
		M <= '0';
      wait for 100 ns;

      -- insert stimulus here 

      wait;
   end process;

END;
