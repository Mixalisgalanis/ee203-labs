library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity MUX_32TO1 is
	Port ( 		A : in STD_LOGIC_VECTOR(31 downto 0);
				  SEL0 : in  STD_LOGIC;
				  SEL1 : in  STD_LOGIC;
				  SEL2 : in  STD_LOGIC;
				  SEL3 : in  STD_LOGIC;
				  SEL4 : in STD_LOGIC;
				  X : out  STD_LOGIC);
end MUX_32TO1;

architecture Structural of MUX_32TO1 is
signal signal_0, signal_1 : STD_LOGIC;

Component MUX_16TO1 is
	Port ( 	A : in STD_LOGIC_VECTOR(15 downto 0);
				  SEL0 : in  STD_LOGIC;
				  SEL1 : in  STD_LOGIC;
				  SEL2 : in  STD_LOGIC;
				  SEL3 : in  STD_LOGIC;
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

MUX_0: MUX_16TO1 port map(	A(0) => A(0),
									A(1) => A(1),
									A(2) => A(2),
									A(3) => A(3),
									A(4) => A(4),
									A(5) => A(5),
									A(6) => A(6),
									A(7) => A(7),
									A(8) => A(8),
									A(9) => A(9),
									A(10) => A(10),
									A(11) => A(11),
									A(12) => A(12),
									A(13) => A(13),
									A(14) => A(14),
									A(15) => A(15),
									SEL0 => SEL0,
									SEL1 => SEL1,
									SEL2 => SEL2,
									SEL3 => SEL3,
									X => signal_0
									);

MUX_1: MUX_16TO1 port map(	A(0) => A(16),
									A(1) => A(17),
									A(2) => A(18),
									A(3) => A(19),
									A(4) => A(20),
									A(5) => A(21),
									A(6) => A(22),
									A(7) => A(23),
									A(8) => A(24),
									A(9) => A(25),
									A(10) => A(26),
									A(11) => A(27),
									A(12) => A(28),
									A(13) => A(29),
									A(14) => A(30),
									A(15) => A(31),
									SEL0 => SEL0,
									SEL1 => SEL1,
									SEL2 => SEL2,
									SEL3 => SEL3,
									X => signal_1
									);

MUX_2: MUX_2TO1 port map(	A => signal_0,
									B => signal_1,
									SEL => SEL4,
									X => X
									);

end Structural;

