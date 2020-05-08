library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Stack_DataPath is
    Port ( NUM_IN : in  STD_LOGIC_VECTOR (7 downto 0);
           DOUTA : in  STD_LOGIC_VECTOR (7 downto 0);
           SEL : in  STD_LOGIC_VECTOR (1 downto 0);
           OPOut : in  STD_LOGIC;
           PART_POP : in  STD_LOGIC_VECTOR (1 downto 0);
           M : in  STD_LOGIC;
			  CLK : in STD_LOGIC;
			  Cout : out STD_LOGIC;
           DINA : out  STD_LOGIC_VECTOR (7 downto 0);
           OVF : out  STD_LOGIC);
end Stack_DataPath;

architecture Structural of Stack_DataPath is

--Sorted based on bus width
signal signal_result_adder, signal_swapped, signal_pre_register_1, signal_pre_register_2, signal_register_1, signal_register_2, signal_post_register_1, signal_post_register_2  : STD_LOGIC_VECTOR (7 downto 0);
signal signal_register_enabler_1, signal_register_enabler_2 : STD_LOGIC;
signal signal_ff, signal_ff2 : STD_LOGIC;

Component Mux_Pre_Stack is
    Port ( OP_RESULT : in  STD_LOGIC_VECTOR (7 downto 0);
           SWAP : in  STD_LOGIC_VECTOR (7 downto 0);
           NUM_IN : in  STD_LOGIC_VECTOR (7 downto 0);
           SEL : in  STD_LOGIC_VECTOR (1 downto 0);
           OPOut : in  STD_LOGIC;
           X : out  STD_LOGIC_VECTOR (7 downto 0));
end Component;

Component Stack_Register is
    Port ( D : in  STD_LOGIC_VECTOR (7 downto 0);
           CLK : in  STD_LOGIC;
           Q : out  STD_LOGIC_VECTOR (7 downto 0));
end Component;

Component ADDER_SUBBER is
    Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
           B : in  STD_LOGIC_VECTOR (7 downto 0);
			  M : in STD_LOGIC;
			  S : out  STD_LOGIC_VECTOR (7 downto 0);
           Cout : out  STD_LOGIC;
           OVF : out  STD_LOGIC);
end Component;

Component Mux_Swapper is
    Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
           B : in  STD_LOGIC_VECTOR (7 downto 0);
           X : out  STD_LOGIC_VECTOR (7 downto 0);
           SEL : in  STD_LOGIC);
end Component;


Component RegisterController is
    Port ( DOUTA : in  STD_LOGIC_VECTOR (7 downto 0);
           SEL : in  STD_LOGIC_VECTOR (1 downto 0);
           OpOut : in  STD_LOGIC;
           PART_POP : in  STD_LOGIC_VECTOR (1 downto 0);
           REG_1 : out  STD_LOGIC_VECTOR (7 downto 0);
           REG_1_EN : out  STD_LOGIC;
           REG_2 : out  STD_LOGIC_VECTOR (7 downto 0);
           REG_2_EN : out  STD_LOGIC); 
end Component;

Component FlipFlop is
    Port ( D : in  STD_LOGIC;
			  CLK : in STD_LOGIC;
           Q : out  STD_LOGIC);
end Component;

Component Double_FlipFlop is
    Port ( D : in  STD_LOGIC;
			  CLK : in STD_LOGIC;
           Q : out  STD_LOGIC);
end Component;

begin

Mux_Pre_Stack_1: Mux_Pre_Stack port map( OP_RESULT => signal_result_adder,
														SWAP => signal_swapped,
														NUM_IN => NUM_IN,
														SEL => SEL,
														OPOut => OPOut,
														X => DINA);
					
Controller : RegisterController port map (DOUTA => DOUTA,
														SEL => SEL,
														OpOut => OpOut,
														PART_POP => PART_POP,
														REG_1 => signal_pre_register_1,
														REG_1_EN => signal_register_enabler_1,
														REG_2 => signal_pre_register_2,
														REG_2_EN => signal_register_enabler_2
															);					

								
Register_Enabler_1 : Mux_Swapper port map( A => signal_post_register_1,
														 B => signal_pre_register_1,
														 X => signal_register_1,
														 SEL => signal_register_enabler_1);
	
Stack_Register_1: Stack_Register port map(CLK => CLK,
														D => signal_register_1,
														Q => signal_post_register_1);




Register_Enabler_2 : Mux_Swapper port map( A => signal_post_register_2,
														 B => signal_pre_register_2,
														 X => signal_register_2,
														 SEL => signal_register_enabler_2);

Stack_Register_2: Stack_Register port map(CLK => CLK,
														D => signal_register_2,
														Q => signal_post_register_2);




ADDER_SUBBER_1: ADDER_SUBBER port map(A => signal_post_register_1,
													B => signal_post_register_2,
													M => M,
													S => signal_result_adder,
													Cout => Cout,
													OVF => OVF
													);

FF : Double_FlipFlop port map ( D=> PART_POP(1),
										  CLK => CLK,
										  Q => signal_ff);		

										  
FF2 : FlipFlop port map ( D=> signal_ff,
										  CLK => CLK,
										  Q => signal_ff2);												

Swapper : Mux_Swapper port map (	 A => signal_post_register_2,
											 B => signal_post_register_1,
											 X => signal_swapped,
											 SEL => signal_ff2);


end Structural;

