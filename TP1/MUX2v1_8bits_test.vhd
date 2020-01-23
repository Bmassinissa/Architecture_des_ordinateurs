Library IEEE ;
USE ieee.std_logic_1164.all;
entity MUX2v1_8bits_test is
	port(sw: in std_logic_vector(9 downto 0); 
	LEDR : out std_logic_vector(9 downto 0)
	);
end entity;
Architecture struct of MUX2v1_8bits_test is
	component MUX2v1_8bits is 
		port(x,y: IN std_logic_vector(7 downto 0);
			s: IN std_logic;
			m: out std_logic_vector(7 downto 0));
	end component;
	Begin 
		MUX2: MUX2v1_8bits Port Map(s=>sw(9),x(3 downto 0)=>sw(7 downto 4),y(3 downto 0)=>sw(3 downto 0), m(7 downto 0)=>LEDR(7 downto 0));

end Architecture;	
