Library IEEE ;
USE ieee.std_logic_1164.all;
entity MUX5v1_3bits is
    port (
        u,v,w,x,y:In std_logic_vector(2 downto 0);
        s:In std_logic_vector(2 downto 0);
        m: out std_logic_vector(2 downto 0)
    );
end entity MUX5v1_3bits;

architecture struct of MUX5v1_3bits is
    component MUX5v1_1bit is
        port(
            u,v,w,x,y: In std_logic;
            s: in std_logic_vector(2 downto 0);
            m: out std_logic
        );
    end component;    
begin
    gen: for i in 0 to 2 generate
        ux: MUX5v1_1bit port map(u=>u(i),v=>v(i),w=>w(i),x=>x(i),y=>y(i),s (2 downto 0)=>s(2 downto 0),m=>m(i));  
    end generate;

end architecture;