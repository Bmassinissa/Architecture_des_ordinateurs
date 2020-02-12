library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;

entity RegNbits is
	generic(N: positive :=4);
	port(
		D :in std_logic_VECTOR(N-1 downto 0);
		Reset, CLK : in std_logic;
		Q : out std_logic_VECTOR(N-1 downto 0));
end entity;

architecture bhv of RegNbits is

	component Reg1bit is
		port (D :in std_logic;
		rst, CLK : in std_logic;
		Q : out std_logic);
	end component Reg1bit;
	
	begin	
			reg_4b : for i in 0 to N-1 generate
					reg : Reg1bit port map(D=>D(i),Q=>Q(i),rst=>Reset,CLK=>CLK);
			end generate;
	
end bhv;