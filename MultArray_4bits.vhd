library ieee;
use ieee.std_logic_1164.all;
entity MultArray_4bits is
    port (
      a,b: in std_logic_vector(3 downto 0);
      p: out std_logic_vector(7 downto 0)  
    );
end entity MultArray_4bits;
architecture behav of MultArray_4bits is
	begin
		p(0) <= b(0) and a(0);

end architecture;
	
	

architecture struct of MultArray_4bits is
    component FA_Nbits is
	 generic(SIZE: positive :=8);
		port (
			a,b: in std_logic_vector(SIZE-1 downto 0);
			cin: in std_logic;
			cout:out std_logic;
			s: out std_logic_vector(Size-1 downto 0)  
		);
    end component;    
    signal co: std_logic_vector(1 downto 0);
	 Signal sigS: std_logic_vector(5 downto 0);
begin
    u0: FA_Nbits generic map(SIZE=>4) port map (a(2 downto 0)=>a(3 downto 1) and b(0), b(3 downto 0)=>a(3 downto 0) and b(1) ,cin=>'0', cout=>co(0) , s(3 downto 1)=>sigS(2 downto 0),s(0)=>p(1));
    u1: FA_Nbits generic map(SIZE=>4) port map (a(2 downto 0)=>sigS(2 downto 0), a(3)=>co(0) , b(3 downto 0)=>a and b(2) ,cin=>'0', cout=>co(1) , s(3 downto 1)=>sigS(5 downto 3),s(0)=>p(2));
    u2: FA_Nbits generic map(SIZE=>4) port map (a(2 downto 0)=>sigS(5 downto 3),a(3)=>co(1), b(3 downto 0)=>a(3 downto 0) and b(3) ,cin=>'0', cout=>p(7) , s=>p(6 downto 3),s(0)=>p(3));
end architecture;