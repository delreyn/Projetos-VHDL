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
    
	 gen: for i in 0 to 3 generate
		uut: CS port map (a => a(i), b => b(i), c_in => c(i), s => s(i), c_out => c(i+1));
	end generate;
      
    c(0) <= cin;
    cout <= c(4);
    
end Funcionamt;

