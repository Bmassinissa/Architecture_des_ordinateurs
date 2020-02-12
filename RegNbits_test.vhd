library ieee;
use ieee.std_logic_1164.all;

entity RegNbits_test is
		generic(N_top: positive :=8);
	port(
		SW: in std_logic_vector(9 downto 0);
		KEY: in std_logic_vector(1 downto 0);
		LEDR: out std_logic_vector(9 downto 0)
	);
end entity;
architecture struct of RegNbits_test is
	component RegNbits is
		generic(N: positive :=4);
		port(
			d: in std_logic_vector(N-1 downto 0);
			clk,Reset: in std_logic;
			q: out std_logic_vector(N-1 downto 0)
		);
	end component;
	begin
		ur: RegNbits generic map(N => N_top) port map(d=>SW(N_top-1 downto 0), clk=> KEY(0), Reset => not(KEY(1)) , q=> LEDR(N_top-1 downto 0));
end architecture;