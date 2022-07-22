library IEEE;
use IEEE.std_logic_1164.all;


entity encoder is
    port(a: in std_logic_vector(3 downto 0);
         y: out std_logic_vector(1 downto 0));
         
end encoder;
architecture res of encoder is
    begin process(a)
       begin case a is
        when "0001" => y <= "00";
        when "0010" => y <= "01";
        when "0100" => y <= "10";
        when others => y <= "11";
       end case;
   end process;
end res;
