library ieee;
use ieee.std_logic_1164.all;

entity mux is
	port (
		clock: in std_logic;
		s0: in std_logic;
		s1: in std_logic;
		i0: in std_logic_vector(3 downto 0);
		i1: in std_logic_vector(3 downto 0);
		i2: in std_logic_vector(3 downto 0);
		i3: in std_logic_vector(3 downto 0);
		output: out std_logic_vector(3 downto 0)
	);
end entity;

architecture rtl of mux is
	component little is
		port(
			clock: in std_logic;
			i0: in std_logic_vector(3 downto 0);
			i1: in std_logic_vector(3 downto 0);
			s: in std_logic;
			output: out std_logic_vector(3 downto 0)
		);
	end component little;
	signal tmp0, tmp1: std_logic_vector(3 downto 0);
begin
	atas: little
	port map (
		clock => clock,
		i0 => i0,
		i1 => i1,
		s => s0,
		output => tmp0
	);
	
	bawah: little
	port map (
		clock => clock,
		i0 => i2,
		i1 => i3,
		s => s0,
		output => tmp1
	);
	
	depan: little
	port map (
		clock => clock,
		i0 => tmp0,
		i1 => tmp1,
		s => s1,
		output => output
	);

end rtl;
