library ieee;
use ieee.std_logic_1164.all;

entity LogicLed is 
  port ( 
			CLK: in std_logic;
			
			WR: in std_logic;
			Data_out: in std_logic_vector(7 downto 0);
			decoderBloco: in std_logic_vector(7 downto 0);
			decoderEndereco: in std_logic_vector(7 downto 0);
			Led_8: out std_logic;
			Led_9: out std_logic;
			LedR: out std_logic_vector(7 downto 0)
			
			
  );
  end entity;
  
  architecture logic of LogicLed is
  
  
  
  begin
  
  LED_9_item: work.flipflop
  
		port map (
						DIN => Data_out(0),
						DOUT => Led_9,
						ENABLE => (WR and decoderBloco(4) and decoderEndereco(2)),
						CLK => CLK,
						RST => '0'
				
				
				);
	
	LED_8_item: work.flipflop
  
		port map (
						DIN => Data_out(0),
						DOUT => Led_8,
						ENABLE => (WR and decoderBloco(4) and decoderEndereco(1)),
						CLK => CLK,
						RST => '0'
				
				
				);
	
	LEDR_item: work.registradorGenerico
  
		port map (
						DIN => Data_out,
						DOUT => LedR,
						ENABLE => (WR and decoderBloco(4) and decoderEndereco(0)),
						CLK => CLK,
						RST => '0'
				
				
				);
  
  
 
  
  
end architecture;