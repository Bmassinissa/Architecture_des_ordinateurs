library ieee;
use ieee.std_logic_1164.all;
entity FA_Nbits is
    generic(SIZE: positive :=8);
    port (
      a,b: in std_logic_vector(SIZE-1 downto 0);
      cin: in std_logic;
      cout:out std_logic;
      s: out std_logic_vector(Size-1 downto 0)  
    );
end entity FA_Nbits;

architecture struct of FA_Nbits is
    component FA_1bit is
        port (
            a,b,cin: IN std_logic;
            cout,s: out std_logic
        ); 
    end component;    
    signal co: std_logic_vector(SIZE-2 downto 0);
begin
    u0: FA_1bit port map (a=>a(0), b=>b(0) ,cin=>cin, cout=>co(0) , s=>s(0));
    gen: for i in 1 to SIZE-2 generate
        u: FA_1bit port map(a=>a(i),b=>b(i),cin=>co(i-1),cout=>co(i),s=>s(i));     
    end generate gen;
	 v0: FA_1bit port map (a=>a(SIZE-1), b=>b(SIZE-1) ,cin=>co(SIZE-2), cout=>cout , s=>s(SIZE-1));
end architecture;