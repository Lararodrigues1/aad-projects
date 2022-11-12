library ieee;
use ieee.std_logic_1164.all;

library control;
use control.all;

library storeDev;
use storeDev.all;

library arithmetic;
use arithmetic.all;

library simpleLogic;
use simpleLogic.all;



entity serial_encoder IS
  PORT (nGRst: IN STD_LOGIC; 
		  clk:   IN STD_LOGIC;
		  mIn:   IN STD_LOGIC;
		  x:	  OUT STD_LOGIC);
end serial_encoder;

entity rom is
	port(addr:	IN STD_LOGIC_VECTOR(1 downto 0);
		  k:		OUT STD_LOGIC_VECTOR(7 downto 0));
end rom;

architecture behavioral of rom is
type rom_type is array(0 to 3) of STD_LOGIC_VECTOR(7 downto 0);
constant rom_table : rom_type := (
	"01010101",
	"00110011",
	"00001111",
	"11111111"

);
begin
	ctrlbits<=rom_table(to_integer(unsigned(addr)));
end behavioral;
 
architecture structure of serial_encoder is
signal stat: STD_LOGIC_VECTOR(2 downto 0);
signal iNSet, iNRst,s_Q,clk: STD_LOGIC;
signal s_mIn,s_romIn:STD_LOGIC;
--Saida da ROM
signal s_ctrlb : STD_LOGIC_VECTOR(7 downto 0); 
--Saida dos Registos
signal s_ff : STD_LOGIC;

--Saida do RegPar
signal s_regParIn : STD_LOGIC_VECTOR(7 downto 0);
signal s_regParOut : STD_LOGIC_VECTOR(7 downto 0);

--Sinal Controlo dos ANDs
signal s_k0,s_k1,s_k2,s_k3,s_k4,s_k5,s_k6,s_k7: STD_LOGIC;
signal s_andOut0,s_andOut1,s_andOut2,s_andOut3,s_andOut4,s_andOut5,s_andOut6,s_andOut7: STD_LOGIC;

signal s_regQ0,s_regQ1,s_regQ2,s_regQ3,s_regQ4,s_regQ5,s_regQ6,s_regQ7 : STD_LOGIC
--Saida dos XORs
signal s_xorOut0 : STD_LOGIC;
signal s_xorOut1 : STD_LOGIC;
signal s_xorOut2 : STD_LOGIC;
signal s_xorOut3 : STD_LOGIC;
signal s_xorOut4 : STD_LOGIC;
signal s_xorOut5 : STD_LOGIC;
signal s_xorOut6 : STD_LOGIC;
signal s_xorOut7 : STD_LOGIC;

--Sinal Controlo dos ANDs
signal s_k0 : STD_LOGIC;
signal s_k1 : STD_LOGIC;
signal s_k2 : STD_LOGIC;
signal s_k3 : STD_LOGIC;
signal s_k4 : STD_LOGIC;
signal s_k5 : STD_LOGIC;
signal s_k6 : STD_LOGIC;
signal s_k7 : STD_LOGIC;

component flipFlopD
 PORT(clk, D:     IN STD_LOGIC;
		nSet, nRst: IN STD_LOGIC;
		Q, nQ:      OUT STD_LOGIC);
end component;

component gateAnd2
PORT (x1, k:  IN STD_LOGIC;
		Q:      OUT STD_LOGIC;
end component;	

component gatexor2
PORT (x1, x2: IN STD_LOGIC;
		Q:      OUT STD_LOGIC;
end component;	

component bitCounter
PORT (nRst: IN STD_LOGIC;
		clk:  IN STD_LOGIC;
		c:    OUT STD_LOGIC_VECTOR (2 DOWNTO 0));
end component;

component ParReg_8bit
	 PORT (nSet: IN STD_LOGIC;
			 nRst: IN STD_LOGIC;
          clk: IN STD_LOGIC;
          D: IN STD_LOGIC_VECTOR (7 DOWNTO 0);
          S: OUT STD_LOGIC_VECTOR (7 DOWNTO 0));
end component;

component valid
end component;	

begin
	s_k0<=s_ctrlb(0);
	s_k1<=s_ctrlb(1);
	s_k2<=s_ctrlb(2);
	s_k3<=s_ctrlb(3);
	s_k4<=s_ctrlb(4);
	s_k5<=s_ctrlb(5);
	s_k6<=s_ctrlb(6);
	s_k7<=s_ctrlb(7);
	
	ff:flipFlopD(clk, s_mIn,iNSet,iNRst,s_ff);
	
	and0: gateAnd2(s_ff,s_k0, s_andOut0);
	and1: gateAnd2(s_ff,s_k1, s_andOut1);
	and2: gateAnd2(s_ff,s_k2, s_andOut2);
	and3: gateAnd2(s_ff,s_k3, s_andOut3);
	and4: gateAnd2(s_ff,s_k4, s_andOut4);
	and5: gateAnd2(s_ff,s_k5, s_andOut5);
	and6: gateAnd2(s_ff,s_k6, s_andOut6);
	and7: gateAnd2(s_ff,s_k7, s_andOut7);
	
	xor0: gateXor2(s_andOut0,s_regQ0,s_xorOut0);
	xor1: gateXor2(s_andOut1,s_regQ1,s_xorOut1);
	xor2: gateXor2(s_andOut2,s_regQ2,s_xorOut2);
	xor3: gateXor2(s_andOut3,s_regQ3,s_xorOut3);
	xor4: gateXor2(s_andOut4,s_regQ4,s_xorOut4);
	xor5: gateXor2(s_andOut5,s_regQ5,s_xorOut5);
	xor6: gateXor2(s_andOut6,s_regQ6,s_xorOut6);
	xor7: gateXor2(s_andOut7,s_regQ7,s_xorOut7);
	
	reg0:flipFlopD(clk,s_xorOut0,iNset,iNRst,s_regQ0);
	reg1:flipFlopD(clk,s_xorOut1,iNset,iNRst,s_regQ1);
	reg2:flipFlopD(clk,s_xorOut2,iNset,iNRst,s_regQ2);
	reg3:flipFlopD(clk,s_xorOut3,iNset,iNRst,s_regQ3);
	reg4:flipFlopD(clk,s_xorOut4,iNset,iNRst,s_regQ4);
	reg5:flipFlopD(clk,s_xorOut5,iNset,iNRst,s_regQ5);
	reg6:flipFlopD(clk,s_xorOut6,iNset,iNRst,s_regQ6);
	reg7:flipFlopD(clk,s_xorOut7,iNset,iNRst,s_regQ7);
	
	s_regParIn(0) <= s_regQ0;
	s_regParIn(1) <= s_regQ1;
	s_regParIn(2) <= s_regQ2;
	s_regParIn(3) <= s_regQ3;
	s_regParIn(4) <= s_regQ4;
	s_regParIn(5) <= s_regQ5;
	s_regParIn(6) <= s_regQ6;
	s_regParIn(7) <= s_regQ7;
	
	reg_par: ParReg_8bit(iNset, iNRst, s_regParIn, s_regParOut);

end structure;