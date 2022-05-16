library ieee;
use ieee.std_logic_1164.all;
entity DUT is
   port(input_vector: in std_logic_vector(3 downto 0);
       	output_vector: out std_logic_vector(0 downto 0));
end entity;

architecture DutWrap of DUT is
   component SerialAdder is
port (reset, a,b: in std_logic; clock: in std_logic; s: out std_logic);
   end component;
begin
   add_instance: SerialAdder 
			port map (
					reset => input_vector(3),
					a => input_vector(2),
					b => input_vector(1),
					clock => input_vector(0),
					s => output_vector(0));

end DutWrap;

