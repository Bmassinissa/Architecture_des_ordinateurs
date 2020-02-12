library ieee;
use ieee.std_logic_1164.all;
entity AddSubNbits is
    generic(SIZEB: positive :=4);
    port (
      a,b: in std_logic_vector(SIZEB-1 downto 0);
      cin,addSub: in std_logic;
      cout:out std_logic;
      s: out std_logic_vector(SizeB-1 downto 0)  
    );
end entity AddSubNbits;
architecture behav of AddSubNbits is
    component FA_Nbits is
        generic(SIZE: positive :=8);
        port (
            a,b: in std_logic_vector(SIZE-1 downto 0);
            cin: in std_logic;
            cout:out std_logic;
            s: out std_logic_vector(Size-1 downto 0)  
        );
		end component;
	 Signal sigB: std_logic_vector(SIZEB-1 downto 0);
	 Signal sigCin: std_logic;
    begin
		
		process(addSub)
			begin
				sigB <= b;
				sigCin <= cin; 
				if addSub='1' then
					sigB <= not(b);
					sigCin <= '1'; 
				end if; 	
		end process;
		add: FA_Nbits generic map(SIZE => SIZEB) port map(a => a,b => sigB,cin => sigCin,cout => cout,s => s);

      
end architecture;


