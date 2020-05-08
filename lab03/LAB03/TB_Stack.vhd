LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
use ieee.std_logic_unsigned.all;
 
ENTITY TB_Stack IS
END TB_Stack;
 
ARCHITECTURE behavior OF TB_Stack IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Stack
    PORT(
         clka : IN  std_logic;
         wea : IN  std_logic_vector(0 downto 0);
         addra : IN  std_logic_vector(3 downto 0);
         dina : IN  std_logic_vector(7 downto 0);
         douta : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clka : std_logic := '0';
   signal wea : std_logic_vector(0 downto 0) := (others => '0');
   signal addra : std_logic_vector(3 downto 0) := (others => '0');
   signal dina : std_logic_vector(7 downto 0) := (others => '0');

 	--Outputs
   signal douta : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant clka_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Stack 
		port map(       
			clka => clka,    --clock for writing/reading data to/from RAM     
			wea => wea,    --write enable signal for Port A   
			addra => addra,  --4 bit address for the RAM   
			dina => dina,    --8 bit data input to the RAM       
			douta => douta);   --8 bit data output from the RAM 
			
			--Simulation process.  
			process  
			begin       
				
				wait for 1 ns;       
				for i in 0 to 10 loop --writing to all the memory locations of the BRAM. set wea "1" for this.         
					wea <= "1"; --write mode            
					wait for 4 ns;            
					addra <= addra + "1"; --increase address         
					dina <= dina + "1"; --data-in     
				end loop;  
				addra <= "0000";   --reset address value for reading from mem loc "0"     
										--reading all the 11 memory locations of BRAM  
				for i in 0 to 10 loop   
					wea <= "0";  -- read mode   
					wait for 2 ns;   
					addra <= addra + "1"; --read data from each address  
				end loop;  
				wait; 
			end process;
			
   -- Clock process definitions
   clka_process :process
   begin
		clka <= '0';
		wait for clka_period/2;
		clka <= '1';
		wait for clka_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for clka_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
