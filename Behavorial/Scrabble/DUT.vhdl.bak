library ieee;
use ieee.std_logic_1164.all;
entity DUT is
   port(input_vector: in std_logic_vector(3 downto 0);
       	output_vector: out std_logic_vector(0 downto 0));
end entity;

architecture DutWrap of DUT is
   component vowel is
     port (x:in std_logic_vector(3 downto 0);o:out std_logic);
   end component;
begin
   add_instance: vowel 
			port map (
					x => input_vector,
					o => output_vector(0));

end DutWrap;

