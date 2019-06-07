LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;
USE ieee.std_logic_arith.all;

ENTITY NEANDER IS 
	PORT (ENTRADA : IN STD_LOGIC_VECTOR(7 downto 0);
			clk, RST : IN STD_LOGIC;
			ledZ, ledN : OUT STD_LOGIC
			);

END NEANDER;

architecture bhv of NEANDER is 
	
	COMPONENT mem 
--	GENERIC (N : integer := 8; -- number of bits in addrs
--				M : integer := 8; -- number of bits in each register
--				R : integer := 16); -- number of registers
				
	PORT ( R_addr, W_addr : IN STD_LOGIC_VECTOR(7 downto 0);
			 R_en, W_en : IN STD_LOGIC;
			 R_Data : OUT STD_LOGIC_VECTOR(7 downto 0);
			 W_Data : IN STD_LOGIC_VECTOR(7 downto 0);
			 Clk, Rst : IN STD_LOGIC
			 );
end COMPONENT;

type STATE_T is (t0,t1,t2,t3,t4,t5,t6,t7,hlt_state); 
signal nxt_stat, stat : STATE_T;

type COMMAND_T is (NOP,STA,LDA,ADD,OP_OR,OP_AND,OP_NOT,JMP,JN,JZ,HLT);
signal COMMAND : COMMAND_T;

signal sel :  	STD_LOGIC; -- Seletor MPX
signal mux_out :  STD_LOGIC_VECTOR (7 downto 0);		  
signal pc_out :  STD_LOGIC_VECTOR (7 downto 0);		
signal mem_out :  STD_LOGIC_VECTOR (7 downto 0);	
signal contadorPC :  STD_LOGIC_VECTOR (7 downto 0);
signal cargaPC :  STD_LOGIC;
signal cargaREM :  STD_LOGIC;
signal cargaRDM : STD_LOGIC;
signal incrementaPC :  STD_LOGIC;
signal RDM_mem : STD_LOGIC_VECTOR(7 downto 0);
signal RDM_out : STD_LOGIC_vector(7 downto 0);
signal REM_out :  STD_LOGIC_VECTOR (7 downto 0);
signal REM_REG :  STD_LOGIC_VECTOR (7 downto 0);
signal RD_out : STD_LOGIC_vector(7 downto 0);
signal X :  STD_LOGIC_VECTOR (7 downto 0);
signal Y :  STD_LOGIC_VECTOR (7 downto 0);
signal ula_out :  STD_LOGIC_VECTOR (7 downto 0);	  
signal sel_ula :  	STD_LOGIC_VECTOR (2 downto 0);
signal ac_reg :  STD_LOGIC_VECTOR (7 downto 0);	
signal ac_out :  STD_LOGIC_VECTOR (7 downto 0);	
signal cargaAC :  STD_LOGIC;	
--signal loadREM :  STD_LOGIC;	
signal op_reg :  STD_LOGIC_VECTOR (7 downto 0);	
signal op_out :  STD_LOGIC_VECTOR (7 downto 0);	
signal cargaRI :  STD_LOGIC;
signal nz_reg :  STD_LOGIC_VECTOR (1 downto 0);	
signal nz_out : STD_LOGIC_VECTOR (1 downto 0); 
signal cargaNZ :  STD_LOGIC; --- Carga OP	
signal write_enable :  STD_LOGIC;
signal read_enable : STD_LOGIC;
signal mem_in :   STD_LOGIC_VECTOR (7 downto 0);	
signal R_ula_out :   STD_LOGIC_VECTOR (7 downto 0);	 

begin 

--mapeadno memoria
	memoriaNeander : mem PORT MAP(R_addr => REM_out,
											W_addr => REM_out,
											R_en => read_enable,
											W_en => write_enable,
											W_Data => RDM_mem,
											R_Data => mem_out,
											Clk => clk, rst => rst);

--opCode

process (clk,rst)
	begin
		if rst='1' then
			op_reg<= (others=>'0');
		elsif rising_edge(clk) then
			if (cargaRI='1') then
				op_reg <=RDM_out;
			else
				op_reg<=op_reg;
			end if;
	end if;
end process;
op_out<= op_reg;

