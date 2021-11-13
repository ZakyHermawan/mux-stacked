library ieee;
use ieee.std_logic_1164.all;

entity little is
	port (
		clock: in std_logic;
		i0: in std_logic_vector(3 downto 0);
		i1: in std_logic_vector(3 downto 0);
		s: in std_logic;
		output: out std_logic_vector(3 downto 0)
	);
	
end entity;

architecture rtl of little is
begin
	process(clock)
	begin
		if s = '0' then
			output <= i0;
		else
			output <= i1;
		end if;
	end process;
end;