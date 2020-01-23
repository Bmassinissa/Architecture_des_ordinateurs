Library IEEE ;
USE ieee.std_logic_1164.all;
Entity MUX2v1 IS
	port(x,y,s: IN std_logic; m: OUT std_logic);
end entity;

Architecture comprtement of MUX2V1 is
Begin
	m <= (not(s)and x)or(s and y);
end Architecture;	
	
