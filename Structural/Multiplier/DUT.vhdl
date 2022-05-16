library ieee;
use ieee.std_logic_1164.all;
entity DUT is
   port(input_vector: in std_logic_vector(6 downto 0);
       	output_vector: out std_logic_vector(6 downto 0));
end entity;

architecture DutWrap of DUT is
   component Multiplier is
     port (a3,a2,a1,a0,b2,b1,b0:in std_logic; m0,m1,m2,m3,m4,m5,m6:out std_logic);
   end component;
begin

   add_instance: Multiplier 
			port map (
					a3 => input_vector(6),
					a2   => input_vector(5),
					a1   => input_vector(4),
					a0   => input_vector(3),
					b2   => input_vector(2),
					b1   => input_vector(1),
					b0   => input_vector(0),
					m6 => output_vector(6),
					m5 => output_vector(5),
					m4 => output_vector(4),
					m3 => output_vector(3),
					m2 => output_vector(2),
					m1 => output_vector(1),
					m0 => output_vector(0));

end DutWrap;

