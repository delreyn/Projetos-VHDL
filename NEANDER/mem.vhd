LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;

ENTITY mem IS 
--	GENERIC (N : integer := 8; -- number of bits in addrs
--				M : integer := 8; -- number of bits in each register
--				R : integer := 16); -- number of registers
				
	PORT ( R_addr, W_addr : IN std_logic_vector(7 downto 0);
			 R_en, W_en : IN std_logic;
			 R_Data : OUT std_logic_vector(7 downto 0);
			 W_Data : IN std_logic_vector(7 downto 0);
			 Clk, Rst : IN std_logic);
end mem;

ARCHITECTURE bhv OF mem IS 

		TYPE regfile_TYPE IS 
					ARRAY (0 to 15) OF std_logic_vector(7 downto 0);
		SIGNAL regFile : regfile_TYPE;
		
	BEGIN 
	w_process : process(clk)
		begin
		IF rising_edge(clk) THEN 
			IF (RST = '1') THEN 
				for i in 0 to 15 loop
                    regFile(i) <= (others => '0');
                end loop;
				ELSIF (W_en = '1') THEN 
					regFile(conv_integer(W_addr)) <= W_data;
				end if;
			END IF;
		end process;
		
		r_process : process(R_addr,R_en,regFile)
		Begin
			
			IF( R_en = '1') then 
				R_data <= regFile(conv_integer(R_addr));
			ELSE 
				R_data <= (others => 'Z');-- output of High impedance(Z) of STD_logic
			END IF;
		END PROCESS;
	END bhv;
		
				