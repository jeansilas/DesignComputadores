library ieee;
use ieee.std_logic_1164.all;

entity LogicSevenSeg is 
  port ( 
			CLK: in std_logic;
			WR: in std_logic;
			Data_out: in std_logic_vector(7 downto 0);
			Data_address: in std_logic_vector(8 downto 0);
			
			Hex0: out std_logic_vector(6 downto 0);
		   Hex1: out std_logic_vector(6 downto 0);
		   Hex2: out std_logic_vector(6 downto 0);
		   Hex3: out std_logic_vector(6 downto 0);
		   Hex4: out std_logic_vector(6 downto 0);
		   Hex5: out std_logic_vector(6 downto 0)
		  
			
			
  );
  end entity;
  
  architecture logic of LogicSevenSeg is
  
  signal decoderBloco:  std_logic_vector(7 downto 0);
  signal decoderEndereco:  std_logic_vector(7 downto 0);
  
  signal Hex0_signal: std_logic_vector(3 downto 0);
  signal Hex1_signal: std_logic_vector(3 downto 0);
  signal Hex2_signal: std_logic_vector(3 downto 0);
  signal Hex3_signal: std_logic_vector(3 downto 0);
  signal Hex4_signal: std_logic_vector(3 downto 0);
  signal Hex5_signal: std_logic_vector(3 downto 0);
  
  
  
  
  begin
  
  
  DecoderBloco_item: entity work.decoder3x8

						port map (   entrada => Data_address(8 downto 6),
										 saida => decoderBloco 
  );
  
  DecoderEndereco_item: entity work.decoder3x8

						port map ( 	 entrada => Data_address(2 downto 0),
										 saida => decoderEndereco
	);
  
  
  HEX0_item: entity work.registradorGenerico generic map (larguraDados => 4)
  
		port map (
						DIN => Data_out(3 downto 0),
						DOUT => Hex0_signal,
						ENABLE => (WR and decoderBloco(4) and decoderEndereco(0) and Data_address(5)),
						CLK => CLK,
						RST => '0'
				
				
				);
				
	HEX0Conversor_item: entity work.conversorHex7seg
	
		port map (
					  dadoHex => Hex0_signal,
                 apaga =>  '0',
                 negativo => '0',
                 overFlow =>  '0',
                 saida7seg =>  Hex0
					
		
		);
	
	HEX1_item: entity work.registradorGenerico generic map (larguraDados => 4)
  
		port map (
						DIN => Data_out(3 downto 0),
						DOUT => Hex1_signal,
						ENABLE => (WR and decoderBloco(4) and decoderEndereco(1) and Data_address(5)),
						CLK => CLK,
						RST => '0'
						
				
				
				);
	
	HEX1Conversor_item: entity work.conversorHex7seg
	
		port map (
					  dadoHex => Hex1_signal,
                 apaga =>  '0',
                 negativo => '0',
                 overFlow =>  '0',
                 saida7seg =>  Hex1
					
		
		);
	
	HEX2_item: entity work.registradorGenerico generic map (larguraDados => 4)
  
		port map (
						DIN => Data_out(3 downto 0),
						DOUT => Hex2_signal,
						ENABLE => (WR and decoderBloco(4) and decoderEndereco(2) and Data_address(5)),
						CLK => CLK,
						RST => '0'
				
				
				);
	HEX2Conversor_item: entity work.conversorHex7seg
	
		port map (
					  dadoHex => Hex2_signal,
                 apaga =>  '0',
                 negativo => '0',
                 overFlow =>  '0',
                 saida7seg =>  Hex2
					
		
		);
	
	HEX3_item: entity work.registradorGenerico generic map (larguraDados => 4)
  
		port map (
						DIN => Data_out(3 downto 0),
						DOUT => Hex3_signal,
						ENABLE => (WR and decoderBloco(4) and decoderEndereco(3) and Data_address(5)),
						CLK => CLK,
						RST => '0'
				
				
				);
	HEX3Conversor_item: entity work.conversorHex7seg
	
		port map (
					  dadoHex => Hex3_signal,
                 apaga =>  '0',
                 negativo => '0',
                 overFlow =>  '0',
                 saida7seg =>  Hex3
					
		
		);
	
	HEX4_item: entity work.registradorGenerico generic map (larguraDados => 4)
  
		port map (
						DIN => Data_out(3 downto 0),
						DOUT => Hex4_signal,
						ENABLE => (WR and decoderBloco(4) and decoderEndereco(4) and Data_address(5)),
						CLK => CLK,
						RST => '0'
				
				
				);
	HEX4Conversor_item: entity work.conversorHex7seg
	
		port map (
					  dadoHex => Hex4_signal,
                 apaga =>  '0',
                 negativo => '0',
                 overFlow =>  '0',
                 saida7seg =>  Hex4
					
		
		);
	
	HEX5_item: entity work.registradorGenerico generic map (larguraDados => 4)
  
		port map (
						DIN => Data_out(3 downto 0),
						DOUT => Hex5_signal,
						ENABLE => (WR and decoderBloco(4) and decoderEndereco(5) and Data_address(5)),
						CLK => CLK,
						RST => '0'
				
				
				);
	HEX5Conversor_item: entity work.conversorHex7seg
	
		port map (
					  dadoHex => Hex5_signal,
                 apaga =>  '0',
                 negativo => '0',
                 overFlow =>  '0',
                 saida7seg =>  Hex5
					
		
		);
	
  
 
  
  
end architecture;