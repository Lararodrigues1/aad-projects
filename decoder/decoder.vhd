LIBRARY ieee;
USE ieee.std_logic_1164.all;

LIBRARY simpleLogic;
USE simpleLogic.all;

entity mnCalc is
	port(c0,c1,c2,c3: in std_logic;
		   mOut		 : out std_logic);
end mnCalc;

architecture behavioral of mnCalc is
--signal s_c0,s_c1, s_c2, s_c3 : std_logic;
signal s_andC3C2,s_xorC1C0,s_andC1C0,s_xorC3C2, s_leftand, s_rightand, s_finalxor: std_logic;

	component gateAnd2
		PORT (x1, x2:  IN STD_LOGIC;
				y:      OUT STD_LOGIC);
	end component;	

	component gateXor2
		PORT (x1, x2: IN STD_LOGIC;
				y:      OUT STD_LOGIC);
	end component;	
	
	component gateOr2
		PORT (x1, x2: IN STD_LOGIC;
				y:      OUT STD_LOGIC);
	end component;	
	
begin
	andC3C2  : gateAnd2 port map(c3,c2,s_andC3C2);
	xorC1C0  : gateOr2 port map(c1,c0,s_xorC1C0);
	andC1C0  : gateAnd2 port map(c1,c0,s_andC1C0);
	xorC3C2  : gateOr2 port map(c3,c2,s_xorC3C2);
	lefand   : gateAnd2 port map(s_andC3C2,s_xorC1C0,s_leftand);
	rightand : gateAnd2 port map(s_andC1C0,s_xorC3C2,s_rightand);
	finalxor : gateOr2 port map(s_leftand,s_rightand,s_finalxor);

	mOut <= s_finalxor;		
	
	
end behavioral;

LIBRARY ieee;
USE ieee.std_logic_1164.all;

LIBRARY simpleLogic;
USE simpleLogic.all;

LIBRARY part_encoder;
USE part_encoder.all;

entity decoder is
	PORT(y:		 in STD_LOGIC_VECTOR(7 downto 0);
		  m:		 out STD_LOGIC_VECTOR(3 downto 0);
		  valid : out STD_LOGIC);
end decoder;

