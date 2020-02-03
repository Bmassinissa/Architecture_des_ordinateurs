Library IEEE ;
USE ieee.std_logic_1164.all;
entity MUX5v1_1bit is
    port (
        u,v,w,x,y: IN std_logic;
        s: IN std_logic_vector( 2 downto 0);
        m:out std_logic
    );
end entity MUX5v1_1bit;

architecture structurel of MUX5v1_1bit is
    component MUX2v1 is
        port(
            x,y,s: IN std_logic; 
            m: OUT std_logic
			);
        
    end component MUX2v1;

    Signal sig0,sig1,sig2:std_logic; 
begin
    u1: MUX2v1 port Map (x=>u,y=>v,s=>s(0),m=>sig0);
    u2: MUX2v1 port Map (x=>w,y=>x,s=>s(0),m=>sig1);
    u3: MUX2v1 port Map (x=>sig0,y=>sig1,s=>s(1),m=>sig2);
    u4: MUX2v1 port Map (x=>sig2,y=>y,s=>s(2),m=>m);
end architecture structurel;