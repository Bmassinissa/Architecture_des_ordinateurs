library ieee;
use ieee.std_logic_1164.all;
entity FA_1bit is
    port (
        a,b,cin: IN std_logic;
        cout,s: out std_logic
    );
end entity FA_1bit;

architecture comp of FA_1bit is
begin
    s <= a xor b xor cin;
    cout<=(a and b) or ((a xor b) and cin);  
end architecture;