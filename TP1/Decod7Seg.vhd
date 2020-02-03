Library IEEE ;
USE ieee.std_logic_1164.all;
entity Decod7Seg is
    port (
        c: in std_logic_vector(3 downto 0);
        seg: out std_logic_vector(6 downto 0)
    );
end entity Decod7Seg;
architecture comport of Decod7Seg is
    constant affiche_0: std_logic_vector(6 downto 0) :="1000000";
    constant affiche_1: std_logic_vector(6 downto 0) :="1111001";
    constant affiche_2: std_logic_vector(6 downto 0) :="0100100";
    constant affiche_3: std_logic_vector(6 downto 0) :="0110000";
    constant affiche_4: std_logic_vector(6 downto 0) :="0011001";
    constant affiche_5: std_logic_vector(6 downto 0) :="0010010";
    constant affiche_6: std_logic_vector(6 downto 0) :="0000010";
    constant affiche_7: std_logic_vector(6 downto 0) :="1111000";
    constant affiche_8: std_logic_vector(6 downto 0) :="0000000";
    constant affiche_9: std_logic_vector(6 downto 0) :="0010000";
    constant affiche_A: std_logic_vector(6 downto 0) :="0001000";
    constant affiche_B: std_logic_vector(6 downto 0) :="0000011";
    constant affiche_C: std_logic_vector(6 downto 0) :="1000110";
    constant affiche_D: std_logic_vector(6 downto 0) :="0100001";
    constant affiche_E: std_logic_vector(6 downto 0) :="0000110";
    constant affiche_F: std_logic_vector(6 downto 0) :="0001110";

begin
    decode : process(c)
        begin
            case c is
                when "0000" => seg <= affiche_0;
                when "0001" => seg <= affiche_1;
                when "0010" => seg <= affiche_2;
                when "0011" => seg <= affiche_3;
                when "0100" => seg <= affiche_4;
                when "0101" => seg <= affiche_5;
                when "0110" => seg <= affiche_6;
                when "0111" => seg <= affiche_7;
                when "1000" => seg <= affiche_8;
                when "1001" => seg <= affiche_9;
                when "1010" => seg <= affiche_A;
                when "1011" => seg <= affiche_B;
                when "1100" => seg <= affiche_C;
                when "1101" => seg <= affiche_D;
                when "1110" => seg <= affiche_E;
                when others => seg <= affiche_F;
            end case;
    
    end process;
    
end architecture comport;