library ieee;
use ieee.std_logic_1164.all;

entity part_encoder is 
	port(m0,m1,m2: in STD_LOGIC;
		  s: out STD_LOGIC_VECTOR(7 downto 0));
end part_encoder;

architecture structure of part_encoder is
signal x0,x1,x2,x3,x4,x5,x6,x7:STD_LOGIC;
begin
	x0 <= '0';
	x1 <= m0 xor '0';
	x2 <= m1 xor '0';
	x3 <= m0 xor x2;
	x4 <= m2 xor '0';
	x5 <= m0 xor x4;
	x6 <= m1 xor x4;
	x7 <= (m0 xor m1) xor x4;
	s <= x0 & x1 & x2 & x3 & x4 & x5 & x6 & x7;
end structure; 