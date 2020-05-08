--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   17:02:57 03/11/2018
-- Design Name:   
-- Module Name:   C:/Users/mgala/Documents/Xilinx Projects/LAB01_PART_B/LAB01_TB_LED7.vhd
-- Project Name:  LAB01_PART_B
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Full_Adder
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY LAB01_TB_LED7 IS
END LAB01_TB_LED7;
 
ARCHITECTURE behavior OF LAB01_TB_LED7 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Full_Adder
    PORT(
         IN0 : IN  std_logic;
         IN1 : IN  std_logic;
         IN2 : IN  std_logic;
         LED : OUT  std_logic_vector(7 downto 6)
        );
    END COMPONENT;
    

   --Inputs
   signal IN0 : std_logic := '0';
   signal IN1 : std_logic := '0';
   signal IN2 : std_logic := '0';

 	--Outputs
   signal LED : std_logic_vector(7 downto 6);
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Full_Adder PORT MAP (
          IN0 => IN0,
          IN1 => IN1,
          IN2 => IN2,
          LED => LED
        );

   -- Stimulus process
   stim_proc: process
   begin		
		----------------------------------------------------------
		--Initial values are (IN0,IN1,IN2) = (0,0,0)
		--This section creates truth table for inputs IN0,IN1,IN2.
		--Only needed values are changed.
		
		--(0,0,0)
      wait for 100 ns;
		
		--(0,0,1)
		IN2 <= '1';
		wait for 100 ns;
		
		--(0,1,0)
		IN1 <= '1';
		IN2 <= '0';
		wait for 100 ns;
		
		--(0,1,1)
		IN2 <= '1';
		wait for 100 ns;
		
		--(1,0,0)
		IN0 <= '1';
		IN1 <= '0';
		IN2 <= '0';
		wait for 100 ns;
		
		--(1,0,1)
		IN2 <= '1'; 
		wait for 100 ns;
		
		--(1,1,0)
		IN1 <= '1';
		IN2 <= '0';
		wait for 100 ns;
		
		--(1,1,1)
		IN2 <= '1';
		wait for 100 ns;
		----------------------------------------------------------
		
      wait;
   end process;

END;
