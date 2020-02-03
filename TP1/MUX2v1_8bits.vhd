Library IEEE ;
USE ieee.std_logic_1164.all;
entity MUX2v1_8bits is
	port(x,y: IN std_logic_vector(7 downto 0);
		s: IN std_logic;
		m: out std_logic_vector(7 downto 0));
end entity;

Architecture arch of MUX2v1_8bits is
	component MUX2v1 is
		port(x,y,s: IN std_logic; m: OUT std_logic);
	end component;
	begin
		gen: for i in 0 to 7 GENERATE
			mux: MUX2v1 port map(x=>x(i), y=>y(i),s=>s, m=>m(i));
		end generate gen;
end Architecture;		
		
		