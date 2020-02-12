library ieee;
use ieee.std_logic_1164.all;

entity Reg1bit is
	port(
		D,CLK,RST: in std_logic;
		Q: out std_logic
	);
end entity;

architecture comp of Reg1bit is
	begin
		process(clk,rst)
			begin
			if rst='1' then
				q<='0';
			elsif rising_edge(clk) then
				q <= d;
			end if;
		end process;
end architecture;
