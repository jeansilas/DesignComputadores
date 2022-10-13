library ieee;
use ieee.std_logic_1164.all;

entity LogicKeySwitch is 
  port ( 
			CLK: in std_logic;
			RD: in std_logic;
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
					  
										entrada  => "0000000" & Fpga_reset,
										habilita => (RD and Data_address(5) and decoderEndereco(4) and decoderBloco(5)),
										saida    => Data_in
					  
					  );
					  
  Key3_item: entity work.buffer_3_state_8portas
  
					  port map  (
					  
										entrada  => "0000000" & Key(3),
										habilita => (RD and Data_address(5) and decoderEndereco(3) and decoderBloco(5)),
										saida    => Data_in
					  
					  );
	
	Key2_item: entity work.buffer_3_state_8portas
  
					  port map  (
					  
										entrada  => "0000000" & Key(2),
										habilita => (RD and Data_address(5) and decoderEndereco(2) and decoderBloco(5)),
										saida    => Data_in
					  
					  );
	
	Key1_item: entity work.buffer_3_state_8portas
  
					  port map  (
					  
										entrada  => "0000000" & Key(1),
										habilita => (RD and Data_address(5) and decoderEndereco(1) and decoderBloco(5)),
										saida    => Data_in
					  
					  );
	
	Key0_item: entity work.buffer_3_state_8portas
  
					  port map  (
					  
										entrada  => "0000000" & Key(0),
										habilita => (RD and Data_address(5) and decoderEndereco(3) and decoderBloco(5)),
										saida    => Data_in
					  
					  );
	
	
	Sw9_item: entity work.buffer_3_state_8portas
  
					  port map  (
					  
										entrada  => "0000000" & Sw9,
										habilita => (RD and not(Data_address(5)) and decoderEndereco(2) and decoderBloco(5)),
										saida    => Data_in
					  
					  );
	
	Sw8_item: entity work.buffer_3_state_8portas
  
					  port map  (
					  
										entrada  => "0000000" & Sw8,
										habilita => (RD and not(Data_address(5)) and decoderEndereco(1) and decoderBloco(5)),
										saida    => Data_in
					  
					  );
	Sw_item: entity work.buffer_3_state_8portas
  
					  port map  (
					  
										entrada  => Sw,
										habilita => (RD and not(Data_address(5)) and decoderEndereco(0) and decoderBloco(5)),
										saida    => Data_in
					  
					  );
  
 
  
  
end architecture;