library ieee;
use ieee.std_logic_1164.all;
entity test_addSubNbits is
    port (
        SW: in std_logic_vector(9 downto 0);
        LEDR: out std_logic_vector(4 downto 0)
    );
end entity test_addSubNbits;
architecture struct of test_addSubNbits is
    component addSubNbits is
        generic(SIZEB: positive :=8);
        port (
            a,b: in std_logic_vector(SIZEB-1 downto 0);
            cin,addSub: in std_logic;
            cout:out std_logic;
            s: out std_logic_vector(SizeB-1 downto 0)  
        );
        end component;    
begin
    u: addSubNbits generic map(SIZEB => 4) port map(a=>sw(3 downto 0), b=>sw(7 downto 4) , cin=>sw(8),addSub=>sw(9), cout=>LEDR(4) , s=>LEDR(3 downto 0));

end architecture;