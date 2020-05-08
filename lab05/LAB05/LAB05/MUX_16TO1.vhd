library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity MUX_16TO1 is
	Port ( 	A : in STD_LOGIC_VECTOR(15 downto 0);
				  SEL0 : in  STD_LOGIC;
				  SEL1 : in  STD_LOGIC;
				  SEL2 : in  STD_LOGIC;
				  SEL3 : in  STD_LOGIC;
				  X : out  STD_LOGIC);
end MUX_16TO1;

architecture Structural of MUX_16TO1 is
signal signal_0, signal_1 : STD_LOGIC;


Component MUX_8TO1 is
	Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           C : in  STD_LOGIC;
           D : in  STD_LOGIC;
			  E : in  STD_LOGIC;
           F : in  STD_LOGIC;
           G : in  STD_LOGIC;
           H : in  STD_LOGIC;
           SEL0 : in  STD_LOGIC;
           SEL1 : in  STD_LOGIC;
			  SEL2 : in  STD_LOGIC;
           X : out  STD_LOGIC);
end Component;

Component MUX_2TO1 is
Port ( A 		: in std_logic;		
       B 		: in std_logic;				
       SEL	 	: in std_logic;		
       X 	: out std_logic		
      );
end Component;

begin

MUX_0: MUX_8TO1 port map(	A => A(0),
									B => A(1),
									C => A(2),
									D => A(3),
									E => A(4),
									F => A(5),
									G => A(6),
									H => A(7),
									SEL0 => SEL0,
									SEL1 => SEL1,
									SEL2 => SEL2,
									X => signal_0
									);

MUX_1: MUX_8TO1 port map(	A => A(8),
									B => A(9),
									C => A(10),
									D => A(11),
									E => A(12),
									F => A(13),
									G => A(14),
									H => A(15),
									SEL0 => SEL0,
									SEL1 => SEL1,
									SEL2 => SEL2,
									X => signal_1
									);

MUX_2: MUX_2TO1 port map(	A => signal_0,
									B => signal_1,
									SEL => SEL3,
									X => X
									);

end Structural;

