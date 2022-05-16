
library ieee;
use ieee.std_logic_1164.all;
entity DUT is
   port(input_vector: in std_logic_vector(3 downto 0);
       	output_vector: out std_logic_vector(1 downto 0));
end entity;

architecture DutWrap of DUT is
   component FullAdder is
     port(A,B,Cin,E: in std_logic;
         	S,Cout: out std_logic);
   end component;
begin
   add_instance: FullAdder 
			port map (
					Cin => input_vector(1),
					B   => input_vector(2),
					A   => input_vector(3),
					E   => input_vector(0),
					S => output_vector(1),
					Cout => output_vector(0));

end DutWrap;

