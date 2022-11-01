library IEEE;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all;

entity memoriaROM is
   generic (
          dataWidth: natural := 16;
          addrWidth: natural := 9
	
	
    );
   port (
          Endereco : in std_logic_vector (8 DOWNTO 0);
          Dado : out std_logic_vector (15 DOWNTO 0)
    );
end entity;

architecture assincrona of memoriaROM is

  constant NOP  : std_logic_vector(3 downto 0)   := "0000";
  constant LDA  : std_logic_vector(3 downto 0)   := "0001";
  constant SOMA : std_logic_vector(3 downto 0)   := "0010";
  constant SUB  : std_logic_vector(3 downto 0)   := "0011";
  constant LDI  : std_logic_vector(3 downto 0)   := "0100";
  constant STA  : std_logic_vector(3 downto 0)   := "0101";
  constant JMP	 : std_logic_vector(3 downto 0)   := "0110";
  constant JEQ  : std_logic_vector(3 downto 0)   := "0111";
  constant CEQ  : std_logic_vector(3 downto 0)   := "1000";
  constant JSR  : std_logic_vector(3 downto 0)   := "1001";
  constant RET  : std_logic_vector(3 downto 0)   := "1010";
  constant ANDOP  : std_logic_vector(3 downto 0) := "1011";
  constant CLT 	: std_logic_vector(3 downto 0) := "1100";
  constant JLT  : std_logic_vector(3 downto 0)   := "1101";
  
  -- Registradores
  
  constant RUS : std_logic_vector(2 downto 0) := "000"; -- Valor da unidade de segundos
  constant RDS : std_logic_vector(2 downto 0) := "001"; -- Valor da dezena de segundos
  constant RUM : std_logic_vector(2 downto 0) := "010"; -- Valor da unidade de minutos
  constant RDM : std_logic_vector(2 downto 0) := "011"; -- Valor da dezena de minutos
  constant RUH : std_logic_vector(2 downto 0) := "100"; -- Valor da unidade de horas
  constant RDH : std_logic_vector(2 downto 0) := "101"; -- Valor da dezena de horas
  
  constant RCA : std_logic_vector(2 downto 0) := "110"; -- Registrador para operaçoes aritméticas
  constant RCZ : std_logic_vector(2 downto 0) := "111"; -- Registrador de comparação com zero 


  type blocoMemoria is array(0 TO 2**addrWidth - 1) of std_logic_vector(dataWidth-1 DOWNTO 0);

  function initMemory
        return blocoMemoria is variable tmp : blocoMemoria := (others => (others => '0'));
  begin
  
-- INICIALIZACAO

