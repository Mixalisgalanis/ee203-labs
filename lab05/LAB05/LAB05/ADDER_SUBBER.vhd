library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_signed.all;

entity ADDER_SUBBER is
    Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
           B : in  STD_LOGIC_VECTOR (7 downto 0);
			  M : in STD_LOGIC;
			  S : out  STD_LOGIC_VECTOR (7 downto 0);
           Cout : out  STD_LOGIC;
           OVF : out  STD_LOGIC);
end ADDER_SUBBER;

architecture Structural of ADDER_SUBBER is

signal carry_connector : STD_LOGIC;
signal B_XOR : STD_LOGIC_VECTOR (7 downto 0);
signal S1_temp, S2_temp : STD_LOGIC_VECTOR(3 downto 0);
signal S_total : STD_LOGIC_VECTOR(7 downto 0);

Component Carry_Look_Ahead_Adder is
    Port ( A : in  STD_LOGIC_VECTOR (3 downto 0);
           B : in  STD_LOGIC_VECTOR (3 downto 0);
           Cin : in  STD_LOGIC;
           S : out  STD_LOGIC_VECTOR (3 downto 0);
           C3 : out  STD_LOGIC;
			  AOVF : out STD_LOGIC);
end component;

begin

	B_XOR(0) <= B(0) XOR M;
	B_XOR(1) <= B(1) XOR M;
	B_XOR(2) <= B(2) XOR M;
	B_XOR(3) <= B(3) XOR M;
	B_XOR(4) <= B(4) XOR M;
	B_XOR(5) <= B(5) XOR M;
	B_XOR(6) <= B(6) XOR M;
	B_XOR(7) <= B(7) XOR M;
	
																						
	Carry_Look_Ahead_Adder_1 : Carry_Look_Ahead_Adder port map (A => A(3 downto 0),
																					B => B_XOR(3 downto 0),
																					Cin => M,
																					S => S1_temp,
																					C3 => carry_connector,
																					AOVF => open);


	Carry_Look_Ahead_Adder_2 : Carry_Look_Ahead_Adder port map (A => A(7 downto 4),
																					B => B_XOR(7 downto 4),
																					Cin => carry_connector,
																					S => S2_temp,
																					C3 => Cout,
																					AOVF => OVF);	

	S_total <= S2_temp & S1_temp;
	S <= S_total;
	
end Structural;