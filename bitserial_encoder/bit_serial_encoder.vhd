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

entity bit_serial_encoder IS
  PORT (nGRst: IN STD_LOGIC; 
		  clk:   IN STD_LOGIC;
		  mIn:   IN STD_LOGIC;
		  x:	  OUT STD_LOGIC_VECTOR(7 downto 0));
end bit_serial_encoder;

library ieee;
use ieee.std_logic_1164.all;
USE IEEE.NUMERIC_STD.all;

library control;
use control.all;

library storeDev;
use storeDev.all;

library arithmetic;
use arithmetic.all;


 
architecture structure of bit_serial_encoder is
	signal s_state: STD_LOGIC_VECTOR(2 downto 0);
	signal s_romIn: STD_LOGIC_VECTOR(1 downto 0);
	signal iNSetO, iNRst,s_Q,s_clk,s_clkO: STD_LOGIC;
	signal s_mIn:STD_LOGIC;
	 
	--Saida dos Registos
	signal s_ff : STD_LOGIC;

	--Saida do RegPar
	signal s_regParIn : STD_LOGIC_VECTOR(7 downto 0);
	signal s_regParOut : STD_LOGIC_VECTOR(7 downto 0);

	--Sinal Controlo dos ANDs
	signal s_k: STD_LOGIC_VECTOR(7 downto 0);
	signal s_andOut0,s_andOut1,s_andOut2,s_andOut3,s_andOut4,s_andOut5,s_andOut6,s_andOut7: STD_LOGIC;

	signal s_regQ0,s_regQ1,s_regQ2,s_regQ3,s_regQ4,s_regQ5,s_regQ6,s_regQ7 : STD_LOGIC := '0';
	--Saida dos XORs
	signal s_xorOut0 : STD_LOGIC;
	signal s_xorOut1 : STD_LOGIC;
	signal s_xorOut2 : STD_LOGIC;
	signal s_xorOut3 : STD_LOGIC;
	signal s_xorOut4 : STD_LOGIC;
	signal s_xorOut5 : STD_LOGIC;
	signal s_xorOut6 : STD_LOGIC;
	signal s_xorOut7 : STD_LOGIC;
	
	--Saída
	signal s_x : STD_LOGIC_VECTOR(7 downto 0);
	
	component flipFlopDPET
	 PORT(clk, D:     IN STD_LOGIC;
			nSet, nRst: IN STD_LOGIC;
			Q, nQ:      OUT STD_LOGIC);
	end component;

	component gateAnd2
	PORT (x1, x2:  IN STD_LOGIC;
			y:      OUT STD_LOGIC);
	end component;	

	component gateXor2
	PORT (x1, x2: IN STD_LOGIC;
			y:      OUT STD_LOGIC);
	end component;	

	component binCounter_3bit
	PORT (nRst: IN STD_LOGIC;
			clk:  IN STD_LOGIC;
			c:    OUT STD_LOGIC_VECTOR (2 DOWNTO 0));
	end component;

	component ParReg_8bit
		 PORT (nSet: IN STD_LOGIC;
				 nRst: IN STD_LOGIC;
				 clk:  IN STD_LOGIC;
				 D:    IN STD_LOGIC_VECTOR (7 DOWNTO 0);
				 Q:    OUT STD_LOGIC_VECTOR (7 DOWNTO 0));
	end component;
	
	
	component control
		PORT (nGRst: IN STD_LOGIC;
			   clk:   IN STD_LOGIC;
			   add:   IN STD_LOGIC_VECTOR (2 DOWNTO 0);
			   nRst:  OUT STD_LOGIC;
			   nSetO: OUT STD_LOGIC;
			   f:		 OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
			   clkO:  OUT STD_LOGIC);
	end component;
	
	component concatenator8to1
		PORT (x0,x1,x2,x3,x4,x5,x6,x7: IN STD_LOGIC;
				y:      OUT STD_LOGIC_VECTOR(7 downto 0));
	end component;

	begin
		--m
		ff:flipFlopDPET PORT MAP (clk, s_mIn,'1',iNRst,s_ff);
		
		--XOR of m and k
		and0: gateAnd2 PORT MAP (s_ff,s_k(0), s_andOut0);
		and1: gateAnd2 PORT MAP (s_ff,s_k(1), s_andOut1);
		and2: gateAnd2 PORT MAP (s_ff,s_k(2), s_andOut2);
		and3: gateAnd2 PORT MAP (s_ff,s_k(3), s_andOut3);
		and4: gateAnd2 PORT MAP (s_ff,s_k(4), s_andOut4);
		and5: gateAnd2 PORT MAP (s_ff,s_k(5), s_andOut5);
		and6: gateAnd2 PORT MAP (s_ff,s_k(6), s_andOut6);
		and7: gateAnd2 PORT MAP (s_ff,s_k(7), s_andOut7);

		--XOR
		xor0: gateXor2 PORT MAP (s_andOut0,s_regQ0,s_xorOut0);
		xor1: gateXor2 PORT MAP (s_andOut1,s_regQ1,s_xorOut1);
		xor2: gateXor2 PORT MAP (s_andOut2,s_regQ2,s_xorOut2);
		xor3: gateXor2 PORT MAP (s_andOut3,s_regQ3,s_xorOut3);
		xor4: gateXor2 PORT MAP (s_andOut4,s_regQ4,s_xorOut4);
		xor5: gateXor2 PORT MAP (s_andOut5,s_regQ5,s_xorOut5);
		xor6: gateXor2 PORT MAP (s_andOut6,s_regQ6,s_xorOut6);
		xor7: gateXor2 PORT MAP (s_andOut7,s_regQ7,s_xorOut7);

		--Feedback Register
		reg0:flipFlopDPET PORT MAP (clk,s_xorOut0,'1',iNRst,s_regQ0);
		reg1:flipFlopDPET PORT MAP (clk,s_xorOut1,'1',iNRst,s_regQ1);
		reg2:flipFlopDPET PORT MAP (clk,s_xorOut2,'1',iNRst,s_regQ2);
		reg3:flipFlopDPET PORT MAP (clk,s_xorOut3,'1',iNRst,s_regQ3);
		reg4:flipFlopDPET PORT MAP (clk,s_xorOut4,'1',iNRst,s_regQ4);
		reg5:flipFlopDPET PORT MAP (clk,s_xorOut5,'1',iNRst,s_regQ5);
		reg6:flipFlopDPET PORT MAP (clk,s_xorOut6,'1',iNRst,s_regQ6);
		reg7:flipFlopDPET PORT MAP (clk,s_xorOut7,'1',iNRst,s_regQ7);
		
		--Counter to change states
		bincount: binCounter_3bit PORT MAP (iNRst, clk, s_state);
		
		--Control Unit with ROM with states
		control_unit: control PORT MAP (nGRst, clk, s_state, iNRst, iNSetO, s_k, s_clkO);
		
		--Output
		concatenator: concatenator8to1 PORT MAP (s_regQ0, s_regQ1, s_regQ2, s_regQ3, s_regQ4, s_regQ5, s_regQ6, s_regQ7, s_regParIn);	
		reg_par: ParReg_8bit PORT MAP (iNSetO,'1', s_clkO, s_regParIn, s_x);
		x <= s_x;
end structure;