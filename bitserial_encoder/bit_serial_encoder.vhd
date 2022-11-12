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

library simpleLogic;
use simpleLogic.all; 

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
	k<=rom_table(to_integer(unsigned(addr)));
end behavioral;

 
architecture structure of bit_serial_encoder is
	signal s_state: STD_LOGIC_VECTOR(2 downto 0);
	signal s_romIn: STD_LOGIC_VECTOR(1 downto 0);
	signal iNSet, iNRst,s_Q,s_clk,s_clk0: STD_LOGIC;
	signal s_mIn:STD_LOGIC;
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
				 clk: IN STD_LOGIC;
				 D: IN STD_LOGIC_VECTOR (7 DOWNTO 0);
				 Q: OUT STD_LOGIC_VECTOR (7 DOWNTO 0));
	end component;

	component rom
		PORT (addr: IN STD_LOGIC_VECTOR(1 downto 0);
				k: OUT STD_LOGIC_VECTOR(7 downto 0));
	end component;	

	begin
		k_rom: rom PORT MAP (s_romIn, s_ctrlb); 

		s_k0<=s_ctrlb(0);
		s_k1<=s_ctrlb(1);
		s_k2<=s_ctrlb(2);
		s_k3<=s_ctrlb(3);
		s_k4<=s_ctrlb(4);
		s_k5<=s_ctrlb(5);
		s_k6<=s_ctrlb(6);
		s_k7<=s_ctrlb(7);
		
		ff:flipFlopDPET PORT MAP (clk, s_mIn,iNSet,iNRst,s_ff);
		
		and0: gateAnd2 PORT MAP (s_ff,s_k0, s_andOut0);
		and1: gateAnd2 PORT MAP (s_ff,s_k1, s_andOut1);
		and2: gateAnd2 PORT MAP (s_ff,s_k2, s_andOut2);
		and3: gateAnd2 PORT MAP (s_ff,s_k3, s_andOut3);
		and4: gateAnd2 PORT MAP (s_ff,s_k4, s_andOut4);
		and5: gateAnd2 PORT MAP (s_ff,s_k5, s_andOut5);
		and6: gateAnd2 PORT MAP (s_ff,s_k6, s_andOut6);
		and7: gateAnd2 PORT MAP (s_ff,s_k7, s_andOut7);
		
		s_regParIn(0) <= s_regQ0;
		s_regParIn(1) <= s_regQ1;
		s_regParIn(2) <= s_regQ2;
		s_regParIn(3) <= s_regQ3;
		s_regParIn(4) <= s_regQ4;
		s_regParIn(5) <= s_regQ5;
		s_regParIn(6) <= s_regQ6;
		s_regParIn(7) <= s_regQ7;
		
		xor0: gateXor2 PORT MAP (s_andOut0,s_regQ0,s_xorOut0);
		xor1: gateXor2 PORT MAP (s_andOut1,s_regQ1,s_xorOut1);
		xor2: gateXor2 PORT MAP (s_andOut2,s_regQ2,s_xorOut2);
		xor3: gateXor2 PORT MAP (s_andOut3,s_regQ3,s_xorOut3);
		xor4: gateXor2 PORT MAP (s_andOut4,s_regQ4,s_xorOut4);
		xor5: gateXor2 PORT MAP (s_andOut5,s_regQ5,s_xorOut5);
		xor6: gateXor2 PORT MAP (s_andOut6,s_regQ6,s_xorOut6);
		xor7: gateXor2 PORT MAP (s_andOut7,s_regQ7,s_xorOut7);
		
		
		reg0:flipFlopDPET PORT MAP (s_clk,s_xorOut0,iNset,iNRst,s_regQ0);
		reg1:flipFlopDPET PORT MAP (s_clk,s_xorOut1,iNset,iNRst,s_regQ1);
		reg2:flipFlopDPET PORT MAP (s_clk,s_xorOut2,iNset,iNRst,s_regQ2);
		reg3:flipFlopDPET PORT MAP (s_clk,s_xorOut3,iNset,iNRst,s_regQ3);
		reg4:flipFlopDPET PORT MAP (s_clk,s_xorOut4,iNset,iNRst,s_regQ4);
		reg5:flipFlopDPET PORT MAP (s_clk,s_xorOut5,iNset,iNRst,s_regQ5);
		reg6:flipFlopDPET PORT MAP (s_clk,s_xorOut6,iNset,iNRst,s_regQ6);
		reg7:flipFlopDPET PORT MAP (s_clk,s_xorOut7,iNset,iNRst,s_regQ7);
		
		bincount: binCounter_3bit PORT MAP (iNRst, s_clk,s_state);

		state_machine: process(s_state, s_regQ0, s_regQ1, s_regQ2, s_regQ3, s_regQ4, s_regQ5, s_regQ6, s_regQ7, iNSet, iNRst, s_clk0, s_romIn)
		begin
			case s_state is
				when "000" =>
					iNSet   <= '0';
					iNRst   <= '1';
					s_clk0 <= '0';
				when "001" => 
					s_clk0 <= '0';
					s_romIn <= "00";
					iNSet   <= '1';
					iNRst   <= '0';
				when "010" => 
					s_clk0 <= '0';
					s_romIn <= "01";
					iNSet   <= '1';
					iNRst   <= '0';
				when "011" => 
					s_clk0 <= '0';
					s_romIn <= "10";
					iNSet   <= '1';
					iNRst   <= '0';
				when "100" => 
					s_clk0 <= '0';
					s_romIn <= "11";
					iNSet   <= '1';
					iNRst   <= '0';
				when others =>
					s_clk0 <= '1';
					iNSet   <= '1';
					iNRst   <= '0';
			end case;
		end process state_machine;
			
		reg_par: ParReg_8bit PORT MAP (iNset, s_clk0,s_regParIn, x);
end structure;