architecture structure of decoder is
	--signals for m0
	signal s_m0, s_m0_1, s_m0_0, s_m0_1_xor_m0_0, s_m0_e : std_logic;
	
	signal s_c00,s_c01,s_c02,s_c03: std_logic;
	signal s_n_c00, s_n_c01, s_n_c02, s_n_c03 : std_logic;	
	
	--signals for m1
	signal s_m1, s_m1_1, s_m1_0, s_m1_1_xor_m1_0, s_m1_e : std_logic;
	
	signal s_c10,s_c11,s_c12,s_c13: std_logic;
	signal s_n_c10, s_n_c11, s_n_c12, s_n_c13 : std_logic;	
	
	
	--signals for m2
	signal s_m2, s_m2_1, s_m2_0, s_m2_1_xor_m2_0, s_m2_e : std_logic;
	
	signal s_c20,s_c21,s_c22,s_c23: std_logic;
	signal s_n_c20, s_n_c21, s_n_c22, s_n_c23 : std_logic;

	--signals for m3
	signal s_m3 : std_logic;
	
	--signals for valid
	signal s_m0e_xor_m1e, s_xor_valid, s_valid : std_logic;
	
	--signals for popcounter
	signal s_popc_xor0, s_popc_xor1, s_popc_xor2, s_popc_xor3, s_popc_xor4, s_popc_xor5, s_popc_xor6, s_popc_xor7 : std_logic;
	signal s_popc_in : std_logic_vector(7 downto 0);
	signal s_popc_out : std_logic_vector(3 downto 0);
	signal s_c2c3_xor_out  : std_logic;
	
	--signals for encoder
	signal s_encoder : std_logic_vector(7 downto 0);
	
	component mnCalc
		port(c0,c1,c2,c3: in std_logic;
				mOut      : out std_logic);
	end component;

	component gateAnd2
		PORT (x1, x2:  IN STD_LOGIC;
				y:      OUT STD_LOGIC);
	end component;
	
	component gateXor2
		PORT (x1, x2:  IN STD_LOGIC;
				y:      OUT STD_LOGIC);
	end component;
	
	component gateNot
		port (x:	in std_logic;
				y: out std_logic);
	end component;
	
	component gateOr2
		PORT (x1, x2: IN STD_LOGIC;
				y:      OUT STD_LOGIC);
	end component;
	
	component part_encoder
		PORT(m0,m1,m2: in STD_LOGIC;
			  s: out STD_LOGIC_VECTOR(7 downto 0));
	end component;
	
	component popCounter_8bits
		PORT(d: IN STD_LOGIC_VECTOR (7 DOWNTO 0);
           c: OUT STD_LOGIC_VECTOR (3 DOWNTO 0));
	end component;
	
	component concatenator8to1
	  PORT (x0,x1,x2,x3,x4,x5,x6,x7: IN STD_LOGIC;
			  y:      OUT STD_LOGIC_VECTOR(7 downto 0));
	end component;
	
	component concatenator4to1
	  PORT (x0,x1,x2,x3: IN STD_LOGIC;
			  y:      OUT STD_LOGIC_VECTOR(3 downto 0));
	end component;
	
	begin
		--calc m0(1)
		c00_calc : gateXor2 port map (y(0),y(1),s_c00); 
		c01_calc : gateXor2 port map (y(2),y(3),s_c01); 
		c02_calc : gateXor2 port map (y(4),y(5),s_c02); 
		c03_calc : gateXor2 port map (y(6),y(7),s_c03); 
		m0_1 : mnCalc port map(s_c00, s_c01,s_c02,s_c03,s_m0_1);
		
		--calc m0(0)
		c00_calc_not : gateNot port map (s_c00, s_n_c00);
		c01_calc_not : gateNot port map (s_c01, s_n_c01);
		c02_calc_not : gateNot port map (s_c02, s_n_c02);
		c03_calc_not : gateNot port map (s_c03, s_n_c03);
		m0_0 : mnCalc port map (s_n_c00, s_n_c01, s_n_c02, s_n_c03, s_m0_0);
		
		-- calc m0(e)
		m0_1_xor_m0_0 : gateOr2 port map (s_m0_1, s_m0_0, s_m0_1_xor_m0_0);
		m0_e : gateNot port map (s_m0_1_xor_m0_0, s_m0_e);
		
		
		--calc m1(1)
		c10_calc : gateXor2 port map (y(0),y(2),s_c10); 
		c11_calc : gateXor2 port map (y(1),y(3),s_c11); 
		c12_calc : gateXor2 port map (y(4),y(6),s_c12); 
		c13_calc : gateXor2 port map (y(5),y(7),s_c13); 
		m1_1 : mnCalc port map (s_c10, s_c11,s_c12,s_c13,s_m1_1);
			
		--calc m1(0)
		c10_calc_not : gateNot port map (s_c10, s_n_c10);
		c11_calc_not : gateNot port map (s_c11, s_n_c11);
		c12_calc_not : gateNot port map (s_c12, s_n_c12);
		c13_calc_not : gateNot port map (s_c13, s_n_c13);
		m1_0 : mnCalc port map (s_n_c10, s_n_c11, s_n_c12, s_n_c13, s_m1_0);
		
		-- calc m1(e)
		m1_1_xor_m1_0 : gateXor2 port map (s_m1_1, s_m1_0, s_m1_1_xor_m1_0);
		m1_e : gateNot port map (s_m1_1_xor_m1_0, s_m1_e);
		
		
		--calc m2(1)
		c20_calc : gateXor2 port map (y(0),y(4),s_c20); 
		c21_calc : gateXor2 port map (y(1),y(5),s_c21); 
		c22_calc : gateXor2 port map (y(2),y(6),s_c22); 
		c23_calc : gateXor2 port map (y(3),y(7),s_c23); 
		m2_1 : mnCalc port map(s_c20, s_c21,s_c22,s_c23,s_m2_1);
				
		--calc m2(0)
		c20_calc_not : gateNot port map (s_c20, s_n_c20);
		c21_calc_not : gateNot port map (s_c21, s_n_c21);
		c22_calc_not : gateNot port map (s_c22, s_n_c22);
		c23_calc_not : gateNot port map (s_c23, s_n_c23);
		m2_0 : mnCalc port map (s_n_c20, s_n_c21, s_n_c22, s_n_c23, s_m2_0);
		
		-- calc m2(e)
		m2_1_xor_m2_0 : gateXor2 port map (s_m2_1, s_m2_0, s_m2_1_xor_m2_0);
		m2_e : gateNot port map (s_m2_1_xor_m2_0, s_m2_e);
		
		
		--calc valid
		m0e_xor_m1e : gateXor2 port map (s_m0_e, s_m1_e, s_m0e_xor_m1e);
		xor_valid : gateXor2 port map (s_m0e_xor_m1e, s_m2_e, s_xor_valid);
		valid_out: gateNot port map (s_xor_valid, s_valid);
		
		valid <= s_valid;
		
		--m0, m1, m2
		m0 : gateAnd2 port map (s_m0_1, s_valid, s_m0);
		m1 : gateAnd2 port map (s_m1_1, s_valid, s_m1);
		m2 : gateAnd2 port map (s_m2_1, s_valid, s_m2);
		
		--m3
		
		--Partial encoder
		encoder : part_encoder port map (s_m0, s_m1, s_m2, s_encoder);
		
		--Pop Counter
		popCxor0: gateXor2 port map (s_encoder(0), y(0), s_popc_xor0);
		popCxor1: gateXor2 port map (s_encoder(1), y(1), s_popc_xor1);
		popCxor2: gateXor2 port map (s_encoder(2), y(2), s_popc_xor2);
		popCxor3: gateXor2 port map (s_encoder(3), y(3), s_popc_xor3);
		popCxor4: gateXor2 port map (s_encoder(4), y(4), s_popc_xor4);
		popCxor5: gateXor2 port map (s_encoder(5), y(5), s_popc_xor5);
		popCxor6: gateXor2 port map (s_encoder(6), y(6), s_popc_xor6);
		popCxor7: gateXor2 port map (s_encoder(7), y(7), s_popc_xor7);
		
		concatenator: concatenator8to1 port map (s_popc_xor0, s_popc_xor1, s_popc_xor2, s_popc_xor3, s_popc_xor4, s_popc_xor5, s_popc_xor6, s_popc_xor7, s_popc_in);
		
		popCounter : popCounter_8bits port map (s_popc_in, s_popc_out);
		
		c2c3_xor: gateXor2 port map (s_popc_out(2), s_popc_out(3), s_c2c3_xor_out);
		
		m3: gateAnd2 port map (s_c2c3_xor_out, s_valid, s_m3);
	
		m_concat: concatenator4to1 port map (s_m0, s_m1, s_m2, s_m3, m);
	
end structure;
