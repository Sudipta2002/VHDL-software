library IEEE;
use IEEE.std_logic_1164.all;

entity real is
    port(a: in bit_vector(7 downto 0);
         p : in bit;
         ep: out bit);
end real;

architecture res of real is
    signal temp : bit_vector(6 downto 0);
    begin
        temp(0)<=a(0) xor a(1);
        temp(1)<=temp(0) xor a(2);
        temp(2)<=temp(1) xor a(3);
        temp(3)<=temp(2) xor a(4);
        temp(4)<=temp(3) xor a(5);
        temp(5)<=temp(4) xor a(6);
        temp(6)<=temp(5) xor a(7);
        ep<= p xor temp(6);
end res;
        