-- Decodificador

	DECODER: process (op_out) begin  
		case  op_out(7 downto 4) is
	
			when "0000"  => COMMAND <= NOP;
			when "0001"  => COMMAND <= STA;
			when "0010"  => COMMAND <= LDA;
			when "0011"  => COMMAND <= ADD;
			when "0100"  => COMMAND <= OP_OR;
			when "0101"  => COMMAND <= OP_AND;
			when "0110"  => COMMAND <= OP_NOT;
			when "1000"  => COMMAND <= JMP;
			when "1001"  => COMMAND <=	JN;
			when "1010"  => COMMAND <= JZ; 
			when "1111"  => COMMAND <= HLT;
			when others  => COMMAND <= HLT;
		 
		end case;
	end process DECODER;


--ULA

X <= ac_out;

	ULA : process(sel_ula,Y)
			begin
				
					case sel_ula is
						when "000" => 
							R_ula_out <= std_logic_vector(X+Y);
						when "001" =>
							R_ula_out <= std_logic_vector(X and Y);
						when "010" =>
							R_ula_out <= std_logic_vector(X or Y);
						when "011" =>
							R_ula_out <= not X;
						when "100" =>
							R_ula_out <=  Y;
						when others =>
							R_ula_out <=  Y;
			end case;
	end process ULA;
	
ula_out <= R_ula_out;


-- PC
	pc : process (clk,rst)
		begin
			if rst='1' then
				contadorPC<= (others=>'0');
			elsif rising_edge(clk) then
				if (cargaPC='1') then
					contadorPC <=mem_out;
				elsif(incrementaPC='1') then
					contadorPC <= contadorPC + 1;
					else
					contadorPC<=contadorPC;
					end if;
				end if;
	end process pc;
	
	pc_out<= contadorPC;
	
-- MPX

	mux : process (sel,clk)  begin 
		case sel is
			when '0' => mux_out <= 	pc_out;
			when others => mux_out <= RDM_out;
		end case;
	end process mux;

--REM

	R_EM : process (clk,rst,cargaREM)
			begin
				if rst='1' then
					REM_REG<= (others=>'0');
				elsif rising_edge(clk) then
					if (cargaREM='1') then
						REM_REG <=mux_out;
					else
						REM_REG<=REM_REG;
					end if;
				end if;
	end process R_EM;

REM_out<= REM_REG;

--RDM

	RDM : process(clk, rst, cargaRDM)
		begin
		
			if rst='1' then
					RDM_mem<= (others=>'0');
					RD_out <= (others=>'0');
			elsif rising_edge(clk) then
				if (cargaRDM = '1') then
					RDM_mem <= ac_out;
					RD_out <= mem_out;
				end if;
			end if;
	end process RDM;
RDM_out <= RD_out;

--AC
mem_in <= RDM_mem;
Y <= RDM_out; 

Acumulador : process (clk,rst) --process (clk,rst)
	begin
		if rst='1' then
			ac_reg<= (others=>'0');
		elsif rising_edge(clk) then
			if (cargaAC='1') then
				ac_reg <=ula_out;
			else
				ac_reg<=ac_reg;
		end if;
	end if;
end process Acumulador;

ac_out<= ac_reg;

--NZ

	NZ : process (clk,rst)
		begin
			if rst='1' then
				nz_reg<= (others=>'0');
			elsif rising_edge(clk) then
				if (cargaNZ='1') then
				if ac_out = "00000000" then
					nz_reg(0) <= '1';
				else
					nz_reg(0) <= '0';
				end if;
				nz_reg(1) <= ac_out(7);
			else
				nz_reg<=nz_reg;
		end if;
	end if;
end process NZ;

