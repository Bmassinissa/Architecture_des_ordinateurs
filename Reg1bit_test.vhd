library ieee;
use ieee.std_logic_1164.all;
entity Reg1bit_test is
	port(
		SW: in std_logic_vector(0 downto 0);
		KEY: in std_logic_vector(1 downto 0);
		LEDR: out std_logic_vector(0 downto 0)
	);
end entity;

architecture struct of Reg1bit_test is
	component Reg1bit is
		port(
			d,clk,rst: in std_logic;
			q: out std_logic
		);
	end component;
	begin
		u: Reg1bit port map(d=> SW(0), clk=> key(0), rst=> not(KEY(1)), q=> LEDR(0));
end struct;