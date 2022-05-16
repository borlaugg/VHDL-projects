library ieee;
use ieee.std_logic_1164.all;
entity DUT is
   port(input_vector: in std_logic_vector(3 downto 0);
       	output_vector: out std_logic_vector(7 downto 0));
end entity;

architecture DutWrap of DUT is
   component decoder is
     port (a:in std_logic_vector(2 downto 0);e:in std_logic;o:out std_logic_vector(7 downto 0));
   end component;
begin
   add_instance: decoder 
			port map (
					a => input_vector(3 downto 1),
					e => input_vector(0),
					o => output_vector);

end DutWrap;

