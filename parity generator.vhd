library IEEE;
use IEEE.std_logic_1164.all;

entity check is
    port(a: in bit_vector(7 downto 0);
         ep,op: out bit);
end check;

architecture res of check is
    signal temp : bit_vector(5 downto 0);
    begin
        temp(0)<=a(0) xor a(1);
        temp(1)<=temp(0) xor a(2);
        temp(2)<=temp(1) xor a(3);
        temp(3)<=temp(2) xor a(4);
        temp(4)<=temp(3) xor a(5);
        temp(5)<=temp(4) xor a(6);
        ep<=temp(5) xor a(7);
        op<= not(temp(5) xor a(7));
end res;
        

