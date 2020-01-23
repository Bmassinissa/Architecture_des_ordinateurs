Library IEEE ;
USE ieee.std_logic_1164.all;
entity MUX2v1_test is
	port(sw: in std_logic_vector(3 downto 0); 
	LEDR : out std_logic_vector(0 downto 0)
	);
end entity;
Architecture struct of MUX2v1_test is
	component MUX2v1 is 
		port(x,y,s: IN std_logic; m: OUT std_logic);
	end component;
	
	Begin 
	MUX1: MUX2v1 Port Map(x => sw(0) , y => sw(1) , s => sw(3), m=> LEDR(0));
end Architecture;	