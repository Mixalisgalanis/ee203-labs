LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY TB_MUX_32TO1 IS
END TB_MUX_32TO1;

ARCHITECTURE behavior OF TB_MUX_32TO1 IS 

	-- Component Declaration for UUT
		 COMPONENT MUX_32TO1
		 Port ( 		A : in STD_LOGIC_VECTOR(31 downto 0);
				  SEL0 : in  STD_LOGIC;
				  SEL1 : in  STD_LOGIC;
				  SEL2 : in  STD_LOGIC;
				  SEL3 : in  STD_LOGIC;
				  SEL4 : in STD_LOGIC;
				  X : out  STD_LOGIC);
		 END COMPONENT;

	--Inputs
	SIGNAL A :  std_logic_vector(31 downto 0):= (others => '0');
	SIGNAL SEL0 :  std_logic;
	SIGNAL SEL1 :  std_logic;
	SIGNAL SEL2 :  std_logic;
	SIGNAL SEL3 :  std_logic;
	SIGNAL SEL4 :  std_logic;
		 
		 
	--Outputs
	SIGNAL X :  std_logic;
		 
		 
BEGIN

	-- Component Instantiation
	 uut: MUX_32TO1 PORT MAP(
				A => A,
				SEL0 => SEL0,
				SEL1 => SEL1,
				SEL2 => SEL2,
				SEL3 => SEL3,
				SEL4 => SEL4,
				X => X
	 );


	--  Test Bench Statements
  stim_proc : PROCESS
  BEGIN

		A(5) <= '1';
		
		SEL0 <= '1';
		SEL1 <= '0';
		SEL2 <= '1';
		SEL3 <= '0';
		SEL4 <= '0';
	   wait for 100 ns; 
		
		SEL1 <= '1';
		wait for 100 ns; 
	  

	  wait; -- will wait forever
  END PROCESS;
--  End Test Bench 

END;
