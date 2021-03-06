library ieee;
use ieee.std_logic_1164.all;
entity DUT is
   port(input_vector: in std_logic_vector(5 downto 0);
       	output_vector: out std_logic_vector(0 downto 0));
end entity;

architecture DutWrap of DUT is
   component Mux4x1 is
     port(a1,a2,a3,a4,s1,s2:in std_logic;
		    o:out std_logic);
   end component;
begin
   add_instance: Mux4x1 
			port map (
					-- order of inputs Cin B A
					a4 => input_vector(5),
					a3 => input_vector(4),
					a2 => input_vector(3),
					a1 => input_vector(2),
					s2 => input_vector(1),
					s1 => input_vector(0),
					o => output_vector(0));

end DutWrap;