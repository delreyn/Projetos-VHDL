library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity CSubt is 
  port ( a, b,  b_in : in STD_LOGIC;
         S, b_out    : out STD_LOGIC);
end CSubt;

-- A expressao do subtrator eh:
--S: (X xor Y) xor Bin
-- bit Borrow out eh:
-- ((NOT X) AND Y) OR ((NOT(X XOR Y)) AND Bin 

architecture Behave of CSubt is 
  begin
    s <= (a xor b) xor b_in;
    b_out <= ((NOT a) AND b) OR (((NOT(a XOR b))) AND b_in);
end Behave;
