library ieee;
use iee.std_logic.all;
entity FF is
	port (clk,Q,D:in std_logic; O:out std_logic);
end entity FF;

Architecture B of FF is
		begin 
		process(clk,Q,D)
			if rising_edge(clk)
				D<=Q;
			end if;
		end process;
end B;