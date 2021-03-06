library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity CS is
        port(a, b, c_in : in std_logic;
             s, c_out   : out std_logic);
end CS;

architecture Behave of CS is
  begin 
    
    s <= a xor b xor c_in;
    c_out <= (( a xor b) and c_in) or (a and b);
    
end Behave;
