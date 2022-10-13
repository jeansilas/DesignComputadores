library ieee;
use ieee.std_logic_1164.all;

entity TopLevel is
  -- Total de bits das entradas e saidas
  generic ( larguraDados : natural := 8;
        larguraEnderecos : natural := 8;
        simulacao : boolean := TRUE -- para gravar na placa, altere de TRUE para FALSE
  );
  port   (
    CLOCK_50 : in std_logic;
	 KEY : in std_logic_vector(3 downto 0);
	 PC: out std_logic_vector(8 downto 0);
	 control: out std_logic_vector(12 downto 0);
	 LedR: out std_logic_vector(9 downto 0);
	 
	 -------------Simulation purpose
	 regA: out std_logic_vector(7 downto 0);
	 RAM_simu: out std_logic_vector(8 downto 0)
	 
  );
end entity;

architecture comportamento of TopLevel is

	signal CLK: std_logic;
	signal decoderBloco : std_logic_vector(7 downto 0);
	signal decoderEndereco: std_logic_vector(7 downto 0);
	signal WR: std_logic;
	signal RD:std_logic;
   
	signal Data_in_MEM: std_logic_vector(7 downto 0);
	signal Data_out_MEM: std_logic_vector(7 downto 0);
	signal instruction: std_logic_vector(12 downto 0);
	signal Data_address: std_logic_vector(8 downto 0);
	signal Rom_address:std_logic_vector(8 downto 0);
	signal LedR_signal: std_logic_vector(9 downto 0);
	signal regA_signal: std_logic_vector(7 downto 0);
	
	
	

begin

gravar:  if simulacao generate
	CLK <= KEY(0);
	else generate
	detectorSub0: work.edgeDetector(bordaSubida)
			  port map (
						clk => CLOCK_50,
						entrada => (not KEY(0)),
						saida => CLK);
	end generate;

CPU: entity work.Processador
	
					port map(	 CLK => CLK,
									 Data_out=> Data_in_MEM,
									 Data_in => Data_out_MEM,
									 instruction => instruction,
									 Rom_address => Rom_address,
									 Data_address => Data_address,
									 WR => WR,
									 RD => RD,
									 regA => regA_signal
										
								);
								
ROM: entity work.memoriaROM

						port map (
						
										Endereco => Rom_address,
										Dado => instruction
						);

RAM: entity work.memoriaRAM generic map (addrWidth => 7)
						
					  port map (
										 addr => Data_address(6 downto 0), -- Mdmória de 64kb 2^6 = 64.
										 we => WR, 
										 re => RD,
										 habilita => decoderBloco(0),
										 clk => CLK,
										 dado_in => Data_in_MEM,
										 dado_out => Data_out_MEM
					  
					  );
									

DecoderBloco_item: entity work.decoder3x8

						port map (   entrada => Data_address(8 downto 6),
										 saida => decoderBloco 
  );
  
DecoderEndereco_item: entity work.decoder3x8

						port map ( 	 entrada => Data_address(2 downto 0),
										 saida => decoderEndereco
	);
	
LogicLed_item: entity work.LogicLed

					port map (
					
								CLK=> CLK,
								WR=> WR,
								Data_out=> Data_in_MEM,
								decoderBloco => decoderBloco,
								decoderEndereco => decoderEndereco,
								Led_8 => LedR_signal(8),
								Led_9 => LedR_signal(9),
								LedR => LedR_signal(7 downto 0)
					);
	
PC <= Rom_address;
LedR <= LedR_signal;
control <= instruction;
regA <= regA_signal;
Ram_simu <= Data_address;

	 
end architecture;
