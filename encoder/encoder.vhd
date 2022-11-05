library ieee;
use ieee.std_logic_1164.all;

entity encoder is 
	port(m: in STD_LOGIC_VECTOR(3 downto 0);
		  s: out STD_LOGIC_VECTOR(7 downto 0));
end encoder;

architecture structure of encoder is
signal x0,x1,x2,x3,x4,x5,x6,x7:STD_LOGIC;
begin
	x0 <= m(0);
	x1 <= m(3) xor m(0);
	x2 <= m(2) xor m(0);
	x3 <= m(3) xor x2;
	x4 <= m(1) xor m(0);
	x5 <= m(3) xor x4;
	x6 <= m(2) xor x4;
	x7 <= (m(3) xor m(2)) xor x4;
	s <= x0 & x1 & x2 & x3 & x4 & x5 & x6 & x7;
end structure; 

