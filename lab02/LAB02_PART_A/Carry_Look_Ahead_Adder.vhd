library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Carry_Look_Ahead_Adder is
    Port ( A : in  STD_LOGIC_VECTOR (3 downto 0);
           B : in  STD_LOGIC_VECTOR (7 downto 4);
           Cin : in  STD_LOGIC;
           S : out  STD_LOGIC_VECTOR (3 downto 0);
           C3 : out  STD_LOGIC);
end Carry_Look_Ahead_Adder;

architecture Structural of Carry_Look_Ahead_Adder is

signal P_SIGNAL : STD_LOGIC_VECTOR (3 downto 0);
signal G_SIGNAL : STD_LOGIC_VECTOR (3 downto 0);
signal C_SIGNAL : STD_LOGIC_VECTOR (2 downto 0);

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

	CGPU: Carry_Generate_Propagate_Unit port map( 
																	--Inputs
																	 A(0) => A(0),
																	 A(1) => A(1),
																	 A(2) => A(2),
																	 A(3) => A(3),
																	 
																	 B(0) => B(4),
																	 B(1) => B(5),
																	 B(2) => B(6),
																	 B(3) => B(7),
																	 
																	 --Outputs
																	 P(0) => P_SIGNAL(0),
																	 P(1) => P_SIGNAL(1),
																	 P(2) => P_SIGNAL(2),
																	 P(3) => P_SIGNAL(3),
																	 
																	 G(0) => G_SIGNAL(0),
																	 G(1) => G_SIGNAL(1),
																	 G(2) => G_SIGNAL(2),
																	 G(3) => G_SIGNAL(3)
																		);
																		
																		
	CLAU: Carry_Look_Ahead_Unit port map ( 			
																	 --Inputs
																	 P(0) => P_SIGNAL(0),
																	 P(1) => P_SIGNAL(1),
																	 P(2) => P_SIGNAL(2),
																	 P(3) => P_SIGNAL(3),
																	 
																	 G(0) => G_SIGNAL(0),
																	 G(1) => G_SIGNAL(1),
																	 G(2) => G_SIGNAL(2),
																	 G(3) => G_SIGNAL(3),
																	 
																	 --Outputs
																	 Cin => Cin,
																	 
																	 C(0) => C_SIGNAL(0),
																	 C(1) => C_SIGNAL(1),
																	 C(2) => C_SIGNAL(2),
																	 
																	 C(3) => C3

														 );
														 
	SU: Sum_Unit port map (
																	 --Inputs
																	 P(0) => P_SIGNAL(0),
																	 P(1) => P_SIGNAL(1),
																	 P(2) => P_SIGNAL(2),
																	 P(3) => P_SIGNAL(3),
																	 
																	 Cin => Cin,
																	 
																	 C(0) => C_SIGNAL(0),
																	 C(1) => C_SIGNAL(1),
																	 C(2) => C_SIGNAL(2),
																	 
																	 --Ouputs
																	 S(0) => S(0),
																	 S(1) => S(1),
																	 S(2) => S(2),
																	 S(3) => S(3)
																	 
									);

end Structural;

