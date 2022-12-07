library ieee;
use ieee.std_logic_1164.all;

entity TopLevel is
  -- Total de bits das entradas e saidas
  generic ( larguraDados : natural := 32;
        larguraEnderecos : natural := 8;
        simulacao : boolean := TRUE -- para gravar na placa, altere de TRUE para FALSE
  );
  port   (
    CLOCK_50 : in std_logic;
   -- PC: out std_logic_vector((larguraDados-1) downto 0);   Usado geralmente em simulações.
	 KEY : in std_logic_vector(3 downto 0);
	 HEX0, HEX1, HEX2, HEX3, HEX4 ,HEX5: out std_logic_vector(6 downto 0);
	 SW: std_logic_vector(9 downto 0);
	 LEDR: out std_logic_vector(9 downto 0)
	 
	 
  );
end entity;


architecture arquitetura of TopLevel is

--SIGNALS

  signal CLK : std_logic;
  

  
 -- Registradores
  signal RS_out: std_logic_vector((larguraDados-1) downto 0);
  
  
 -- Instrucao ( unidade de controle)
  signal instrucao: std_logic_vector(13 downto 0);
  
 
 -- PC + BEQ
 signal PC_Beq_out: std_logic_vector((larguraDados-1) downto 0); -- saida do mux do BEQ
 
 signal PC_out: std_logic_vector((larguraDados-1) downto 0);
 
 signal ULA_out: std_logic_vector((larguraDados-1) downto 0);
 
 signal Flag_zero: std_logic;
 
 signal somador_pc_out_pipeline: std_logic_vector((larguraDados-1) downto 0);
 
 signal somador_pc_out_hex: std_logic_vector((larguraDados-1) downto 0);
 
 signal ROM_out_pipeline : std_logic_vector((larguraDados-1) downto 0);
 

 
 
 -- Saida teste
 signal saida_teste: std_logic_vector((larguraDados-1) downto 0);
 
 
 -- PIPELINE
 
 signal IF_ID: std_logic_vector(63 downto 0);
 signal ID_EX: std_logic_vector(222 downto 0);
 signal EX_MEM: std_logic_vector(179 downto 0);
 signal MEM_WB: std_logic_vector(146 downto 0);
 signal WB_out: std_logic_vector(37 downto 0);		 -- RegC_in(37 a 33), Reg_WR(32 a 1), habilita_Regs(0)
 
 
 -- ALIAS
 
 --DECODE
 
 alias habilita_Regs: std_logic is WB_out(0);
 alias Reg_WR: std_logic_vector(31 downto 0) is WB_out(32 downto 1);
 alias RegC_in: std_logic_vector(4 downto 0) is WB_out(37 downto 33);
 
 
  

begin

								  

-- Instanciando os componentes:

-- Para simular, fica mais simples tirar o edgeDetector
gravar:  if simulacao generate
CLK <= KEY(0);
else generate
detectorSub0: work.edgeDetector(bordaSubida)
        port map (clk => CLOCK_50, entrada => (not KEY(0)), 
						saida => CLK);
end generate;



Fetch_stage : entity work.Fetch
					
				  port map (	CLK => CLK,
									RS_out => RS_out ,
									instrucao => instrucao ,
									PC_Beq_out => PC_Beq_out,
									PC_out_pipeline => PC_out,
									somador_pc_out_pipeline => somador_pc_out_pipeline,
									ROM_out_pipeline => ROM_out_pipeline,
									IF_ID => IF_ID
						);

									
Decode_stage: entity work.Decode
					
					port map ( CLK => CLK,
								  IF_ID => IF_ID,
								  habilita_Regs => habilita_Regs ,
								  RegC_in_pipeline => RegC_in ,
								  Reg_WR =>Reg_WR ,
								  ROM_out_pipeline => ROM_out_pipeline,
								  instrucao_pipeline => instrucao,
								  RS_out_pipeline => RS_out,
								  ID_EX => ID_EX 
						);

Execute_stage: entity work.Execute

					port map ( CLK => CLK,
								  ID_EX => ID_EX,
								  flag_Zero_pipeline => Flag_zero,
								  ULA_out_pipeline => ULA_out,
								  somador_pc_out_hex => somador_pc_out_hex,
								  EX_MEM => EX_MEM
					
					   );
						
Memory_stage: entity work.Memory 

					port map (	CLK => CLK,
									PC_Beq_out_pipeline => PC_Beq_out,
									somador_pc_out_pipeline => somador_pc_out_pipeline,
									EX_MEM => EX_MEM ,
									MEM_WB => MEM_WB
					
					
					);
					
WriteBack: entity work.WriteBack

					port map ( CLK => CLK,
								  MEM_WB => MEM_WB ,
								  WB_out =>WB_out 
					
					
					);

					
-- PIPELINE


--RS_out <= ID_EX(77 downto 46);   --RS_out(77 a 46)
--instrucao <= ID_EX(13 downto 0); --instrucao(13 a 0)


--ULA_out <= EX_MEM(77 downto 46); --ULA_out(77 a 46)



						
-- TESTES HEX LEDR
						

-- MUX para Hexs e ledrs
mux_item8: entity work.muxGenerico4x1 generic map(larguraDados => larguraDados)
				port map (	entrada00_MUX => PC_out , 
								entrada01_MUX => somador_pc_out_hex ,  -- ID/EX somador_pc_out(45 a 14)
								entrada10_MUX => ULA_out,
								entrada11_MUX => Reg_WR,
								seletor_MUX => SW(1 downto 0) ,
								saida_MUX => saida_teste);
								
								
conversor_0: entity work.conversorHex7Seg
				port map  (	dadoHex => saida_teste(3 downto 0),
								apaga => '0',
								negativo => '0',
								overflow => '0',
								saida7seg => HEX0
				);

conversor_1: entity work.conversorHex7Seg
				port map  (	dadoHex => saida_teste(7 downto 4),
								apaga => '0',
								negativo => '0',
								overflow => '0',
								saida7seg => HEX1
				);
						
				
conversor_2: entity work.conversorHex7Seg
				port map  (	dadoHex => saida_teste(11 downto 8),
								apaga => '0',
								negativo => '0',
								overflow => '0',
								saida7seg => HEX2
				);

conversor_3: entity work.conversorHex7Seg
				port map  (	dadoHex => saida_teste(15 downto 12),
								apaga => '0',
								negativo => '0',
								overflow => '0',
								saida7seg => HEX3
				);		

conversor_4: entity work.conversorHex7Seg
				port map  (	dadoHex => saida_teste(19 downto 16),
								apaga => '0',
								negativo => '0',
								overflow => '0',
								saida7seg => HEX4
				);

conversor_5: entity work.conversorHex7Seg
				port map  (	dadoHex => saida_teste(23 downto 20),
								apaga => '0',
								negativo => '0',
								overflow => '0',
								saida7seg => HEX5
				);

-- LEDR

LEDR(3 downto 0) <= saida_teste(27 downto 24);
LEDR(7 downto 4) <= saida_teste(31 downto 28);
LEDR(8) <= habilita_Regs;	
LEDR(9) <= Flag_Zero;			
				






end architecture;