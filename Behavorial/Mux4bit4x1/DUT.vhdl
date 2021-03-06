library ieee;
use ieee.std_logic_1164.all;
entity DUT is
   port(input_vector: in std_logic_vector(17 downto 0);
       	output_vector: out std_logic_vector(3 downto 0));
end entity;

architecture DutWrap of DUT is
   component mux is
     port (a,b,c,d:in std_logic_vector(3 downto 0);s0,s1:in std_logic; o:out std_logic_vector(3 downto 0));
   end component;
begin
   add_instance: mux 
			port map (
					d => input_vector(17 downto 14),
					c => input_vector(13 downto 10),
					b => input_vector(9 downto 6),
					a => input_vector(5 downto 2),
					S1 => input_vector(1),
					S0 => input_vector(0),
					o => output_vector);

end DutWrap;

