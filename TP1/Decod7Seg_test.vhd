Library IEEE ;
USE ieee.std_logic_1164.all;
entity Decod7Seg_test is
    port (
        SW: in std_logic_vector(3 Downto 0);
        HEX0: out std_logic_vector(6 Downto 0)
    );
end entity Decod7Seg_test;
architecture struct of Decod7Seg_test is
    component Decod7Seg is
        port(
            c: in std_logic_vector(3 downto 0 );
            seg: out std_logic_vector(6 downto 0)
        );
    end component;    
begin
    u: Decod7Seg port map(c(3 downto 0)=>SW(3 downto 0),seg(6 downto 0)=> HEX0(6 downto 0));   
end architecture;        