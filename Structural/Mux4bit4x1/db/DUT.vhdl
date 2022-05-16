library ieee;
use ieee.std_logic_1164.all;
entity DUT is
   port(input_vector: in std_logic_vector(17 downto 0);
       	output_vector: out std_logic_vector(3 downto 0));
end entity;

architecture DutWrap of DUT is
   component Mux4bit is
     port(a3,a2,a1,a0,b3,b2,b1,b0,c3,c2,c1,c0,d3,d2,d1,d0,s0,s1: in std_logic;
			o3,o2,o1,o0:out std_logic);
   end component;
begin
   add_instance: Mux4bit 
			port map (
					-- order of inputs Cin B A
					d3 => input_vector(17),
					d2 => input_vector(16),
					d1 => input_vector(15),
					d0 => input_vector(14),
					c3 => input_vector(13),
					c2 => input_vector(12),
					c1 => input_vector(11),
					c0 => input_vector(10),
					b3 => input_vector(9),
					b2 => input_vector(8),
					b1 => input_vector(7),
					b0 => input_vector(6),
					a3 => input_vector(5),
					a2 => input_vector(4),
					a1 => input_vector(3),
					a0 => input_vector(2),
					s1 => input_vector(1),
					s0 => input_vector(0),
					o3 => output_vector(3),
					o2 => output_vector(2),
					o1 => output_vector(1),
					o0 => output_vector(0));

end DutWrap;