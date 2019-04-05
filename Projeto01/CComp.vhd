library IEEE;
use IEEE.STD_LOGIC_1164.all;


entity CComp is 
      port(a : in STD_LOGIC_VECTOR (3 downto 0);
           b : in STD_LOGIC_VECTOR (3 downto 0);
           MaQ_out, MeQ_out, igul_out : out STD_LOGIC);
end CComp;

architecture comp of CComp is
  SIGNAL L0, L1, L2, L3 : STD_LOGIC;

begin 
  L0 <= NOT (A(0) XOR B(0));
  L1 <= NOT (A(1) XOR B(1));
  L2 <= NOT (A(2) XOR B(2));
  L3 <= NOT (A(3) XOR B(3));
  
  igul_out <= L0 AND L1 AND L2 AND L3;
  
  MaQ_out <= (A(3) AND ( NOT B(3))) OR
   (L3 AND (A(2) AND ( NOT B(2)))) OR 
   (L2 AND (L3 AND (A(1) AND ( NOT B(1))))) OR 
   (L1 AND (L2 AND (L3 AND (A(0) AND ( NOT B(0))))));
   
  MeQ_out <= (( NOT A(3)) AND B(3) ) OR 
  ( L3 AND (( NOT A(2)) AND B(2) )) OR 
  ( L2 AND ( L3 AND (( NOT A(1)) AND B(1) ))) OR 
  (L1 AND ( L2 AND ( L3 AND (( NOT A(0)) AND B(0) ))));
  
end comp;
  
  
  
  
