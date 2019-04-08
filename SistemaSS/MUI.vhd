
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- ---Chave seletora(S_IN):
--001 = soma
--011 = subtracao
--111 = inversao(A)
--110 = A > B ?
--100 = A<B ?
---------

entity MUI is
	port (  a : in STD_LOGIC_VECTOR (3 downto 0);
			  b : in STD_LOGIC_VECTOR (3 downto 0);
		   S_IN : in STD_LOGIC_VECTOR (2 downto 0);
			but  : in STD_LOGIC;
		MX_out  : out STD_LOGIC_VECTOR (3 downto 0);
			CTRL : out STD_LOGIC_VECTOR (1 downto 0);
			LED  : out STD_LOGIC);
		  
			
end MUI;

architecture Behavioral of MUI is

	SIGNAL 	MaQ, MeQ, Igual : STD_LOGIC;
	SIGNAL   Co, b_out : STD_LOGIC;
	SIGNAL 	soma, sub : STD_LOGIC_VECTOR (3 downto 0);

	Component somador4 is
		port ( a : in STD_LOGIC_VECTOR (3 downto 0);
				b : in STD_LOGIC_VECTOR (3 downto 0);
				s : out STD_LOGIC_VECTOR (3 downto 0);
			 cin : in STD_LOGIC;
			cout : out STD_LOGIC );
	end component;
	
	Component Subt is
		port( a : in STD_LOGIC_VECTOR (3 downto 0);
				b : in STD_LOGIC_VECTOR (3 downto 0);
				s : out STD_LOGIC_VECTOR (3 downto 0);
		  b_out : out STD_LOGIC);
	end component;
	
	Component CComp is 
		port(a : in STD_LOGIC_VECTOR (3 downto 0);
           b : in STD_LOGIC_VECTOR (3 downto 0);
           MaQ_out, MeQ_out, igul_out : out STD_LOGIC);
	end component;
	
begin

	--Mapeando Somador, subtrator e Comparador

	sot : somador4 port map (a,b,soma,'0',Co);
	sut : Subt 		port map (a,b,sub,b_out);
	ccp : CComp 	port map (a,b,MaQ, MeQ,Igual);
	
		CTRL <= "00" WHEN (but = '1' and ( MaQ = '1' or Igual = '1')) ELSE	-- A>=B e qualquer operacao: OK
				  "01" WHEN (but = '1' and MeQ = '1' and S_IN = "011") ELSE    -- A<B e subtracao: erro
				  "10" WHEN (but = '0') ELSE 												-- Desligado
				  "11";
				  
	--Selecao de chave:
	
		with (S_IN) select 
			MX_out <= soma WHEN "001", 
						 sub  WHEN "011",
					(not a)  WHEN "111",
					 "0000"  WHEN OTHERS;
						
		with (S_IN) select	
			  LED <= MaQ WHEN "110",
						MeQ WHEN "100",
						Co  WHEN "001",
						'0' WHEN OTHERS;

	

end Behavioral;

