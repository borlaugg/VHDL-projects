library ieee;
use ieee.std_logic_1164.all;
entity DUT is
   port(input_vector: in std_logic_vector(1 downto 0);
       	output_vector: out std_logic_vector(2 downto 0));
end entity;

architecture DutWrap of DUT is
   component Seq is
     port (clk,reset:in std_logic;y:out std_logic_vector(2 downto 0));
   end component;
begin
   add_instance: Seq 
			port map (
					clk => input_vector(0),
					reset => input_vector(1),
					y => output_vector);

end DutWrap;

