library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Full_Adder is
    Port ( IN0,IN1,IN2 : in  STD_LOGIC;
           LED : out  STD_LOGIC_VECTOR (7 downto 6));
end Full_Adder;

architecture Structural of Full_Adder is
--We use signals to connect outputs of a system to inputs of a next system.
signal HA1_OUT1, HA1_OUT2, HA2_OUT1, HA2_OUT2 : STD_LOGIC;

--Standard structure of HA
component Half_Adder is
	Port ( I1,I2 : in STD_LOGIC;
			 Y1,Y2 : out STD_LOGIC
		 );
end component;

begin
	--To create a Full Adder, 2 Half Adders are needed.
	--The Half Adder is used as a component, the logic of which is described in a separate VHD Module.
	
	HA1: Half_Adder port map (	I1 => IN0,
										I2 => IN1,
										Y1 => HA1_OUT1,
										Y2 => HA1_OUT2
										);
										
	HA2: Half_Adder port map (	I1 => HA1_OUT1,
										I2 => IN2,
										Y1 => HA2_OUT1,
										Y2 => HA2_OUT2
										);
										
	LED(6) <= HA2_OUT1;									
	LED(7) <= HA2_OUT2 OR HA1_OUT2;
	
end Structural;