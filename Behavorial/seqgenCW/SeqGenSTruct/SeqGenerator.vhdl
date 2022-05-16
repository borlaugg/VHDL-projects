library ieee;
use ieee.std_logic_1164.all;
-- write the Flipflops packege declaration
library work;
use work.Flipflops.all;

entity Sequence_generator_stru_dataflow is
port (reset,clock: in std_logic;
y:out std_logic_vector(2 downto 0));
end entity Sequence_generator_stru_dataflow;

architecture struct of Sequence_generator_stru_dataflow is 
signal D :std_logic_vector(2 downto 0); -- D flip flop inputs
signal Q:std_logic_vector(2 downto 0);  -- D flip flop outputs
begin

-- write the equations in dataflow  e.g z=a+bc written z<= a or (b and c)
D(2)<= (Q(1) xor Q(0)) xnor Q(2);

D(1)<= (Q(2) and (not Q(0))) or ((not(Q(2))) and (not(Q(1)))) ;

D(0)<= (Q(2) and Q(1)) or (Q(0) and (not (Q(2))));
                                                                                                      
y(2 downto 0)<= Q;                                                                                    

--Q0
dff_0  : dff_reset port map(reset=>reset,clock=>clock,D=>D(0),Q=>Q(0)); 

--Q1
dff_1  : dff_set port map(set=>reset,clock=>clock,D=>D(1),Q=>Q(1));

--Q2
dff_2  : dff_set port map(set=>reset,clock=>clock,D=>D(2),Q=>Q(2));
end struct;                                                                                                   