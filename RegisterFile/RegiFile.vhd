
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity RegiFile is
	port( D0, D1 , D2, D3, D4, D5, D6, D7 : IN std_logic_vector(3 downto 0);
			wrt, RESET: IN std_logic_vector(7 downto 0);
			clk : IN std_logic;
			Q0, Q1, Q2, Q3, Q4, Q5, Q6, Q7 : OUT std_logic_vector(3 downto 0)
			);

end RegiFile;

architecture Behavioral of RegiFile is

Component SimpRegi is
	port( D: IN std_logic_vector(3 downto 0);
			ld, RESET, clk : IN std_logic;
			D_out: OUT std_logic_vector(3 downto 0)
			);

end component;

begin

	REG0 : SimpRegi port map (D0,wrt(0),RESET(0),clk,Q0);
	REG1 : SimpRegi port map (D1,wrt(1),RESET(1),clk,Q1);
	REG2 : SimpRegi port map (D2,wrt(2),RESET(2),clk,Q2);
	REG3 : SimpRegi port map (D3,wrt(3),RESET(3),clk,Q3);
	REG4 : SimpRegi port map (D4,wrt(4),RESET(4),clk,Q4);
	REG5 : SimpRegi port map (D5,wrt(5),RESET(5),clk,Q5);
	REG6 : SimpRegi port map (D6,wrt(6),RESET(6),clk,Q6);
	REG7 : SimpRegi port map (D7,wrt(7),RESET(7),clk,Q7);
	
		

end Behavioral;

