
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity RegiFile is
	port( D : IN std_logic_vector(3 downto 0);
			RESET : IN std_logic_vector(7 downto 0);
			Rd_addr, Wr_addr: IN std_logic_vector(2 downto 0);
			clk, W_ENABLE : IN std_logic;
			Q : OUT std_logic_vector(3 downto 0)
			);

end RegiFile;

architecture Behavioral of RegiFile is

Component SimpRegi is
	port( D: IN std_logic_vector(3 downto 0);
			ld, RESET, clk : IN std_logic;
			D_out: OUT std_logic_vector(3 downto 0)
			);

end component;

--SIGNAL D : STD_logic_vector(3 DOWNTO 0);
SIGNAL Q0, Q1, Q2,Q3,Q4,Q5,Q6,Q7 : STD_logic_vector(3 DOWNTO 0);
SIGNAL W : STD_logic_vector(7 downto 0);
SIGNAL enab : std_logic_vector(7 downto 0);
--SIGNAL D0, D1, D2,D3,D4,D5,D6,D7 : STD_logic_vector(3 DOWNTO 0);

begin

	REG0 : SimpRegi port map (D,enab(0),RESET(0),clk,Q0);
	REG1 : SimpRegi port map (D,enab(1),RESET(1),clk,Q1);
	REG2 : SimpRegi port map (D,enab(2),RESET(2),clk,Q2);
	REG3 : SimpRegi port map (D,enab(3),RESET(3),clk,Q3);
	REG4 : SimpRegi port map (D,enab(4),RESET(4),clk,Q4);
	REG5 : SimpRegi port map (D,enab(5),RESET(5),clk,Q5);
	REG6 : SimpRegi port map (D,enab(6),RESET(6),clk,Q6);
	REG7 : SimpRegi port map (D,enab(7),RESET(7),clk,Q7);
	
	with Rd_addr select Q <= 
		Q0 when "000",
		Q1 when "001",
		Q2 when "010",
		Q3 when "011",
		Q4 when "100",
		Q5 when "101",
		Q6 when "110",
		Q7 when "111";
		
	ena :
		for i in 0 to 7 generate
			enable : enab(i) <= W(i) and W_ENABLE;
	end generate ena;
	
	with Wr_addr select W <=
		"00000001" when "000",
		"00000010" when "001",
		"00100100" when "010",
		"00001000" when "011",
		"00010000" when "100",
		"00100000" when "101",
		"01000000" when "110",
		"10000000" when "111";

end Behavioral;

