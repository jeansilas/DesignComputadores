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
  signal Key0_signal: std_logic;
  signal Key0_edge: std_logic;
  signal Key1_signal: std_logic;
  signal Key1_edge: std_logic;
  
  
  
  begin
  
  
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
	
	Key2_item: entity work.buffer_3_state_8portas
  
					  port map  (
					  
										entrada  => "0000000" & not(Key(2)),
										habilita => (RD and Data_address(5) and decoderEndereco(2) and decoderBloco(5)),
										saida    => Data_in
					  
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
									 RST => (
									 WR 				 and
									 not(Data_Address(0)) and
									 Data_Address(1) and
									 Data_Address(2) and
									 Data_Address(3) and
									 Data_Address(4) and
									 Data_Address(5) and
									 Data_Address(6) and
									 Data_Address(7) and
									 Data_Address(8)
									 )
					
					
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
									entrada => not(Key(0)),
									saida => Key0_edge
									
					
					
					);
					
	
	
	
	Debouncer_Key0_item : entity work.flipflop
	
					port map (
					
									 DIN => '1',
									 DOUT => Key0_signal,
									 ENABLE => '1',
									 CLK => Key0_edge, 
									 RST => (
									 WR 				 and
									 Data_Address(0) and
									 Data_Address(1) and
									 Data_Address(2) and
									 Data_Address(3) and
									 Data_Address(4) and
									 Data_Address(5) and
									 Data_Address(6) and
									 Data_Address(7) and
									 Data_Address(8)
									 )
					
					
					);
	
	Key0_item: entity work.buffer_3_state_8portas
  
					  port map  (
					  
										entrada  => "0000000" & Key0_signal,
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