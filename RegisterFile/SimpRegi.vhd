
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity SimpRegi is
	port( D: IN std_logic_vector(3 downto 0);
			ld, RESET, clk : IN std_logic;
			D_out: OUT std_logic_vector(3 downto 0)
			);

end SimpRegi;

architecture Behavioral of SimpRegi is

	Component FFD is 
			port (D, ld, RESET,clk : in std_logic;
			Q : out std_logic);
	end Component;


begin

GEN :
	for i in 0 to 3 generate 
		REGX : FFD port map (D(i), ld, RESET, clk, D_out(i));
end generate GEN;
		

end Behavioral;

