library ieee;
use ieee.std_logic_1164.all;
entity test_FA_1bit is
    port (
        SW: IN std_logic_vector(2 downto 0);
        LEDR: Out std_logic_vector(1 downto 0)
    );
end entity test_FA_1bit;
architecture struct of test_FA_1bit is
    component FA_1bit is
        port(
            a,b,cin: IN std_logic;
            cout,s: out std_logic
        );
    end component;
begin
    u1: FA_1bit port map(a=>SW(0), b=>sw(1) , cin=>sw(2), cout=> LEDR(1), s=>LEDR(0));  
end architecture struct;