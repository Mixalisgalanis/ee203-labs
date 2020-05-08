library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity MUX_8TO1 is
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
end MUX_8TO1;

architecture Structural of MUX_8TO1 is
signal signal_0, signal_1 : STD_LOGIC;

Component MUX_2TO1 is
Port ( A 		: in std_logic;		
       B 		: in std_logic;				
       SEL	 	: in std_logic;		
       X 	: out std_logic		
      );
end Component;

Component MUX_4TO1 is
Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           C : in  STD_LOGIC;
           D : in  STD_LOGIC;
           SEL0 : in  STD_LOGIC;
           SEL1 : in  STD_LOGIC;
           X : out  STD_LOGIC);
end Component;

begin

MUX_0: MUX_4TO1 port map(	A => A,
									B => B,
									C => C,
									D => D,
									SEL0 => SEL0,
									SEL1 => SEL1,
									X => signal_0
									);

MUX_1: MUX_4TO1 port map(	A => E,
									B => F,
									C => G,
									D => H,
									SEL0 => SEL0,
									SEL1 => SEL1,
									X => signal_1
									);

MUX_2: MUX_2TO1 port map(	A => signal_0,
									B => signal_1,
									SEL => SEL2,
									X => X
									);

end Structural;

