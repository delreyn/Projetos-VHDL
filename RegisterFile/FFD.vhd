
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity FFD is
	port (D, ld, RESET,clk : in std_logic;
			Q : out std_logic);
end FFD;

architecture Behavioral of FFD is

begin

	process(clk)
		begin 
			if rising_edge(clk) then 
				if (RESET = '1') then 
						Q <= '0';
				elsif (ld = '1') then
						Q <= D;
				end if;
			end if;
	end process;

end Behavioral;