nz_out<= nz_reg;
ledZ <= nz_out(0);
ledN <= nz_out(1);

	Process(clk, rst)
		Begin
			If rst='1' then
				stat <= t0;
			Elsif RISing_edge(CLK) then
				stat <= NXT_stat;
			End if;
	End process;


	FSM: Process(cargaAC,cargaNZ,sel,cargaPC,incrementaPC,write_enable,cargaREM,stat,COMMAND)

		Begin
			case stat is
				when t0 =>
					sel          <= '0';
					cargaREM     <= '1';
					cargaRI      <= '0' ;  
					cargaAC      <= '0';   
					cargaNZ      <= '0';   
					cargaPC      <= '0';   
					incrementaPC <= '0';  
					write_enable <= '0'; 
					nxt_stat <= t1;

				when t1 =>
					cargaREM <= '0' ;
					REAd_enable <= '1';	-- Read
					incrementaPC <= '1';
					nxt_stat <= t2;

				when t2 =>
					incrementaPC <= '0'; 
					cargaRI <= '1';
					nxt_stat <= t3;

				when t3 => 
					incrementaPC <= '0'; 
					cargaRI <= '0' ;        
					if (COMMAND=STA or COMMAND=LDA  or COMMAND=ADD or 
					COMMAND=OP_OR or COMMAND=OP_AND or COMMAND=JMP) then
						sel <= '0';
						cargaREM <= '1';
						nxt_stat <= t4;
					elsif (COMMAND=OP_NOT) then
						sel_ula <= "011";
						cargaAC <= '1';
						cargaNZ <= '1';
						nxt_stat <= t0;
					elsif (COMMAND=JN and NZ_out(1)='0') then
						incrementaPC <= '1';
						nxt_stat <= t0;
					elsif (COMMAND=JN and NZ_out(1)='1') then
						sel <= '0';
						cargaREM <= '1';
						nxt_stat <= t4;
					elsif (COMMAND=JZ and NZ_out(0)='1') then
						sel <= '0';
						cargaREM <= '1';
						nxt_stat <= t4;
					elsif (COMMAND=JZ and NZ_out(0)='0') then
						incrementaPC <= '1';
						nxt_stat <= t0;
					elsif (COMMAND=NOP) then
						nxt_stat <= t0;
					elsif (COMMAND=HLT) then
						incrementaPC <= '0';
						nxt_stat <= hlt_state;
					else
						nxt_stat <= t4;
				end if;
			when t4 => 
				sel <= '0';  
				incrementaPC <= '0';
				cargaAC  <= '0';         
				cargaNZ  <= '0';        
				cargaREM <= '0';     
				if(COMMAND=STA or COMMAND=LDA or COMMAND=ADD or COMMAND=OP_OR or COMMAND=OP_AND) then
					mem_in<=REM_out; -- Read;
					incrementaPC <= '1';
					nxt_stat <= t5;
				elsif(COMMAND=JMP) then
					REAd_enable <= '1';-- Read
					nxt_stat <= t5;
				elsif(COMMAND=JN and NZ_out(1)='1') then
					REAd_enable <= '1';-- Read
					nxt_stat <= t5;
				elsif(COMMAND=JZ and NZ_out(0)='1') then
					REAd_enable <= '1';-- Read
					nxt_stat <= t5;
				end if;
			when t5 =>
				incrementaPC <= '0' ; 		  
				if(COMMAND=STA or COMMAND=LDA or COMMAND=ADD or COMMAND=OP_OR or COMMAND=OP_AND) then
					sel <= '1';
					cargaREM <= '1';
					nxt_stat <= t6;
				elsif(COMMAND=JMP ) then
					cargaPC <= '1';
					nxt_stat <= t0;
				elsif(COMMAND=JN and NZ_out(1)='1') then
					cargaPC <= '1';
					nxt_stat <= t0;
				elsif(COMMAND=JZ and NZ_out(0)='1') then
					cargaPC <= '1';
					nxt_stat <= t0;
				else
					nxt_stat <= t6;
				end if;
			when t6 =>
				incrementaPC <= '0'; 
				sel <= '0';       
				cargaREM <= '0'; 
				cargaPC <= '0';   
					-- Foi tirado o RDM, dai nao tem COMMAND=STA nesse estado
				if(COMMAND=LDA or COMMAND=ADD or COMMAND=OP_OR or COMMAND=OP_AND) then
					mem_in<=REM_out;	-- Read
					nxt_stat <= t7;
				else if(COMMAND=STA) then 
					cargaRDM <= '1';
					nxt_stat <= t7;
				else 
					nxt_stat <= t7;
				end if;
				end if;
			when t7 =>
				incrementaPC <= '0'; 
				if(COMMAND=STA) then
					mem_in<=AC_out;-- Colocar no memoria_in o dado antes de gravar
					write_enable <= '1';
					nxt_stat <= t0;
				elsif(COMMAND=LDA) then
					sel_ula <= "100";
					cargaAC <= '1';
					cargaNZ <= '1';
					nxt_stat <= t0;
				elsif(COMMAND=ADD) then
					sel_ula <= "000";
					cargaAC <= '1';
					cargaNZ <= '1';
					nxt_stat <= t0;
				elsif(COMMAND=OP_OR) then
					sel_ula <= "010";
					cargaAC <= '1';
					cargaNZ <= '1';
					nxt_stat <= t0;
				elsif(COMMAND=OP_AND) then
					sel_ula <= "001";
					cargaAC <= '1';
					cargaNZ <= '1';
					nxt_stat <= t0;
				else
					nxt_stat <= t0;
				end if;
		
		when hlt_state =>		
			incrementaPC <= '0'; 
			nxt_stat <= hlt_state;
		
end case;
End process; 

end bhv;


