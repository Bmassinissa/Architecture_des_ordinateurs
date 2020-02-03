library ieee;
use ieee.std_logic_1164.all;
entity Top_Counter is
	port(
		SW0(0): in std_logic;
		KEY(0): in std_logic;
		HEX0: out std_logic_vector(6 downto 0)
	);
end entity;
architecture struct of Top_Counter is
	component Decod7Seg is
		port (
        	c: in std_logic_vector(3 downto 0);
        	seg: out std_logic_vector(6 downto 0)
		);
	end component;
	component lpm_counter1 is
		PORT(
			aclr		: IN STD_LOGIC ;
			clock		: IN STD_LOGIC ;
			updown		: IN STD_LOGIC ;
			q		: OUT STD_LOGIC_VECTOR (3 DOWNTO 0)
		);
	end component;
	Signal a: std_logic_vector(3 DOWNTO 0);
	Begin
		u0: lpm_counter1 port map(aclr=>KEY(1) , clock=>KEY(0) , updown=> SW0(0), q(3 downto 0)=>a(3 downto 0));
		u1: Decod7Seg port map(c(3 downto 0)=>a(3 downto 0 ),seg(6 downto 0)=> HEX0(6 downto 0));
		end architecture;