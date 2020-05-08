library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ssd_DataPath is
    Port ( STATE : in  STD_LOGIC_VECTOR (1 downto 0);
           SEL : in  STD_LOGIC_VECTOR (1 downto 0);
           SEG : out  STD_LOGIC_VECTOR (7 downto 0));
end ssd_DataPath;

architecture Structural of ssd_DataPath is
signal signal_DecoderOut : std_logic_vector (31 downto 0); --Output of Decoder

Component ssd_Mux32To8 is
    Port ( DATA_IN : in  STD_LOGIC_VECTOR (31 downto 0);
           SEL : in  STD_LOGIC_VECTOR (1 downto 0);
           SEG : out  STD_LOGIC_VECTOR (7 downto 0));
end Component;


Component ssd_Decoder is
    Port ( STATE : in  STD_LOGIC_VECTOR (1 downto 0);
			  EN 		 : in STD_LOGIC;
			  DATA_OUT : out  STD_LOGIC_VECTOR (31 downto 0));
end Component;


begin

Decoder : ssd_Decoder port map ( STATE => STATE,
											EN => '1',
											DATA_OUT =>	signal_DecoderOut									
												);


SegmentSelecor : ssd_Mux32To8 port map ( DATA_IN => signal_DecoderOut,
													  SEL => SEL,
													  SEG => SEG
														 );


end Structural;

