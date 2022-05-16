--///////////////////////////////////////////////////////////////////////////

-- Copyright @ Saurabh Sharma (WEL IITB)
-- Used in EE214 Spring 2021
-- This code will be given as it is
-- They don't need to modify the code
-- Ask them not to look into the architecture ;)

--///////////////////////////////////////////////////////////////////////////


library ieee;
use ieee.std_logic_1164.all;

entity div is
    generic(
        N : integer:=8; -- operand width
        NN : integer:=16 -- result width
        );
    port (
        Nu: in std_logic_vector(N-1 downto 0);-- Nu (read numerator) is dividend
        D: in std_logic_vector(N-1 downto 0);-- D (read Denominator) is divisor
        RQ: out std_logic_vector((NN)-1 downto 0)--upper N bits of RQ will have remainder and lower N bits will have quotient
    ) ;
end div;

architecture beh of div is
    -- unconstrained 1D x 1D array
    type pr_type is array (natural range<>) of std_logic_vector(NN-1 downto 0);
    
    -- subtractor function. [Usage: var := sub(X,Y) where var is a variable
    --                                                  and X,Y are two 4-bit inputs for subtractor]
    function sub(A: in std_logic_vector; B: in std_logic_vector)
        return std_logic_vector is
            -- variable declaration
            variable W : integer := A'length;
            variable diff : std_logic_vector(W downto 0):= (others=>'0');
            variable borrow : std_logic_vector(W downto 0):= (0 => '1', others=>'0');
            variable B_sign: std_logic_vector(A'length-1 downto 0):=(others=>'0');
        begin
            B_sign(B'length-1 downto 0) := not B;
            for i in 0 to W-1 loop
                diff(i) := A(i) xor B_sign(i) xor borrow(i);
                borrow(i+1) := (A(i) and B_sign(i)) or (borrow(i) and (A(i) xor B_sign(i)));
            end loop;
            diff(W) := not borrow(W);
            return diff;
    end sub;

begin


division : process(Nu, D)
-- Here Nu (read numerator) is dividend and D (read denominator) is divisor
-- variable k holds length of dividend
variable k : integer := Nu'length;

-- declare variable to hold partial remainder for subsequent iteration  
variable pr : pr_type(0 to k) := (others=>(others=>'0'));

-- declare variable to hold difference from subtractor
variable diff : std_logic_vector(k downto 0) := (others=>'0');

-- declare temporary variable to hold prior partial product in case difference is negative
variable temp : std_logic_vector(k-1 downto 0) := (others=>'0');
begin
    -- initializing partial remainder
    pr(0)(k-1 downto 0):= Nu;

    for i in 0 to k-1 loop
        pr(i+1) := pr(i)(k*2-2 downto 0) & '0';-- shift left
        temp := pr(i+1)(k*2-1 downto k);-- preserve prior partial remainder
        diff := sub(temp, D);-- subtraction of divisor from partial remainder

        if diff(k) = '0' then-- difference is positive
            pr(i+1)(k*2-1 downto k) := diff(k-1 downto 0);
            pr(i+1)(0) := '1';
        else-- difference is negative
            pr(i+1)(0) := '0';
        end if;
    end loop;
    RQ <= pr(k);-- final result assignment
end process ; -- division
end beh ; -- beh