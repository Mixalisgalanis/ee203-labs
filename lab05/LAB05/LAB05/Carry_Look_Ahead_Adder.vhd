library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Carry_Look_Ahead_Adder is
    Port ( A : in  STD_LOGIC_VECTOR (3 downto 0);
           B : in  STD_LOGIC_VECTOR (3 downto 0);
           Cin : in  STD_LOGIC;
           S : out  STD_LOGIC_VECTOR (3 downto 0);
           C3 : out  STD_LOGIC;
			  AOVF : out STD_LOGIC);
end Carry_Look_Ahead_Adder;

architecture Structural of Carry_Look_Ahead_Adder is

signal P_SIGNAL : STD_LOGIC_VECTOR (3 downto 0);
signal G_SIGNAL : STD_LOGIC_VECTOR (3 downto 0);
signal C_SIGNAL : STD_LOGIC_VECTOR (2 downto 0);

signal C_out : STD_LOGIC;


component Carry_Generate_Propagate_Unit is
	Port ( A : in  STD_LOGIC_VECTOR (3 downto 0);
           B : in  STD_LOGIC_VECTOR (3 downto 0);
           P : out  STD_LOGIC_VECTOR (3 downto 0);
           G : out  STD_LOGIC_VECTOR (3 downto 0)
			  );
end component;


component Carry_Look_Ahead_Unit is
    Port ( P : in  STD_LOGIC_VECTOR (3 downto 0);
           G : in  STD_LOGIC_VECTOR (3 downto 0);
           Cin : in  STD_LOGIC;
           C : out  STD_LOGIC_VECTOR (3 downto 0)
			  );
end component;


component Sum_Unit is
	Port ( P : in  STD_LOGIC_VECTOR (3 downto 0);
				  C : in  STD_LOGIC_VECTOR (2 downto 0);
				  Cin : in  STD_LOGIC;
				  S : out  STD_LOGIC_VECTOR (3 downto 0)
				  );
end component;
	

begin

	CGPU: Carry_Generate_Propagate_Unit port map( 	--Inputs
																	 A => A,
																	 B => B,
																	
																	 --Outputs
																	 P => P_SIGNAL,
																	 G => G_SIGNAL
																);
																		
	CLAU: Carry_Look_Ahead_Unit port map ( 			 --Inputs
																	 P => P_SIGNAL,
																	 G => G_SIGNAL,
																	 
																	 --Outputs
																	 Cin => Cin,
																	 
																	 C(0) => C_SIGNAL(0),
																	 C(1) => C_SIGNAL(1),
																	 C(2) => C_SIGNAL(2),
																	 C(3) => C_out
																);
														 
	SU: Sum_Unit port map (									 --Inputs
																	 P => P_SIGNAL,
																	 
																	 Cin => Cin,
																	 C(0) => C_SIGNAL(0),
																	 C(1) => C_SIGNAL(1),
																	 C(2) => C_SIGNAL(2),
																	 
																	 --Ouputs
																	 S => S
																	 );
	
	C3 <= C_out;
	AOVF <= C_out  XOR C_SIGNAL(2);

end Structural;

