library ieee;
use ieee.std_logic_1164.all;

entity Fetch is
  -- Total de bits das entradas e saidas
  generic ( larguraDados : natural := 32);
  port (
    CLK: 		 in std_logic;
    RS_out: 	 in std_logic_vector((larguraDados-1) downto 0);  -- Registradores
	 instrucao : in std_logic_vector (13 downto 0); -- Controle
	 PC_Beq_out: in std_logic_vector((larguraDados-1) downto 0);
	 PC_out_pipeline : out std_logic_vector((larguraDados-1) downto 0);	-- Teste LED/HEX
	 somador_pc_out_pipeline: out std_logic_vector((larguraDados-1) downto 0);
	 ROM_out_pipeline: in std_logic_vector((larguraDados-1) downto 0);
    IF_ID : out std_logic_vector(63 downto 0) 
  );
end entity;

architecture comportamento of Fetch is

-- ROM
  signal ROM_out: std_logic_vector((larguraDados-1) downto 0);

 -- Entrada do PC
 signal PC_in: std_logic_vector((larguraDados-1) downto 0);
 
 -- Saida do PC
 signal PC_out: std_logic_vector((larguraDados-1) downto 0);


 -- Saida do Somador do PC
 signal somador_pc_out: std_logic_vector((larguraDados-1) downto 0);

 -- PC + BEQ
 signal PC_Beq_in: std_logic_vector((larguraDados-1) downto 0); -- entrada do mux do BEQ

 -- Entrada 0 do MUX JR
 signal  MUX_JR_0: std_logic_vector((larguraDados-1) downto 0);

 
 -- instrucao
  alias mux_pc: std_logic is instrucao(12);
  alias JR: std_logic is instrucao(13);

  begin
  
  
-- port map da Rom

ROM_item: entity work.memoriaROM
			port map ( clk => CLK,
          Endereco => PC_out,
          Dado => ROM_out);
  
  
-- O port map do PC
PC_item :  entity work.registradorGenerico  generic map (larguraDados => larguraDados)
        port map( DIN => PC_in,
						DOUT => PC_out,
						ENABLE => '1',
						CLK => CLK,
						RST => '0' );
						
-- port map do Somador de PC ( soma de 4 em 4)
Somador_PC: entity work.somaConstante generic map (larguraDados => larguraDados)
			port map
					(	entrada => PC_out,
						saida => somador_pc_out);

  
  -- MUX do PC:

mux_item4: entity work.muxGenerico2x1 generic map(larguraDados => larguraDados)
				port map (	entradaA_MUX => PC_Beq_out , 
								entradaB_MUX => somador_pc_out(31 downto 28) & ROM_out_pipeline(25 downto 0) & "00" ,
								seletor_MUX => mux_pc ,
								saida_MUX => MUX_JR_0);
  
  -- MUX JR:

mux_item6: entity work.muxGenerico2x1 generic map(larguraDados => larguraDados)
				port map (	entradaA_MUX => MUX_JR_0 , 
								entradaB_MUX => RS_out ,
								seletor_MUX => JR ,
								saida_MUX => PC_in);
 -- IF/DE:
IF_DE: 	entity work.registradorGenerico generic map (larguraDados => 64) 
			port map ( DIN  => somador_pc_out & ROM_out, -- somador_pc_out(63 a 32), ROM_out(31 a 0)
						  DOUT => IF_ID,
						  ENABLE => '1',
						  CLK => CLK,
						  RST => '0');
						  
PC_out_pipeline <= PC_out;
somador_pc_out_pipeline <= somador_pc_out;
    
end architecture;