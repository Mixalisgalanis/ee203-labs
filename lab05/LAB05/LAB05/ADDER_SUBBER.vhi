
-- VHDL Instantiation Created from source file ADDER_SUBBER.vhd -- 18:56:31 05/16/2018
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT ADDER_SUBBER
	PORT(
		A : IN std_logic_vector(7 downto 0);
		B : IN std_logic_vector(7 downto 0);
		M : IN std_logic;          
		S : OUT std_logic_vector(7 downto 0);
		Cout : OUT std_logic;
		OVF : OUT std_logic
		);
	END COMPONENT;

	Inst_ADDER_SUBBER: ADDER_SUBBER PORT MAP(
		A => ,
		B => ,
		M => ,
		S => ,
		Cout => ,
		OVF => 
	);


