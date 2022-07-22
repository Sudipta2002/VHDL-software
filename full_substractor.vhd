library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;

entity sub is
    port(a,b,bin: in std_logic;
        d,bo: out std_logic);
end sub;

architecture res of sub is
    begin
        d<=a xor b xor bin;
        bo<=((not a)and b) or ((not a) AND bin) or (bin and b);
end res;
    

