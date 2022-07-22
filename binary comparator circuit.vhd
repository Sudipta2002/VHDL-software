library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

entity comp is
    port(a,b: in std_logic_vector(3 downto 0);
        g,e,l: out std_logic);
end comp;

architecture res of comp is
    begin
        g<= '1' when (a>b)
        else '0';
        l<= '1' when (a<b)
        else '0';
        e<= '1' when (a=b)
        else '0';
end res;

