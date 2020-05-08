library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Double_FlipFlop is
    Port ( D : in  STD_LOGIC;
           Q : out  STD_LOGIC;
           CLK : in  STD_LOGIC);
end Double_FlipFlop;

architecture Structural of Double_FlipFlop is

signal signal_flipflop_connector: std_logic;


Component FlipFlop is
    Port ( D : in  STD_LOGIC;
			  CLK : in STD_LOGIC;
           Q : out  STD_LOGIC);
end Component;


begin


FF_1 : FlipFlop port map (CLK => CLK,
									D => D,
									Q => signal_flipflop_connector);
									
FF_2 : FlipFlop port map (CLK => CLK,
									D => signal_flipflop_connector,
									Q => Q);
									


end Structural;

