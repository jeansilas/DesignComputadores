library ieee;
use ieee.std_logic_1164.all;

entity LogicKeySwitch is 
  port ( 
			CLOCK_50: in std_logic;
			CLK: in std_logic;
			RD: in std_logic;
			WR: in std_logic;
			Sw: in std_logic_vector(7 downto 0);
			Sw8: in std_logic;
			Sw9: in std_logic;
			Key: in std_logic_vector(3 downto 0);
			Fpga_reset: in std_logic;
			Data_address: in std_logic_vector(8 downto 0);
			Data_in: out std_logic_vector(7 downto 0)

			
  );
  end entity;
  
  architecture logic of LogicKeySwitch is
  
  signal decoderBloco:  std_logic_vector(7 downto 0);
  signal decoderEndereco:  std_logic_vector(7 downto 0);
  signal tempo_signal: std_logic;
  signal tempo_edge: std_logic;
  signal Key1_signal: std_logic;
  signal Key1_edge: std_logic;
  signal Key2_signal: std_logic;
  signal Key2_edge: std_logic;
  signal Key3_signal: std_logic;
  signal Key3_edge: std_logic;
  signal tempo: std_logic;
  signal temporeal: std_logic;
  signal tempoacelerado: std_logic;
  
  signal reset_key0: std_logic;
  signal reset_key1: std_logic;
  signal reset_key2: std_logic;
  signal reset_key3: std_logic;
  
  
  begin
  
  reset_key0 <=			    WR 				  and
									 Data_Address(0) and
									 Data_Address(1) and
									 Data_Address(2) and
									 Data_Address(3) and
									 Data_Address(4) and
									 Data_Address(5) and
									 Data_Address(6) and
									 Data_Address(7) and
									 Data_Address(8);
  reset_key1 <= 
									 WR 				  and
									 not(Data_Address(0)) and
									 Data_Address(1) and
									 Data_Address(2) and
									 Data_Address(3) and
									 Data_Address(4) and
									 Data_Address(5) and
									 Data_Address(6) and
									 Data_Address(7) and
									 Data_Address(8);
  
  
  reset_key2 <= 				 WR 				 and
									 Data_Address(0) and
									 not(Data_Address(1)) and
									 Data_Address(2) and
									 Data_Address(3) and
									 Data_Address(4) and
									 Data_Address(5) and
									 Data_Address(6) and
									 Data_Address(7) and
									 Data_Address(8);
									 
  reset_key3 <= 				 WR 				 and
									 not(Data_Address(0)) and
									 not(Data_Address(1)) and
									 Data_Address(2) and
									 Data_Address(3) and
									 Data_Address(4) and
									 Data_Address(5) and
									 Data_Address(6) and
									 Data_Address(7) and
									 Data_Address(8);
									 
  
  
  
 interfaceBaseTempo_normal : entity work.divisorGenerico generic map (divisor => 25000000) 
              port map (clk => CLOCK_50,
              saida_clk => temporeal);
				  
				  
 interfaceBaseTempo_acelerado : entity work.divisorGenerico generic map (divisor => 12500) 
              port map (clk => CLOCK_50,
              saida_clk => tempoacelerado);
				  
 MUX_tempo: entity work.muxGenerico2x1 generic map (larguraDados => 1)
 
				 port map (
				 
								entradaA_MUX(0) => temporeal,
								entradaB_MUX(0) => tempoacelerado,
								seletor_MUX => not key(3),
								saida_MUX(0) => tempo
				 
				 );
  
  DecoderBloco_item: entity work.decoder3x8

						port map (   entrada => Data_address(8 downto 6),
										 saida => decoderBloco 
  );
  
  DecoderEndereco_item: entity work.decoder3x8

						port map ( 	 entrada => Data_address(2 downto 0),
										 saida => decoderEndereco
	);
  
  
  Fpga_Reset_item: entity work.buffer_3_state_8portas
  
					  port map  (
					  
										entrada  => "0000000" & not(Fpga_reset),
										habilita => (RD and Data_address(5) and decoderEndereco(4) and decoderBloco(5)),
										saida    => Data_in
					  
					  );
					  
  Key3_item: entity work.buffer_3_state_8portas
  
					  port map  (
					  
										entrada  => "0000000" & not(Key(3)),
										habilita => (RD and Data_address(5) and decoderEndereco(3) and decoderBloco(5)),
										saida    => Data_in
					  
					  );
					  
					  
  EdgeDetector3_item: entity work.edgeDetector(bordaSubida)
	
					port map (
									CLK => CLOCK_50,
									entrada => not(Key(3)),
									saida => Key3_edge
									
					
					
					);
					
	
	
	
	Debouncer_Key3_item : entity work.flipflop
	
					port map (
					
									 DIN => '1',
									 DOUT => Key3_signal,
									 ENABLE => '1',
									 CLK => Key3_edge, 
									 RST => reset_key3
					
					
					);
	
	Key2_item: entity work.buffer_3_state_8portas
  
					  port map  (
					  
										entrada  => "0000000" & Key2_signal,
										habilita => (RD and Data_address(5) and decoderEndereco(2) and decoderBloco(5)),
										saida    => Data_in
					  
					  );
					  
					  
  	EdgeDetector2_item: entity work.edgeDetector(bordaSubida)
	
					port map (
									CLK => CLOCK_50,
									entrada => not(Key(2)),
									saida => Key2_edge
									
					
					
					);
					
	
	
	
	Debouncer_Key2_item : entity work.flipflop
	
					port map (
					
									 DIN => '1',
									 DOUT => Key2_signal,
									 ENABLE => '1',
									 CLK => Key2_edge, 
									 RST => reset_key2
					
					
					);
	
  
					  
	EdgeDetector1_item: entity work.edgeDetector(bordaSubida)
	
					port map (
									CLK => CLOCK_50,
									entrada => not(Key(1)),
									saida => Key1_edge
									
					
					
					);
					
	
	
	
	Debouncer_Key1_item : entity work.flipflop
	
					port map (
					
									 DIN => '1',
									 DOUT => Key1_signal,
									 ENABLE => '1',
									 CLK => Key1_edge, 
									 RST => reset_key1
									 );
					
					
	
	Key1_item: entity work.buffer_3_state_8portas
  
					  port map  (
					  
										entrada  => "0000000" & Key1_signal,
										habilita => (RD and Data_address(5) and decoderEndereco(1) and decoderBloco(5)),
										saida    => Data_in
					  
					  );
	EdgeDetector0_item: entity work.edgeDetector(bordaSubida)
	
					port map (
									CLK => CLOCK_50,
									entrada => tempo,
									saida => tempo_edge
									
					
					
					);
					
	
	
	
	Debouncer_Key0_item : entity work.flipflop
	
					port map (
					
									 DIN => '1',
									 DOUT => tempo_signal,
									 ENABLE => '1',
									 CLK => tempo_edge, 
									 RST => reset_key0
									 );
					
					
					
	
	Key0_item: entity work.buffer_3_state_8portas
  
					  port map  (
					  
										entrada  => "0000000" & tempo_signal,
										habilita => RD and Data_address(5) and decoderEndereco(0) and decoderBloco(5),
										saida    => Data_in
					  
					  );
	
	
	Sw9_item: entity work.buffer_3_state_8portas
  
					  port map  (
					  
										entrada  => "0000000" & Sw9,
										habilita => RD and (not Data_address(5)) and decoderEndereco(2) and decoderBloco(5),
										saida    => Data_in
					  
					  );
	
	Sw8_item: entity work.buffer_3_state_8portas
  
					  port map  (
					  
										entrada  => "0000000" & Sw8,
										habilita => RD and (not Data_address(5)) and decoderEndereco(1) and decoderBloco(5),
										saida    => Data_in
					  
					  );
	Sw_item: entity work.buffer_3_state_8portas
  
					  port map  (
					  
										entrada  => Sw,
										habilita => RD and (not Data_address(5)) and decoderEndereco(0) and decoderBloco(5),
										saida    => Data_in
					  
					  );
  
 
  
  
end architecture;