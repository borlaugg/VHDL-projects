library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Muxpkg1.all;
package components is
	component Mux2bit2x1 is
		port (I0,I1,I2,I3,S:in std_logic; O0,O1:out std_logic);
	end component Mux2bit2x1;
	
	component IS100 is
		port (a0, a1:in std_logic;x:out std_logic);
	end component IS100;
	
	component CHECK is
		port (a:in std_logic_vector(7 downto 0);z:out std_logic);
	end component CHECK;

end package components;

library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Muxpkg1.all;
entity Mux2bit2x1 is
		port (I0,I1,I2,I3,S:in std_logic; O0,O1:out std_logic);
end entity Mux2bit2x1;

architecture B of Mux2bit2x1 is
begin
m1:Mux2x1 port map(I0=>I0,I1=>I1,S=>S,Y=>O0);
m2:Mux2x1 port map(I0=>I2,I1=>I3,S=>S,Y=>O1);
end B;

library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;
entity IS100 is
	port (a0, a1:in std_logic;x:out std_logic);
end entity IS100;

architecture B of IS100 is
begin
		orx:OR_2 port map(A=>a0,B=>a1,Y=>x);
end B;

library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;
entity CHECK is
	port (a:in std_logic_vector(7 downto 0);z:out std_logic);
end entity CHECK;

architecture B of CHECK is
signal p,q,r,s,t,u:std_logic;
begin
		or1:OR_2 port map(A=>a(0),B=>a(1),Y=>p);
		or2:OR_2 port map(A=>a(2),B=>p,Y=>q);
		or3:OR_2 port map(A=>a(3),B=>q,Y=>r);
		or4:OR_2 port map(A=>a(4),B=>r,Y=>s);
		or5:OR_2 port map(A=>a(5),B=>s,Y=>t);
		or6:OR_2 port map(A=>a(6),B=>t,Y=>u);
		or7:OR_2 port map(A=>a(7),B=>u,Y=>z);
end B;