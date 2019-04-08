library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Subt is
	port( a : in STD_LOGIC_VECTOR (3 downto 0);
         b : in STD_LOGIC_VECTOR (3 downto 0);
         s : out STD_LOGIC_VECTOR (3 downto 0);
	  b_out : out STD_LOGIC);
end Subt;

architecture Behavioral of Subt is

	component CS is
        port(a, b, c_in : in std_logic;
             s, c_out   : out std_logic);
	end component;
	
	SIGNAL T : STD_LOGIC_VECTOR (2 downto 0);
	Signal I :	STD_LOGIC_VECTOR (3 downto 0);
begin

	I <= not b;
	
	k0 : CS port map(a(0), I(0), '1', s(0), T(0));
	k1 : CS port map(a(1), I(1), T(0), s(1), T(1));
	k2 : CS port map(a(2), I(2), T(1), s(2), T(2));
	k3 : CS port map(a(3), I(3), T(2), s(3), b_out);
	

end Behavioral;

