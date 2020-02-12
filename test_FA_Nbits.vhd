library ieee;
use ieee.std_logic_1164.all;
entity test_FA_Nbits is
    port (
        SW: in std_logic_vector(8 downto 0);
        LEDR: out std_logic_vector(4 downto 0)
    );
end entity test_FA_Nbits;
architecture struct of test_FA_Nbits is
    component FA_Nbits is
        generic(SIZE: positive :=8);
        port (
            a,b: in std_logic_vector(SIZE-1 downto 0);
            cin: in std_logic;
            cout:out std_logic;
            s: out std_logic_vector(Size-1 downto 0)  
        );
        end component;    
begin
    u: FA_Nbits generic map(SIZE=>4) port map(a=>sw(3 downto 0), b=>sw(7 downto 4) , cin=>sw(8), cout=>LEDR(4) , s=>LEDR(3 downto 0));

end architecture;