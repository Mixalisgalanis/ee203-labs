
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity MUX_4TO1 is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           C : in  STD_LOGIC;
           D : in  STD_LOGIC;
           SEL0 : in  STD_LOGIC;
           SEL1 : in  STD_LOGIC;
           X : out  STD_LOGIC);
end MUX_4TO1;

architecture Structural of MUX_4TO1 is
signal signal_0, signal_1 : STD_LOGIC;

Component MUX_2TO1 is
Port ( A 		: in std_logic;		
       B 		: in std_logic;				
       SEL	 	: in std_logic;		
       X 	: out std_logic		
      );
end Component;

begin

MUX_0: MUX_2TO1 port map(	A => A,
									B => B,
									SEL => SEL0,
									X => signal_0
									);

MUX_1: MUX_2TO1 port map(	A => C,
									B => D,
									SEL => SEL0,
									X => signal_1
									);

MUX_2: MUX_2TO1 port map(	A => signal_0,
									B => signal_1,
									SEL => SEL1,
									X => X
									);

end Structural;

