library ieee;
use ieee.std_logic_1164.all;

entity TopLevel is
  -- Total de bits das entradas e saidas
  generic ( larguraDados : natural := 8;
        larguraEnderecos : natural := 8;
        simulacao : boolean := FALSE -- para gravar na placa, altere de TRUE para FALSE
  );
  port   (
    CLOCK_50 : in std_logic;
	 KEY : in std_logic_vector(3 downto 0);
	 Sw: in std_logic_vector(9 downto 0);
	 Fpga_reset_N: in std_logic;
	 PC: out std_logic_vector(8 downto 0);
	 control: out std_logic_vector(12 downto 0);
	 LedR: out std_logic_vector(9 downto 0);
	 
	 Hex0: out std_logic_vector(6 downto 0);
	 Hex1: out std_logic_vector(6 downto 0);
	 Hex2: out std_logic_vector(6 downto 0);
	 Hex3: out std_logic_vector(6 downto 0);
	 Hex4: out std_logic_vector(6 downto 0);
	 Hex5: out std_logic_vector(6 downto 0);
	 
	 

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
	signal Leds_signal: std_logic_vector(9 downto 0);
	signal regA_signal: std_logic_vector(7 downto 0);
	
	
	

begin

--gravar:  if simulacao generate
--	CLK <= KEY(0);
--	else generate
----	detectorSub0: work.edgeDetector(bordaSubida)
----			  port map (
----						clk => CLOCK_50,
----						entrada => (not KEY(0)),
----						saida => CLK);
--CLK<=clock_50;
--	end generate;

CLK <= CLOCK_50;

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
						
 DecoderBloco_item: entity work.decoder3x8

						port map (   entrada => Data_address(8 downto 6),
										 saida => decoderBloco 
  );

RAM: entity work.memoriaRAM generic map (addrWidth => 6)
						
					  port map (
										 addr => Data_address(5 downto 0), -- Mdmória de 64kb 2^6 = 64.
										 we => WR, 
										 re => RD,
										 habilita => decoderBloco(0),
										 clk => CLK,
										 dado_in => Data_in_MEM,
										 dado_out => Data_out_MEM
					  
					  );
									


	
LogicLed_item: entity work.LogicLed

					port map (
					
								CLK=> CLK,
								WR=> WR,
								Data_out=> Data_in_MEM,
								Data_address => Data_address,
								Led_8 => Leds_signal(8),
								Led_9 => Leds_signal(9),
								LedR => Leds_signal(7 downto 0)
					);

LogicSevenSeg_item: entity work.LogicSevenSeg

						  port map (
								
								CLK=> CLK,
								WR=> WR,
								Data_out=> Data_in_MEM,
								Data_address => Data_address,
								Hex0 => Hex0,
								Hex1 => Hex1,
								Hex2 => Hex2,
								Hex3 => Hex3,
								Hex4 => Hex4,
								Hex5 => Hex5
						  
						  );

LogicKeySwitch_item: entity work.LogicKeySwitch

						port map (
							
							CLOCK_50 => CLOCK_50,
							CLK => CLK,
							RD => RD,
							WR => WR,
							Sw => Sw(7 downto 0),
							Sw8 => Sw(8),
							Sw9 => Sw(9),
							Key => Key,
							Fpga_reset => Fpga_reset_N,
							Data_address => Data_address,
							Data_in => Data_out_MEM
						
						);
	
PC <= Rom_address;
LedR <= Leds_signal;
control <= instruction;
regA <= regA_signal;
Ram_simu <= Data_address;

	 
end architecture;
