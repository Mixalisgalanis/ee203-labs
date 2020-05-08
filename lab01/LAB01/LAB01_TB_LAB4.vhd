--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   19:19:09 03/10/2018
-- Design Name:   
-- Module Name:   C:/Users/mgala/Documents/Xilinx Projects/LAB01/LAB01_TB_LAB4.vhd
-- Project Name:  LAB01
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: LAB01
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
 
ENTITY LAB01_TB_LAB4 IS
END LAB01_TB_LAB4;
 
ARCHITECTURE behavior OF LAB01_TB_LAB4 IS 
 
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
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
--   constant <clock>_period : time := 10 ns;
 
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

   -- Clock process definitions
--  <clock>_process :process
--   begin
--		<clock> <= '0';
--		wait for <clock>_period/2;
--		<clock> <= '1';
--		wait for <clock>_period/2;
--  end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
       wait for 100 ns;
		
		IN1 <= '1';
		wait for 100 ns;
		
		IN0 <= '1';
		IN1 <= '0';
		wait for 100 ns;
		
		IN1 <= '1';
		wait for 100 ns;
		
		BTN4 <= '1';
		
		IN0 <= '0';
		IN1 <= '0';
		wait for 100 ns;
		
		IN1 <= '1';
		wait for 100 ns;
		
		IN0 <= '1';
		IN1 <= '0';
		wait for 100 ns;
		
		IN1 <= '1';
		wait for 100 ns;	
      -- insert stimulus here 

      wait;
   end process;

END;
