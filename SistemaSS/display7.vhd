library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity projeto is 
	port ( a : in STD_LOGIC_VECTOR(3 downto 0);
			 b : in STD_LOGIC_VECTOR(3 downto 0);
		 S_IN : in STD_LOGIC_VECTOR(2 downto 0);
		butao : in STD_LOGIC;
	 LED_out : out STD_LOGIC;
	display7 : out STD_LOGIC_VECTOR(6 downto 0));
end projeto;

architecture bhv of projeto is

	SIGNAL ctrl : STD_LOGIC_VECTOR (1 downto 0);
	SIGNAL MUX  : STD_LOGIC_VECTOR (3 downto 0);
	
	component MUI is
			port (  a : in STD_LOGIC_VECTOR (3 downto 0);
					  b : in STD_LOGIC_VECTOR (3 downto 0);
				  S_IN : in STD_LOGIC_VECTOR (2 downto 0);
			     but  : in STD_LOGIC;
		     MX_out  : out STD_LOGIC_VECTOR (3 downto 0);
			     CTRL : out STD_LOGIC_VECTOR (1 downto 0);
			     LED  : out STD_LOGIC);
	end component;

 begin


	MMUX : MUI port map (a, b, S_IN, butao, MUX, ctrl, LED_out); 


		display7     <=	"0110110" WHEN ( ctrl = "01" or ctrl = "11"  ) ELSE	--ERROR
								"0000001" WHEN ( MUX = "0000" and ctrl = "00") ELSE	--0
								"1001111" WHEN ( MUX = "0001" and ctrl = "00") ELSE	--1
								"0010010" WHEN ( MUX = "0010" and ctrl = "00") ELSE	--2
								"0000110" WHEN ( MUX = "0011" and ctrl = "00") ELSE	--3
								"1001100" WHEN ( MUX = "0100" and ctrl = "00") ELSE	--4
								"0100100" WHEN ( MUX = "0101" and ctrl = "00") ELSE	--5
								"0100000" WHEN ( MUX = "0110" and ctrl = "00") ELSE	--6
								"0001111" WHEN ( MUX = "0111" and ctrl = "00") ELSE	--7
								"0000000" WHEN ( MUX = "1000" and ctrl = "00") ELSE	--8
								"0000100" WHEN ( MUX = "1001" and ctrl = "00") ELSE	--9
								"0001001" WHEN ( MUX = "1010" and ctrl = "00") ELSE  --A
								"1100000" WHEN ( MUX = "1011" and ctrl = "00") ELSE  --B
								"0110001" WHEN ( MUX = "1100" and ctrl = "00") ELSE  --C
								"1000010" WHEN ( MUX = "1101" and ctrl = "00") ELSE  --D
								"0110000" WHEN ( MUX = "1110" and ctrl = "00") ELSE  --E
								"0111000" WHEN ( MUX = "1111" and ctrl = "00") ELSE  --F
								"1111111";					   	                        --Apagado
								
			

END BHV;