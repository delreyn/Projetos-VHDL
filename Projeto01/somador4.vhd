library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity somador4 is 
  port ( a : in STD_LOGIC_VECTOR (3 downto 0);
         b : in STD_LOGIC_VECTOR (3 downto 0);
         s : out STD_LOGIC_VECTOR (3 downto 0);
       cin : in STD_LOGIC;
      cout : out STD_LOGIC );
end somador4;

architecture Funcionamt of somador4 is
  
    component CS is 
        port (a, b, c_in : in STD_LOGIC;
                s, c_out : out STD_LOGIC);
    end component;
  
  signal c : STD_LOGIC_VECTOR (4 downto 0); 
  
  begin
    
    n1 : CS port map (a => a(0), b => b(0), c_in => c(0), s => s(0), c_out => c(1));
    n2 : CS port map (a => a(1), b => b(1), c_in => c(1), s => s(1), c_out => c(2));
    n3 : CS port map (a => a(2), b => b(2), c_in => c(2), s => s(2), c_out => c(3));
    n4 : CS port map (a => a(3), b => b(3), c_in => c(3), s => s(3), c_out => c(4));
      
    c(0) <= cin;
    cout <= c(4);
    
end Funcionamt;

