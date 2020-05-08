library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Half_Adder is
    Port ( I1 : in  STD_LOGIC;
           I2 : in  STD_LOGIC;
           Y1 : out  STD_LOGIC;
           Y2 : out  STD_LOGIC);
end Half_Adder;

architecture Behavioral of Half_Adder is

begin

--Describing Logic of a Half Adder
Y1 <= I1 XOR I2;
Y2 <= I1 AND I2;

end Behavioral;