--tmp(0)  := RCA & JSR & "000000010";  
--tmp(1)  := JMP & "000101001";  
--tmp(2)  := STA & "111111111";      -- Reseta o KEY0 
--tmp(3)  := STA & "111111110";      -- Reseta o KEY 1 
--tmp(4)  := LDI & "000000000";  
--tmp(5)  := STA & "000000000";      -- Constante 0 
--tmp(6)  := LDI & "000000001";  
--tmp(7)  := STA & "000000001";      -- Constante 1 
--tmp(8)  := LDI & "000001010";  
--tmp(9)  := STA & "000001010";      -- Constante 10 
--tmp(10)  := LDI & "000001001";  
--tmp(11)  := STA & "000001001";      -- Constante 9 
--tmp(12)  := LDI & "000001111";      -- Constante 15 : Mascara para SW 
--tmp(13)  := STA & "000001011";  
--tmp(14)  := LDA & "000000000";      -- Carrega o acumulador com o valor 0 
--tmp(15)  := STA & "100100000";      -- Limpa HEX0 
--tmp(16)  := STA & "100100001";      -- Limpa HEX1 
--tmp(17)  := STA & "100100010";      -- Limpa HEX2 
--tmp(18)  := STA & "100100011";      -- Limpa HEX3 
--tmp(19)  := STA & "100100100";      -- Limpa HEX4 
--tmp(20)  := STA & "100100101";      -- Limpa HEX5 
--tmp(21)  := STA & "100000000";      -- Limpa LEDR0~LEDR7 
--tmp(22)  := STA & "100000001";      -- Limpa LEDR8 
--tmp(23)  := STA & "100000010";      -- Limpa LEDR9 
--tmp(24)  := STA & "000000010";      -- Inicializa o Valor das unidades 
--tmp(25)  := STA & "000000011";      -- Inicializa o Valor das dezenas 
--tmp(26)  := STA & "000000100";      -- Inicializa o Valor das centenas 
--tmp(27)  := STA & "000000101";      -- Inicializa o Valor das unidade de milhares 
--tmp(28)  := STA & "000000110";      -- Inicializa o Valor das dezenas de milhares 
--tmp(29)  := STA & "000000111";      -- Inicializa o Valor das centenas de milhares 
--tmp(30)  := LDI & "000001010";  
--tmp(31)  := STA & "000001101";      -- Limite para o Valor das unidades 
--tmp(32)  := STA & "000001110";      -- Limite para o Valor das dezenas 
--tmp(33)  := STA & "000001111";      -- Limite para o Valor das centenas 
--tmp(34)  := STA & "000010000";      -- Limite para o Valor das unidade de milhares 
--tmp(35)  := STA & "000010001";      -- Limite para o Valor das dezenas de milhares 
--tmp(36)  := STA & "000010010";      -- Limite para o Valor das centenas de milhares 
--tmp(37)  := LDI & "000000000";  
--tmp(38)  := STA & "000001000";      -- Limpa a Flag de limite 
--tmp(39)  := STA & "000001100";      -- Limpa a Flag de Overflow(carry_out) 
--tmp(40)  := RET & "000000000";
--
--
--
---- LOOP_INICIO
--
--
--tmp(41)  := LDA & "101100000";      -- Carrega o acumulador com a leitura do botão KEY0 
--tmp(42)  := ANDOP & "000000001";  
--tmp(43)  := CEQ & "000000001";      -- Compara a leitura de KEY0 com a constante 1 MEM[1] 
--tmp(44)  := JEQ & "000111000";  
--tmp(45)  := JSR & "001111110";  
--tmp(46)  := LDA & "101100001";      -- Carrega o acumulador com a leitura do botão KEY1 
--tmp(47)  := ANDOP & "000000001";      -- Aplica mascara 
--tmp(48)  := CEQ & "000000001";      -- Compara a leitura de KEY1 com a constante 1 MEM[1] 
--tmp(49)  := JEQ & "000111100";  
--tmp(50)  := JSR & "010010111";  
--tmp(51)  := LDA & "101100100";      -- Carrega o acumulador com a leitura do botão FPGA_RESET 
--tmp(52)  := ANDOP & "000000001";      -- Aplica mascara 
--tmp(53)  := CEQ & "000000001";      -- Compara a leitura de FPGA_RESET com a constante 1 MEM[1] 
--tmp(54)  := JEQ & "000111010";  
--tmp(55)  := JMP & "000101001";  
--
--
---- INCREMENTA_CONTADOR_CHECKPOINT:
--
--
--tmp(56)  := JSR & "000111110";  
--tmp(57)  := JMP & "000101101";
--
--
---- REINICIA_CONTADOR_CHECKPOINT:
--
--
--tmp(58)  := JSR & "010001011";  
--tmp(59)  := JMP & "000110111"; 
--
---- LIMITE_INCREMENTO_CHECKPOINT:
--
--
--tmp(60)  := JSR & "010101101";  
--tmp(61)  := JMP & "000110010";
--
--
---- INCREMENTA_CONTADOR
--
--
--tmp(62)  := STA & "111111111";  
--tmp(63)  := LDA & "000001100";  
--tmp(64)  := CEQ & "000000001";  
--tmp(65)  := JEQ & "001111101";      -- Verifica o carry_out 
--tmp(66)  := LDA & "000001000";  
--tmp(67)  := CEQ & "000000001";  
--tmp(68)  := JEQ & "001111101";      -- Verifica o carry_out 
--tmp(69)  := LDA & "000000010";  
--tmp(70)  := SOMA & "000000001";  
--tmp(71)  := CEQ & "000001010";  
--tmp(72)  := JEQ & "001001011";      -- Verifica as unidades 
--tmp(73)  := STA & "000000010";  
--tmp(74)  := JMP & "001111101";  
--tmp(75)  := LDI & "000000000";  
--tmp(76)  := STA & "000000010";  
--tmp(77)  := LDA & "000000011";  
--tmp(78)  := SOMA & "000000001";  
--tmp(79)  := CEQ & "000001010";  
--tmp(80)  := JEQ & "001010011";      -- Verifica as dezenas 
--tmp(81)  := STA & "000000011";  
--tmp(82)  := JMP & "001111101";  
--tmp(83)  := LDI & "000000000";  
--tmp(84)  := STA & "000000011";  
--tmp(85)  := LDA & "000000100";  
--tmp(86)  := SOMA & "000000001";  
--tmp(87)  := CEQ & "000001010";  
--tmp(88)  := JEQ & "001011011";      -- Verifica as centenas 
--tmp(89)  := STA & "000000100";  
--tmp(90)  := JMP & "001111101";  
--tmp(91)  := LDI & "000000000";  
--tmp(92)  := STA & "000000100";  
--tmp(93)  := LDA & "000000101";  
--tmp(94)  := SOMA & "000000001";  
--tmp(95)  := CEQ & "000001010";  
--tmp(96)  := JEQ & "001100011";      -- Verifica as Unidade de Milhares 
--tmp(97)  := STA & "000000101";  
--tmp(98)  := JMP & "001111101";  
--tmp(99)  := LDI & "000000000";  
--tmp(100)  := STA & "000000101";  
--tmp(101)  := LDA & "000000110";  
--tmp(102)  := SOMA & "000000001";  
--tmp(103)  := CEQ & "000001010";  
--tmp(104)  := JEQ & "001101011";      -- Verifica as dezenas de Milhares 
--tmp(105)  := STA & "000000110";  
--tmp(106)  := JMP & "001111101";  
--tmp(107)  := LDI & "000000000";  
--tmp(108)  := STA & "000000110";  
--tmp(109)  := LDA & "000000111";  
--tmp(110)  := SOMA & "000000001";  
--tmp(111)  := CEQ & "000001010";  
--tmp(112)  := JEQ & "001110011";      -- Verifica as centenas de Milhares 
--tmp(113)  := STA & "000000111";  
--tmp(114)  := JMP & "001111101";  
--tmp(115)  := LDI & "000000001";  
--tmp(116)  := STA & "100000010";      -- Ativa o LED de OVERLFOW 
--tmp(117)  := STA & "000001100";      -- Ativa a Flag de OVERFLOW 
--tmp(118)  := LDI & "000001001";  
--tmp(119)  := STA & "000000010";      -- Mantem os valore das unidades em 9 
--tmp(120)  := STA & "000000011";      -- Mantem os valore das dezenas em 9 
--tmp(121)  := STA & "000000100";      -- Mantem os valore das centenas em 9 
--tmp(122)  := STA & "000000101";      -- Mantem os valore das unidades de milhares em 9 
--tmp(123)  := STA & "000000110";      -- Mantem os valore das dezenas de milhares em 9 
--tmp(124)  := STA & "000000111";      -- Mantem os valore das centenas de milhares em 9 
--tmp(125)  := RET & "000000000";  
--
---- ESCREVE_DISPLAY
--
--
--tmp(126)  := LDA & "000000010";  
--tmp(127)  := STA & "100100000";      -- Escreve o valor das unidades 
--tmp(128)  := LDA & "000000011";  
--tmp(129)  := STA & "100100001";      -- Escreve o valor das dezenas 
--tmp(130)  := LDA & "000000100";  
--tmp(131)  := STA & "100100010";      -- Escreve o valor das centenas 
--tmp(132)  := LDA & "000000101";  
--tmp(133)  := STA & "100100011";      -- Escreve o valor das unidades de milhares 
--tmp(134)  := LDA & "000000110";  
--tmp(135)  := STA & "100100100";      -- Escreve o valor das dezenas de milhares 
--tmp(136)  := LDA & "000000111";  
--tmp(137)  := STA & "100100101";      -- Escreve o valor das centenas de milhares 
--tmp(138)  := RET & "000000000";  
--
---- REINICIA_CONTADOR
--
--
--tmp(139)  := LDI & "000000000";  
--tmp(140)  := STA & "000000010";      -- Reinicia o Valor das unidades 
--tmp(141)  := STA & "000000011";      -- Reinicia o Valor das dezenas 
--tmp(142)  := STA & "000000100";      -- Reinicia o Valor das centenas 
--tmp(143)  := STA & "000000101";      -- Reinicia o Valor das unidade de milhares 
--tmp(144)  := STA & "000000110";      -- Reinicia o Valor das dezenas de milhares 
--tmp(145)  := STA & "000000111";      -- Reinicia o Valor das centenas de milhares 
--tmp(146)  := STA & "000001000";      -- Reinicia a Flag de Limite 
--tmp(147)  := STA & "000001100";      -- Reinicia a Falg de Overflow(carry_out) 
--tmp(148)  := STA & "100000001";      -- Apaga o Led de Limite 
--tmp(149)  := STA & "100000010";      -- Apaga o Led de Overflow 
--tmp(150)  := RET & "000000000"; 
--
--
---- VERIFICA_LIMITE
--
--
--tmp(151)  := LDA & "000000010";  
--tmp(152)  := CLT & "000001101";  
--tmp(153)  := JLT & "010101100";      -- Verifica as unidades 
--tmp(154)  := LDA & "000000011";  
--tmp(155)  := CLT & "000001110";  
--tmp(156)  := JLT & "010101100";      -- Verifica as dezenas 
--tmp(157)  := LDA & "000000100";  
--tmp(158)  := CLT & "000001111";  
--tmp(159)  := JLT & "010101100";      -- Verifica as centenas 
--tmp(160)  := LDA & "000000101";  
--tmp(161)  := CLT & "000010000";  
--tmp(162)  := JLT & "010101100";      -- Verifica as unidades de milhares 
--tmp(163)  := LDA & "000000110";  
--tmp(164)  := CLT & "000010001";  
--tmp(165)  := JLT & "010101100";      -- Verifica as dezenas de milhares 
--tmp(166)  := LDA & "000000111";  
--tmp(167)  := CLT & "000010010";  
--tmp(168)  := JLT & "010101100";      -- Verifica as centenas de milhares 
--tmp(169)  := LDI & "000000001";  
--tmp(170)  := STA & "000001000";      -- Flag de Limite 
--tmp(171)  := STA & "100000001";      -- LED de Limite 
--tmp(172)  := RET & "000000000";
--
--
---- LIMITE_INCREMENTO
--
--
--tmp(173)  := STA & "111111110";      -- Limpa a leitura do KEY1 
--tmp(174)  := LDI & "000000001";  
--tmp(175)  := STA & "100000000";      -- Liga o LEDR0 
--tmp(176)  := LDA & "101100001";      -- Carrega o acumulador com a leitura do botão KEY1 
--tmp(177)  := ANDOP & "000000001";      -- Aplica mascara 
--tmp(178)  := CEQ & "000000001";      -- Compara a leitura de KEY1 com a constante 1 MEM[1] 
--tmp(179)  := JEQ & "010111100";  
--tmp(180)  := LDA & "101000000";      -- Leitura SW 
--tmp(181)  := ANDOP & "000001011";      -- Aplica mascara SW0~SW3 
--tmp(182)  := CLT & "000001010";  
--tmp(183)  := JLT & "010111010";  
--tmp(184)  := LDI & "000001001";  
--tmp(185)  := STA & "100100000";  
--tmp(186)  := STA & "100100000";  
--tmp(187)  := JMP & "010110000";  
--tmp(188)  := LDA & "101000000";      -- Leitura SW 
--tmp(189)  := ANDOP & "000001011";      -- Aplica mascara SW0~SW3 
--tmp(190)  := CLT & "000001010";  
--tmp(191)  := JLT & "011000010";  
--tmp(192)  := LDI & "000001001";  
--tmp(193)  := STA & "000001101";      -- Guarda o Limite das unidades 
--tmp(194)  := STA & "000001101";  
--tmp(195)  := STA & "111111110";      -- Limpa a leitura do KEY1 
--tmp(196)  := LDI & "000000010";  
--tmp(197)  := STA & "100000000";      -- Liga o LEDR1 
--tmp(198)  := LDA & "101100001";      -- Carrega o acumulador com a leitura do botão KEY1 
--tmp(199)  := ANDOP & "000000001";      -- Aplica mascara 
--tmp(200)  := CEQ & "000000001";      -- Compara a leitura de KEY1 com a constante 1 MEM[1] 
--tmp(201)  := JEQ & "011010010";  
--tmp(202)  := LDA & "101000000";      -- Leitura SW 
--tmp(203)  := ANDOP & "000001011";      -- Aplica mascara SW0~SW3 
--tmp(204)  := CLT & "000001010";  
--tmp(205)  := JLT & "011010000";  
--tmp(206)  := LDI & "000001001";  
--tmp(207)  := STA & "100100001";  
--tmp(208)  := STA & "100100001";  
--tmp(209)  := JMP & "011000110";  
--tmp(210)  := LDA & "101000000";      -- Leitura SW 
--tmp(211)  := ANDOP & "000001011";      -- Aplica mascara SW0~SW3 
--tmp(212)  := CLT & "000001010";  
--tmp(213)  := JLT & "011011000";  
--tmp(214)  := LDI & "000001001";  
--tmp(215)  := STA & "000001110";      -- Guarda o Limite das dezenas 
--tmp(216)  := STA & "000001110";  
--tmp(217)  := STA & "111111110";      -- Limpa a leitura do KEY1 
--tmp(218)  := LDI & "000000100";  
--tmp(219)  := STA & "100000000";      -- Liga o LEDR2 
--tmp(220)  := LDA & "101100001";      -- Carrega o acumulador com a leitura do botão KEY1 
--tmp(221)  := ANDOP & "000000001";      -- Aplica mascara 
--tmp(222)  := CEQ & "000000001";      -- Compara a leitura de KEY1 com a constante 1 MEM[1] 
--tmp(223)  := JEQ & "011101000";  
--tmp(224)  := LDA & "101000000";      -- Leitura SW 
--tmp(225)  := ANDOP & "000001011";      -- Aplica mascara SW0~SW3 
--tmp(226)  := CLT & "000001010";  
--tmp(227)  := JLT & "011100110";  
--tmp(228)  := LDI & "000001001";  
--tmp(229)  := STA & "100100010";  
--tmp(230)  := STA & "100100010";  
--tmp(231)  := JMP & "011011100";  
--tmp(232)  := LDA & "101000000";      -- Leitura SW 
--tmp(233)  := ANDOP & "000001011";      -- Aplica mascara SW0~SW3 
--tmp(234)  := CLT & "000001010";  
--tmp(235)  := JLT & "011101110";  
--tmp(236)  := LDI & "000001001";  
--tmp(237)  := STA & "000001111";      -- Guarda o Limite das centenas 
--tmp(238)  := STA & "000001111";  
--tmp(239)  := STA & "111111110";      -- Limpa a leitura do KEY1 
--tmp(240)  := LDI & "000001000";  
--tmp(241)  := STA & "100000000";      -- Liga o LEDR3 
--tmp(242)  := LDA & "101100001";      -- Carrega o acumulador com a leitura do botão KEY1 
--tmp(243)  := ANDOP & "000000001";      -- Aplica mascara 
--tmp(244)  := CEQ & "000000001";      -- Compara a leitura de KEY1 com a constante 1 MEM[1] 
--tmp(245)  := JEQ & "011111110";  
--tmp(246)  := LDA & "101000000";      -- Leitura SW 
--tmp(247)  := ANDOP & "000001011";      -- Aplica mascara SW0~SW3 
--tmp(248)  := CLT & "000001010";  
--tmp(249)  := JLT & "011111100";  
--tmp(250)  := LDI & "000001001";  
--tmp(251)  := STA & "100100011";  
--tmp(252)  := STA & "100100011";  
--tmp(253)  := JMP & "011110010";  
--tmp(254)  := LDA & "101000000";      -- Leitura SW 
--tmp(255)  := ANDOP & "000001011";      -- Aplica mascara SW0~SW3 
--tmp(256)  := CLT & "000001010";  
--tmp(257)  := JLT & "100000100";  
--tmp(258)  := LDI & "000001001";  
--tmp(259)  := STA & "000010000";      -- Guarda o Limite das unidade de milhares 
--tmp(260)  := STA & "000010000";  
--tmp(261)  := STA & "111111110";      -- Limpa a leitura do KEY1 
--tmp(262)  := LDI & "000010000";  
--tmp(263)  := STA & "100000000";      -- Liga o LEDR4 
--tmp(264)  := LDA & "101100001";      -- Carrega o acumulador com a leitura do botão KEY1 
--tmp(265)  := ANDOP & "000000001";      -- Aplica mascara 
--tmp(266)  := CEQ & "000000001";      -- Compara a leitura de KEY1 com a constante 1 MEM[1] 
--tmp(267)  := JEQ & "100010100";  
--tmp(268)  := LDA & "101000000";      -- Leitura SW 
--tmp(269)  := ANDOP & "000001011";      -- Aplica mascara SW0~SW3 
--tmp(270)  := CLT & "000001010";  
--tmp(271)  := JLT & "100010010";  
--tmp(272)  := LDI & "000001001";  
--tmp(273)  := STA & "100100100";  
--tmp(274)  := STA & "100100100";  
--tmp(275)  := JMP & "100001000";  
--tmp(276)  := LDA & "101000000";      -- Leitura SW 
--tmp(277)  := ANDOP & "000001011";      -- Aplica mascara SW0~SW3 
--tmp(278)  := CLT & "000001010";  
--tmp(279)  := JLT & "100011010";  
--tmp(280)  := LDI & "000001001";  
--tmp(281)  := STA & "000010001";      -- Guarda o Limite das dezenas de milhares 
--tmp(282)  := STA & "000010001";  
--tmp(283)  := STA & "111111110";      -- Limpa a leitura do KEY1 
--tmp(284)  := LDI & "000100000";  
--tmp(285)  := STA & "100000000";      -- Liga o LEDR5 
--tmp(286)  := LDA & "101100001";      -- Carrega o acumulador com a leitura do botão KEY1 
--tmp(287)  := ANDOP & "000000001";      -- Aplica mascara 
--tmp(288)  := CEQ & "000000001";      -- Compara a leitura de KEY1 com a constante 1 MEM[1] 
--tmp(289)  := JEQ & "100101010";  
--tmp(290)  := LDA & "101000000";      -- Leitura SW 
--tmp(291)  := ANDOP & "000001011";      -- Aplica mascara SW0~SW3 
--tmp(292)  := CLT & "000001010";  
--tmp(293)  := JLT & "100101000";  
--tmp(294)  := LDI & "000001001";  
--tmp(295)  := STA & "100100101";  
--tmp(296)  := STA & "100100101";  
--tmp(297)  := JMP & "100011110";  
--tmp(298)  := LDA & "101000000";      -- Leitura SW 
--tmp(299)  := ANDOP & "000001011";      -- Aplica mascara SW0~SW3 
--tmp(300)  := CLT & "000001010";  
--tmp(301)  := JLT & "100110000";  
--tmp(302)  := LDI & "000001001";  
--tmp(303)  := STA & "000010010";      -- Guarda o Limite das centenas de milhares 
--tmp(304)  := STA & "000010010";  
--tmp(305)  := LDI & "000000000";  
--tmp(306)  := STA & "100100000";      -- Limpa o HEX0 
--tmp(307)  := STA & "100100001";      -- Limpa o HEX1 
--tmp(308)  := STA & "100100001";      -- Limpa o HEX2 
--tmp(309)  := STA & "100100010";      -- Limpa o HEX3 
--tmp(310)  := STA & "100100011";      -- Limpa o HEX4 
--tmp(311)  := STA & "100000000";      -- Limpa o HEX5 
--tmp(312)  := STA & "111111110";      -- Limpa a leitura do KEY1 
--tmp(313)  := RET & "000000000";  
--return tmp;
tmp(0)  :=  RCA & JSR & "000000010";
tmp(1)  :=  RCA & JMP & "000101001";
tmp(2)  :=  RCA & STA & "111111111";
tmp(3)  :=  RCA & STA & "111111110";
tmp(4)  :=  RCA & LDI & "000000000";
tmp(5)  :=  RCA & STA & "000000000";
tmp(6)  :=  RCA & LDI & "000000001";
tmp(7)  :=  RCA & STA & "000000001";
tmp(8)  :=  RCA & LDI & "000001010";
tmp(9)  :=  RCA & STA & "000001010";
tmp(10)  :=  RCA &LDI & "000001001";
tmp(11)  :=  RCA &STA & "000001001";
tmp(12)  :=  RCA &LDI & "000001111";
tmp(13)  :=  RCA &STA & "000001011";
tmp(14)  :=  RCA &LDA & "000000000";
tmp(15)  :=  RCA &STA & "100100000";
tmp(16)  :=  RCA &STA & "100100001";
tmp(17)  :=  RCA &STA & "100100010";
tmp(18)  :=  RCA &STA & "100100011";
tmp(19)  :=  RCA &STA & "100100100";
tmp(20)  :=  RCA &STA & "100100101";
tmp(21)  :=  RCA &STA & "100000000";
tmp(22)  :=  RCA &STA & "100000001";
tmp(23)  :=  RCA &STA & "100000010";
tmp(24)  :=  RCA &STA & "000000010";
tmp(25)  :=  RCA &STA & "000000011";
tmp(26)  :=  RCA &STA & "000000100";
tmp(27)  :=  RCA &STA & "000000101";
tmp(28)  :=  RCA &STA & "000000110";
tmp(29)  :=  RCA &STA & "000000111";
tmp(30)  :=  RCA &LDI & "000001010";
tmp(31)  :=  RCA &STA & "000001101";
tmp(32)  :=  RCA &STA & "000001110";
tmp(33)  :=  RCA &STA & "000001111";
tmp(34)  :=  RCA &STA & "000010000";
tmp(35)  :=  RCA &STA & "000010001";
tmp(36)  :=  RCA &STA & "000010010";
tmp(37)  :=  RCA &LDI & "000000000";
tmp(38)  :=  RCA &STA & "000001000";
tmp(39)  :=  RCA &STA & "000001100";
tmp(40)  :=  RCA &RET & "000000000";
tmp(41)  :=  RCA &LDA & "101100000";
tmp(42)  :=  RCA &ANDOP & "000000001";
tmp(43)  :=  RCA &CEQ & "000000001";
tmp(44)  :=  RCA &JEQ & "000111000";
tmp(45)  :=  RCA &JSR & "001111110";
tmp(46)  :=  RCA &LDA & "101100001";
tmp(47)  :=  RCA &ANDOP & "000000001";
tmp(48)  :=  RCA &CEQ & "000000001";
tmp(49)  :=  RCA &JEQ & "000111100";
tmp(50)  :=  RCA &JSR & "010010111";
tmp(51)  :=  RCA &LDA & "101100100";
tmp(52)  :=  RCA &ANDOP & "000000001";
tmp(53)  :=  RCA &CEQ & "000000001";
tmp(54)  :=  RCA &JEQ & "000111010";
tmp(55)  :=  RCA &JMP & "000101001";
tmp(56)  :=  RCA &JSR & "000111110";
tmp(57)  :=  RCA &JMP & "000101101";
tmp(58)  :=  RCA &JSR & "010001011";
tmp(59)  :=  RCA &JMP & "000110111";
tmp(60)  :=  RCA &JSR & "010101101";
tmp(61)  :=  RCA &JMP & "000110010";
tmp(62)  :=  RCA &STA & "111111111";
tmp(63)  :=  RCA &LDA & "000001100";
tmp(64)  :=  RCA &CEQ & "000000001";
tmp(65)  :=  RCA &JEQ & "001111101";
tmp(66)  :=  RCA &LDA & "000001000";
tmp(67)  :=  RCA &CEQ & "000000001";
tmp(68)  :=  RCA &JEQ & "001111101";
tmp(69)  :=  RCA &LDA & "000000010";
tmp(70)  :=  RCA &SOMA & "000000001";
tmp(71)  :=  RCA &CEQ & "000001010";
tmp(72)  :=  RCA &JEQ & "001001011";
tmp(73)  :=  RCA &STA & "000000010";
tmp(74)  :=  RCA &JMP & "001111101";
tmp(75)  :=  RCA &LDI & "000000000";
tmp(76)  :=  RCA &STA & "000000010";
tmp(77)  :=  RCA &LDA & "000000011";
tmp(78)  :=  RCA &SOMA & "000000001";
tmp(79)  :=  RCA &CEQ & "000001010";
tmp(80)  :=  RCA &JEQ & "001010011";
tmp(81)  :=  RCA &STA & "000000011";
tmp(82)  :=  RCA &JMP & "001111101";
tmp(83)  :=  RCA &LDI & "000000000";
tmp(84)  :=  RCA &STA & "000000011";
tmp(85)  :=  RCA &LDA & "000000100";
tmp(86)  :=  RCA &SOMA & "000000001";
tmp(87)  :=  RCA &CEQ & "000001010";
tmp(88)  :=  RCA &JEQ & "001011011";
tmp(89)  :=  RCA &STA & "000000100";
tmp(90)  :=  RCA &JMP & "001111101";
tmp(91)  :=  RCA &LDI & "000000000";
tmp(92)  :=  RCA &STA & "000000100";
tmp(93)  :=  RCA &LDA & "000000101";
tmp(94)  :=  RCA &SOMA & "000000001";
tmp(95)  :=  RCA &CEQ & "000001010";
tmp(96)  :=  RCA &JEQ & "001100011";
tmp(97)  :=  RCA &STA & "000000101";
tmp(98)  :=  RCA &JMP & "001111101";
tmp(99)  :=  RCA &LDI & "000000000";
tmp(100)  := RCA & STA & "000000101";
tmp(101)  := RCA & LDA & "000000110";
tmp(102)  := RCA & SOMA & "000000001";
tmp(103)  := RCA & CEQ & "000001010";
tmp(104)  := RCA & JEQ & "001101011";
tmp(105)  := RCA & STA & "000000110";
tmp(106)  := RCA & JMP & "001111101";
tmp(107)  := RCA & LDI & "000000000";
tmp(108)  := RCA & STA & "000000110";
tmp(109)  := RCA & LDA & "000000111";
tmp(110)  := RCA & SOMA & "000000001";
tmp(111)  := RCA & CEQ & "000001010";
tmp(112)  := RCA & JEQ & "001110011";
tmp(113)  := RCA & STA & "000000111";
tmp(114)  := RCA & JMP & "001111101";
tmp(115)  := RCA & LDI & "000000001";
tmp(116)  := RCA & STA & "100000010";
tmp(117)  := RCA & STA & "000001100";
tmp(118)  := RCA & LDI & "000001001";
tmp(119)  := RCA & STA & "000000010";
tmp(120)  := RCA & STA & "000000011";
tmp(121)  := RCA & STA & "000000100";
tmp(122)  := RCA & STA & "000000101";
tmp(123)  := RCA & STA & "000000110";
tmp(124)  := RCA & STA & "000000111";
tmp(125)  := RCA & RET & "000000000";
tmp(126)  := RCA & LDA & "000000010";
tmp(127)  := RCA & STA & "100100000";
tmp(128)  := RCA & LDA & "000000011";
tmp(129)  := RCA & STA & "100100001";
tmp(130)  := RCA & LDA & "000000100";
tmp(131)  := RCA & STA & "100100010";
tmp(132)  := RCA & LDA & "000000101";
tmp(133)  := RCA & STA & "100100011";
tmp(134)  := RCA & LDA & "000000110";
tmp(135)  := RCA & STA & "100100100";
tmp(136)  := RCA & LDA & "000000111";
tmp(137)  := RCA & STA & "100100101";
tmp(138)  := RCA & RET & "000000000";
tmp(139)  := RCA & LDI & "000000000";
tmp(140)  := RCA & STA & "000000010";
tmp(141)  := RCA & STA & "000000011";
tmp(142)  := RCA & STA & "000000100";
tmp(143)  := RCA & STA & "000000101";
tmp(144)  := RCA & STA & "000000110";
tmp(145)  := RCA & STA & "000000111";
tmp(146)  := RCA & STA & "000001000";
tmp(147)  := RCA & STA & "000001100";
tmp(148)  := RCA & STA & "100000001";
tmp(149)  := RCA & STA & "100000010";
tmp(150)  := RCA & RET & "000000000";
tmp(151)  := RCA & LDA & "000000010";
tmp(152)  := RCA & CLT & "000001101";
tmp(153)  := RCA & JLT & "010101100";
tmp(154)  := RCA & LDA & "000000011";
tmp(155)  := RCA & CLT & "000001110";
tmp(156)  := RCA & JLT & "010101100";
tmp(157)  := RCA & LDA & "000000100";
tmp(158)  := RCA & CLT & "000001111";
tmp(159)  := RCA & JLT & "010101100";
tmp(160)  := RCA & LDA & "000000101";
tmp(161)  := RCA & CLT & "000010000";
tmp(162)  := RCA & JLT & "010101100";
tmp(163)  := RCA & LDA & "000000110";
tmp(164)  := RCA & CLT & "000010001";
tmp(165)  := RCA & JLT & "010101100";
tmp(166)  := RCA & LDA & "000000111";
tmp(167)  := RCA & CLT & "000010010";
tmp(168)  := RCA & JLT & "010101100";
tmp(169)  := RCA & LDI & "000000001";
tmp(170)  := RCA & STA & "000001000";
tmp(171)  := RCA & STA & "100000001";
tmp(172)  := RCA & RET & "000000000";
tmp(173)  := RCA & STA & "111111110";
tmp(174)  := RCA & LDI & "000000001";
tmp(175)  := RCA & STA & "100000000";
tmp(176)  := RCA & LDA & "101100001";
tmp(177)  := RCA & ANDOP & "000000001";
tmp(178)  := RCA & CEQ & "000000001";
tmp(179)  := RCA & JEQ & "010111100";
tmp(180)  := RCA & LDA & "101000000";
tmp(181)  := RCA & ANDOP & "000001011";
tmp(182)  := RCA & CLT & "000001010";
tmp(183)  := RCA & JLT & "010111010";
tmp(184)  := RCA & LDI & "000001001";
tmp(185)  := RCA & STA & "100100000";
tmp(186)  := RCA & STA & "100100000";
tmp(187)  := RCA & JMP & "010110000";
tmp(188)  := RCA & LDA & "101000000";
tmp(189)  := RCA & ANDOP & "000001011";
tmp(190)  := RCA & CLT & "000001010";
tmp(191)  := RCA & JLT & "011000010";
tmp(192)  := RCA & LDI & "000001001";
tmp(193)  := RCA & STA & "000001101";
tmp(194)  := RCA & STA & "000001101";
tmp(195)  := RCA & STA & "111111110";
tmp(196)  := RCA & LDI & "000000010";
tmp(197)  := RCA & STA & "100000000";
tmp(198)  := RCA & LDA & "101100001";
tmp(199)  := RCA & ANDOP & "000000001";
tmp(200)  := RCA & CEQ & "000000001";
tmp(201)  := RCA & JEQ & "011010010";
tmp(202)  := RCA & LDA & "101000000";
tmp(203)  := RCA & ANDOP & "000001011";
tmp(204)  := RCA & CLT & "000001010";
tmp(205)  := RCA & JLT & "011010000";
tmp(206)  := RCA & LDI & "000001001";
tmp(207)  := RCA & STA & "100100001";
tmp(208)  := RCA & STA & "100100001";
tmp(209)  := RCA & JMP & "011000110";
tmp(210)  := RCA & LDA & "101000000";
tmp(211)  := RCA & ANDOP & "000001011";
tmp(212)  := RCA & CLT & "000001010";
tmp(213)  := RCA & JLT & "011011000";
tmp(214)  := RCA & LDI & "000001001";
tmp(215)  := RCA & STA & "000001110";
tmp(216)  := RCA & STA & "000001110";
tmp(217)  := RCA & STA & "111111110";
tmp(218)  := RCA & LDI & "000000100";
tmp(219)  := RCA & STA & "100000000";
tmp(220)  := RCA & LDA & "101100001";
tmp(221)  := RCA & ANDOP & "000000001";
tmp(222)  := RCA & CEQ & "000000001";
tmp(223)  := RCA & JEQ & "011101000";
tmp(224)  := RCA & LDA & "101000000";
tmp(225)  := RCA & ANDOP & "000001011";
tmp(226)  := RCA & CLT & "000001010";
tmp(227)  := RCA & JLT & "011100110";
tmp(228)  := RCA & LDI & "000001001";
tmp(229)  := RCA & STA & "100100010";
tmp(230)  := RCA & STA & "100100010";
tmp(231)  := RCA & JMP & "011011100";
tmp(232)  := RCA & LDA & "101000000";
tmp(233)  := RCA & ANDOP & "000001011";
tmp(234)  := RCA & CLT & "000001010";
tmp(235)  := RCA & JLT & "011101110";
tmp(236)  := RCA & LDI & "000001001";
tmp(237)  := RCA & STA & "000001111";
tmp(238)  := RCA & STA & "000001111";
tmp(239)  := RCA & STA & "111111110";
tmp(240)  := RCA & LDI & "000001000";
tmp(241)  := RCA & STA & "100000000";
tmp(242)  := RCA & LDA & "101100001";
tmp(243)  := RCA & ANDOP & "000000001";
tmp(244)  := RCA & CEQ & "000000001";
tmp(245)  := RCA & JEQ & "011111110";
tmp(246)  := RCA & LDA & "101000000";
tmp(247)  := RCA & ANDOP & "000001011";
tmp(248)  := RCA & CLT & "000001010";
tmp(249)  := RCA & JLT & "011111100";
tmp(250)  := RCA & LDI & "000001001";
tmp(251)  := RCA & STA & "100100011";
tmp(252)  := RCA & STA & "100100011";
tmp(253)  := RCA & JMP & "011110010";
tmp(254)  := RCA & LDA & "101000000";
tmp(255)  := RCA & ANDOP & "000001011";
tmp(256)  := RCA & CLT & "000001010";
tmp(257)  := RCA & JLT & "100000100";
tmp(258)  := RCA & LDI & "000001001";
tmp(259)  := RCA & STA & "000010000";
tmp(260)  := RCA & STA & "000010000";
tmp(261)  := RCA & STA & "111111110";
tmp(262)  := RCA & LDI & "000010000";
tmp(263)  := RCA & STA & "100000000";
tmp(264)  := RCA & LDA & "101100001";
tmp(265)  := RCA & ANDOP & "000000001";
tmp(266)  := RCA & CEQ & "000000001";
tmp(267)  := RCA & JEQ & "100010100";
tmp(268)  := RCA & LDA & "101000000";
tmp(269)  := RCA & ANDOP & "000001011";
tmp(270)  := RCA & CLT & "000001010";
tmp(271)  := RCA & JLT & "100010010";
tmp(272)  := RCA & LDI & "000001001";
tmp(273)  := RCA & STA & "100100100";
tmp(274)  := RCA & STA & "100100100";
tmp(275)  := RCA & JMP & "100001000";
tmp(276)  := RCA & LDA & "101000000";
tmp(277)  := RCA & ANDOP & "000001011";
tmp(278)  := RCA & CLT & "000001010";
tmp(279)  := RCA & JLT & "100011010";
tmp(280)  := RCA & LDI & "000001001";
tmp(281)  := RCA & STA & "000010001";
tmp(282)  := RCA & STA & "000010001";
tmp(283)  := RCA & STA & "111111110";
tmp(284)  := RCA & LDI & "000100000";
tmp(285)  := RCA & STA & "100000000";
tmp(286)  := RCA & LDA & "101100001";
tmp(287)  := RCA & ANDOP & "000000001";
tmp(288)  := RCA & CEQ & "000000001";
tmp(289)  := RCA & JEQ & "100101010";
tmp(290)  := RCA & LDA & "101000000";
tmp(291)  := RCA & ANDOP & "000001011";
tmp(292)  := RCA & CLT & "000001010";
tmp(293)  := RCA & JLT & "100101000";
tmp(294)  := RCA & LDI & "000001001";
tmp(295)  := RCA & STA & "100100101";
tmp(296)  := RCA & STA & "100100101";
tmp(297)  := RCA & JMP & "100011110";
tmp(298)  := RCA & LDA & "101000000";
tmp(299)  := RCA & ANDOP & "000001011";
tmp(300)  := RCA & CLT & "000001010";
tmp(301)  := RCA & JLT & "100110000";
tmp(302)  := RCA & LDI & "000001001";
tmp(303)  := RCA & STA & "000010010";
tmp(304)  := RCA & STA & "000010010";
tmp(305)  := RCA & LDI & "000000000";
tmp(306)  := RCA & STA & "100100000";
tmp(307)  := RCA & STA & "100100001";
tmp(308)  := RCA & STA & "100100001";
tmp(309)  := RCA & STA & "100100010";
tmp(310)  := RCA & STA & "100100011";
tmp(311)  := RCA & STA & "100000000";
tmp(312)  := RCA & STA & "111111110";
tmp(313)  := RCA & RET & "000000000";
return tmp;
    end initMemory;

    signal memROM : blocoMemoria := initMemory;

begin
    Dado <= memROM (to_integer(unsigned(Endereco)));
end architecture;