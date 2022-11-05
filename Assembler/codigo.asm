-- INICIALIZACAO

tmp(0)  := JSR & "000000010";  
tmp(1)  := JMP & "000101001";  
tmp(2)  := STA & "111111111";      -- Reseta o KEY0 
tmp(3)  := STA & "111111110";      -- Reseta o KEY 1 
tmp(4)  := LDI & "000000000";  
tmp(5)  := STA & "000000000";      -- Constante 0 
tmp(6)  := LDI & "000000001";  
tmp(7)  := STA & "000000001";      -- Constante 1 
tmp(8)  := LDI & "000001010";  
tmp(9)  := STA & "000001010";      -- Constante 10 
tmp(10)  := LDI & "000001001";  
tmp(11)  := STA & "000001001";      -- Constante 9 
tmp(12)  := LDI & "000001111";      -- Constante 15 : Mascara para SW 
tmp(13)  := STA & "000001011";  
tmp(14)  := LDA & "000000000";      -- Carrega o acumulador com o valor 0 
tmp(15)  := STA & "100100000";      -- Limpa HEX0 
tmp(16)  := STA & "100100001";      -- Limpa HEX1 
tmp(17)  := STA & "100100010";      -- Limpa HEX2 
tmp(18)  := STA & "100100011";      -- Limpa HEX3 
tmp(19)  := STA & "100100100";      -- Limpa HEX4 
tmp(20)  := STA & "100100101";      -- Limpa HEX5 
tmp(21)  := STA & "100000000";      -- Limpa LEDR0~LEDR7 
tmp(22)  := STA & "100000001";      -- Limpa LEDR8 
tmp(23)  := STA & "100000010";      -- Limpa LEDR9 
tmp(24)  := STA & "000000010";      -- Inicializa o Valor das unidades 
tmp(25)  := STA & "000000011";      -- Inicializa o Valor das dezenas 
tmp(26)  := STA & "000000100";      -- Inicializa o Valor das centenas 
tmp(27)  := STA & "000000101";      -- Inicializa o Valor das unidade de milhares 
tmp(28)  := STA & "000000110";      -- Inicializa o Valor das dezenas de milhares 
tmp(29)  := STA & "000000111";      -- Inicializa o Valor das centenas de milhares 
tmp(30)  := LDI & "000001010";  
tmp(31)  := STA & "000001101";      -- Limite para o Valor das unidades 
tmp(32)  := STA & "000001110";      -- Limite para o Valor das dezenas 
tmp(33)  := STA & "000001111";      -- Limite para o Valor das centenas 
tmp(34)  := STA & "000010000";      -- Limite para o Valor das unidade de milhares 
tmp(35)  := STA & "000010001";      -- Limite para o Valor das dezenas de milhares 
tmp(36)  := STA & "000010010";      -- Limite para o Valor das centenas de milhares 
tmp(37)  := LDI & "000000000";  
tmp(38)  := STA & "000001000";      -- Limpa a Flag de limite 
tmp(39)  := STA & "000001100";      -- Limpa a Flag de Overflow(carry_out) 
tmp(40)  := RET & "000000000";



-- LOOP_INICIO


tmp(41)  := LDA & "101100000";      -- Carrega o acumulador com a leitura do botão KEY0 
tmp(42)  := ANDOP & "000000001";  
tmp(43)  := CEQ & "000000001";      -- Compara a leitura de KEY0 com a constante 1 MEM[1] 
tmp(44)  := JEQ & "000111000";  
tmp(45)  := JSR & "001111110";  
tmp(46)  := LDA & "101100001";      -- Carrega o acumulador com a leitura do botão KEY1 
tmp(47)  := ANDOP & "000000001";      -- Aplica mascara 
tmp(48)  := CEQ & "000000001";      -- Compara a leitura de KEY1 com a constante 1 MEM[1] 
tmp(49)  := JEQ & "000111100";  
tmp(50)  := JSR & "010010111";  
tmp(51)  := LDA & "101100100";      -- Carrega o acumulador com a leitura do botão FPGA_RESET 
tmp(52)  := ANDOP & "000000001";      -- Aplica mascara 
tmp(53)  := CEQ & "000000001";      -- Compara a leitura de FPGA_RESET com a constante 1 MEM[1] 
tmp(54)  := JEQ & "000111010";  
tmp(55)  := JMP & "000101001";  


-- INCREMENTA_CONTADOR_CHECKPOINT:


tmp(56)  := JSR & "000111110";  
tmp(57)  := JMP & "000101101";


-- REINICIA_CONTADOR_CHECKPOINT:


tmp(58)  := JSR & "010001011";  
tmp(59)  := JMP & "000110111"; 

-- LIMITE_INCREMENTO_CHECKPOINT:


tmp(60)  := JSR & "010101101";  
tmp(61)  := JMP & "000110010";


-- INCREMENTA_CONTADOR


tmp(62)  := STA & "111111111";  
tmp(63)  := LDA & "000001100";  
tmp(64)  := CEQ & "000000001";  
tmp(65)  := JEQ & "001111101";      -- Verifica o carry_out 
tmp(66)  := LDA & "000001000";  
tmp(67)  := CEQ & "000000001";  
tmp(68)  := JEQ & "001111101";      -- Verifica o carry_out 
tmp(69)  := LDA & "000000010";  
tmp(70)  := SOMA & "000000001";  
tmp(71)  := CEQ & "000001010";  
tmp(72)  := JEQ & "001001011";      -- Verifica as unidades 
tmp(73)  := STA & "000000010";  
tmp(74)  := JMP & "001111101";  
tmp(75)  := LDI & "000000000";  
tmp(76)  := STA & "000000010";  
tmp(77)  := LDA & "000000011";  
tmp(78)  := SOMA & "000000001";  
tmp(79)  := CEQ & "000001010";  
tmp(80)  := JEQ & "001010011";      -- Verifica as dezenas 
tmp(81)  := STA & "000000011";  
tmp(82)  := JMP & "001111101";  
tmp(83)  := LDI & "000000000";  
tmp(84)  := STA & "000000011";  
tmp(85)  := LDA & "000000100";  
tmp(86)  := SOMA & "000000001";  
tmp(87)  := CEQ & "000001010";  
tmp(88)  := JEQ & "001011011";      -- Verifica as centenas 
tmp(89)  := STA & "000000100";  
tmp(90)  := JMP & "001111101";  
tmp(91)  := LDI & "000000000";  
tmp(92)  := STA & "000000100";  
tmp(93)  := LDA & "000000101";  
tmp(94)  := SOMA & "000000001";  
tmp(95)  := CEQ & "000001010";  
tmp(96)  := JEQ & "001100011";      -- Verifica as Unidade de Milhares 
tmp(97)  := STA & "000000101";  
tmp(98)  := JMP & "001111101";  
tmp(99)  := LDI & "000000000";  
tmp(100)  := STA & "000000101";  
tmp(101)  := LDA & "000000110";  
tmp(102)  := SOMA & "000000001";  
tmp(103)  := CEQ & "000001010";  
tmp(104)  := JEQ & "001101011";      -- Verifica as dezenas de Milhares 
tmp(105)  := STA & "000000110";  
tmp(106)  := JMP & "001111101";  
tmp(107)  := LDI & "000000000";  
tmp(108)  := STA & "000000110";  
tmp(109)  := LDA & "000000111";  
tmp(110)  := SOMA & "000000001";  
tmp(111)  := CEQ & "000001010";  
tmp(112)  := JEQ & "001110011";      -- Verifica as centenas de Milhares 
tmp(113)  := STA & "000000111";  
tmp(114)  := JMP & "001111101";  
tmp(115)  := LDI & "000000001";  
tmp(116)  := STA & "100000010";      -- Ativa o LED de OVERLFOW 
tmp(117)  := STA & "000001100";      -- Ativa a Flag de OVERFLOW 
tmp(118)  := LDI & "000001001";  
tmp(119)  := STA & "000000010";      -- Mantem os valore das unidades em 9 
tmp(120)  := STA & "000000011";      -- Mantem os valore das dezenas em 9 
tmp(121)  := STA & "000000100";      -- Mantem os valore das centenas em 9 
tmp(122)  := STA & "000000101";      -- Mantem os valore das unidades de milhares em 9 
tmp(123)  := STA & "000000110";      -- Mantem os valore das dezenas de milhares em 9 
tmp(124)  := STA & "000000111";      -- Mantem os valore das centenas de milhares em 9 
tmp(125)  := RET & "000000000";  

-- ESCREVE_DISPLAY


tmp(126)  := LDA & "000000010";  
tmp(127)  := STA & "100100000";      -- Escreve o valor das unidades 
tmp(128)  := LDA & "000000011";  
tmp(129)  := STA & "100100001";      -- Escreve o valor das dezenas 
tmp(130)  := LDA & "000000100";  
tmp(131)  := STA & "100100010";      -- Escreve o valor das centenas 
tmp(132)  := LDA & "000000101";  
tmp(133)  := STA & "100100011";      -- Escreve o valor das unidades de milhares 
tmp(134)  := LDA & "000000110";  
tmp(135)  := STA & "100100100";      -- Escreve o valor das dezenas de milhares 
tmp(136)  := LDA & "000000111";  
tmp(137)  := STA & "100100101";      -- Escreve o valor das centenas de milhares 
tmp(138)  := RET & "000000000";  

-- REINICIA_CONTADOR


tmp(139)  := LDI & "000000000";  
tmp(140)  := STA & "000000010";      -- Reinicia o Valor das unidades 
tmp(141)  := STA & "000000011";      -- Reinicia o Valor das dezenas 
tmp(142)  := STA & "000000100";      -- Reinicia o Valor das centenas 
tmp(143)  := STA & "000000101";      -- Reinicia o Valor das unidade de milhares 
tmp(144)  := STA & "000000110";      -- Reinicia o Valor das dezenas de milhares 
tmp(145)  := STA & "000000111";      -- Reinicia o Valor das centenas de milhares 
tmp(146)  := STA & "000001000";      -- Reinicia a Flag de Limite 
tmp(147)  := STA & "000001100";      -- Reinicia a Falg de Overflow(carry_out) 
tmp(148)  := STA & "100000001";      -- Apaga o Led de Limite 
tmp(149)  := STA & "100000010";      -- Apaga o Led de Overflow 
tmp(150)  := RET & "000000000"; 


-- VERIFICA_LIMITE


tmp(151)  := LDA & "000000010";  
tmp(152)  := CLT & "000001101";  
tmp(153)  := JLT & "010101100";      -- Verifica as unidades 
tmp(154)  := LDA & "000000011";  
tmp(155)  := CLT & "000001110";  
tmp(156)  := JLT & "010101100";      -- Verifica as dezenas 
tmp(157)  := LDA & "000000100";  
tmp(158)  := CLT & "000001111";  
tmp(159)  := JLT & "010101100";      -- Verifica as centenas 
tmp(160)  := LDA & "000000101";  
tmp(161)  := CLT & "000010000";  
tmp(162)  := JLT & "010101100";      -- Verifica as unidades de milhares 
tmp(163)  := LDA & "000000110";  
tmp(164)  := CLT & "000010001";  
tmp(165)  := JLT & "010101100";      -- Verifica as dezenas de milhares 
tmp(166)  := LDA & "000000111";  
tmp(167)  := CLT & "000010010";  
tmp(168)  := JLT & "010101100";      -- Verifica as centenas de milhares 
tmp(169)  := LDI & "000000001";  
tmp(170)  := STA & "000001000";      -- Flag de Limite 
tmp(171)  := STA & "100000001";      -- LED de Limite 
tmp(172)  := RET & "000000000";


-- LIMITE_INCREMENTO


tmp(173)  := STA & "111111110";      -- Limpa a leitura do KEY1 
tmp(174)  := LDI & "000000001";  
tmp(175)  := STA & "100000000";      -- Liga o LEDR0 
tmp(176)  := LDA & "101100001";      -- Carrega o acumulador com a leitura do botão KEY1 
tmp(177)  := ANDOP & "000000001";      -- Aplica mascara 
tmp(178)  := CEQ & "000000001";      -- Compara a leitura de KEY1 com a constante 1 MEM[1] 
tmp(179)  := JEQ & "010111100";  
tmp(180)  := LDA & "101000000";      -- Leitura SW 
tmp(181)  := ANDOP & "000001011";      -- Aplica mascara SW0~SW3 
tmp(182)  := CLT & "000001010";  
tmp(183)  := JLT & "010111010";  
tmp(184)  := LDI & "000001001";  
tmp(185)  := STA & "100100000";  
tmp(186)  := STA & "100100000";  
tmp(187)  := JMP & "010110000";  
tmp(188)  := LDA & "101000000";      -- Leitura SW 
tmp(189)  := ANDOP & "000001011";      -- Aplica mascara SW0~SW3 
tmp(190)  := CLT & "000001010";  
tmp(191)  := JLT & "011000010";  
tmp(192)  := LDI & "000001001";  
tmp(193)  := STA & "000001101";      -- Guarda o Limite das unidades 
tmp(194)  := STA & "000001101";  
tmp(195)  := STA & "111111110";      -- Limpa a leitura do KEY1 
tmp(196)  := LDI & "000000010";  
tmp(197)  := STA & "100000000";      -- Liga o LEDR1 
tmp(198)  := LDA & "101100001";      -- Carrega o acumulador com a leitura do botão KEY1 
tmp(199)  := ANDOP & "000000001";      -- Aplica mascara 
tmp(200)  := CEQ & "000000001";      -- Compara a leitura de KEY1 com a constante 1 MEM[1] 
tmp(201)  := JEQ & "011010010";  
tmp(202)  := LDA & "101000000";      -- Leitura SW 
tmp(203)  := ANDOP & "000001011";      -- Aplica mascara SW0~SW3 
tmp(204)  := CLT & "000001010";  
tmp(205)  := JLT & "011010000";  
tmp(206)  := LDI & "000001001";  
tmp(207)  := STA & "100100001";  
tmp(208)  := STA & "100100001";  
tmp(209)  := JMP & "011000110";  
tmp(210)  := LDA & "101000000";      -- Leitura SW 
tmp(211)  := ANDOP & "000001011";      -- Aplica mascara SW0~SW3 
tmp(212)  := CLT & "000001010";  
tmp(213)  := JLT & "011011000";  
tmp(214)  := LDI & "000001001";  
tmp(215)  := STA & "000001110";      -- Guarda o Limite das dezenas 
tmp(216)  := STA & "000001110";  
tmp(217)  := STA & "111111110";      -- Limpa a leitura do KEY1 
tmp(218)  := LDI & "000000100";  
tmp(219)  := STA & "100000000";      -- Liga o LEDR2 
tmp(220)  := LDA & "101100001";      -- Carrega o acumulador com a leitura do botão KEY1 
tmp(221)  := ANDOP & "000000001";      -- Aplica mascara 
tmp(222)  := CEQ & "000000001";      -- Compara a leitura de KEY1 com a constante 1 MEM[1] 
tmp(223)  := JEQ & "011101000";  
tmp(224)  := LDA & "101000000";      -- Leitura SW 
tmp(225)  := ANDOP & "000001011";      -- Aplica mascara SW0~SW3 
tmp(226)  := CLT & "000001010";  
tmp(227)  := JLT & "011100110";  
tmp(228)  := LDI & "000001001";  
tmp(229)  := STA & "100100010";  
tmp(230)  := STA & "100100010";  
tmp(231)  := JMP & "011011100";  
tmp(232)  := LDA & "101000000";      -- Leitura SW 
tmp(233)  := ANDOP & "000001011";      -- Aplica mascara SW0~SW3 
tmp(234)  := CLT & "000001010";  
tmp(235)  := JLT & "011101110";  
tmp(236)  := LDI & "000001001";  
tmp(237)  := STA & "000001111";      -- Guarda o Limite das centenas 
tmp(238)  := STA & "000001111";  
tmp(239)  := STA & "111111110";      -- Limpa a leitura do KEY1 
tmp(240)  := LDI & "000001000";  
tmp(241)  := STA & "100000000";      -- Liga o LEDR3 
tmp(242)  := LDA & "101100001";      -- Carrega o acumulador com a leitura do botão KEY1 
tmp(243)  := ANDOP & "000000001";      -- Aplica mascara 
tmp(244)  := CEQ & "000000001";      -- Compara a leitura de KEY1 com a constante 1 MEM[1] 
tmp(245)  := JEQ & "011111110";  
tmp(246)  := LDA & "101000000";      -- Leitura SW 
tmp(247)  := ANDOP & "000001011";      -- Aplica mascara SW0~SW3 
tmp(248)  := CLT & "000001010";  
tmp(249)  := JLT & "011111100";  
tmp(250)  := LDI & "000001001";  
tmp(251)  := STA & "100100011";  
tmp(252)  := STA & "100100011";  
tmp(253)  := JMP & "011110010";  
tmp(254)  := LDA & "101000000";      -- Leitura SW 
tmp(255)  := ANDOP & "000001011";      -- Aplica mascara SW0~SW3 
tmp(256)  := CLT & "000001010";  
tmp(257)  := JLT & "100000100";  
tmp(258)  := LDI & "000001001";  
tmp(259)  := STA & "000010000";      -- Guarda o Limite das unidade de milhares 
tmp(260)  := STA & "000010000";  
tmp(261)  := STA & "111111110";      -- Limpa a leitura do KEY1 
tmp(262)  := LDI & "000010000";  
tmp(263)  := STA & "100000000";      -- Liga o LEDR4 
tmp(264)  := LDA & "101100001";      -- Carrega o acumulador com a leitura do botão KEY1 
tmp(265)  := ANDOP & "000000001";      -- Aplica mascara 
tmp(266)  := CEQ & "000000001";      -- Compara a leitura de KEY1 com a constante 1 MEM[1] 
tmp(267)  := JEQ & "100010100";  
tmp(268)  := LDA & "101000000";      -- Leitura SW 
tmp(269)  := ANDOP & "000001011";      -- Aplica mascara SW0~SW3 
tmp(270)  := CLT & "000001010";  
tmp(271)  := JLT & "100010010";  
tmp(272)  := LDI & "000001001";  
tmp(273)  := STA & "100100100";  
tmp(274)  := STA & "100100100";  
tmp(275)  := JMP & "100001000";  
tmp(276)  := LDA & "101000000";      -- Leitura SW 
tmp(277)  := ANDOP & "000001011";      -- Aplica mascara SW0~SW3 
tmp(278)  := CLT & "000001010";  
tmp(279)  := JLT & "100011010";  
tmp(280)  := LDI & "000001001";  
tmp(281)  := STA & "000010001";      -- Guarda o Limite das dezenas de milhares 
tmp(282)  := STA & "000010001";  
tmp(283)  := STA & "111111110";      -- Limpa a leitura do KEY1 
tmp(284)  := LDI & "000100000";  
tmp(285)  := STA & "100000000";      -- Liga o LEDR5 
tmp(286)  := LDA & "101100001";      -- Carrega o acumulador com a leitura do botão KEY1 
tmp(287)  := ANDOP & "000000001";      -- Aplica mascara 
tmp(288)  := CEQ & "000000001";      -- Compara a leitura de KEY1 com a constante 1 MEM[1] 
tmp(289)  := JEQ & "100101010";  
tmp(290)  := LDA & "101000000";      -- Leitura SW 
tmp(291)  := ANDOP & "000001011";      -- Aplica mascara SW0~SW3 
tmp(292)  := CLT & "000001010";  
tmp(293)  := JLT & "100101000";  
tmp(294)  := LDI & "000001001";  
tmp(295)  := STA & "100100101";  
tmp(296)  := STA & "100100101";  
tmp(297)  := JMP & "100011110";  
tmp(298)  := LDA & "101000000";      -- Leitura SW 
tmp(299)  := ANDOP & "000001011";      -- Aplica mascara SW0~SW3 
tmp(300)  := CLT & "000001010";  
tmp(301)  := JLT & "100110000";  
tmp(302)  := LDI & "000001001";  
tmp(303)  := STA & "000010010";      -- Guarda o Limite das centenas de milhares 
tmp(304)  := STA & "000010010";  
tmp(305)  := LDI & "000000000";  
tmp(306)  := STA & "100100000";      -- Limpa o HEX0 
tmp(307)  := STA & "100100001";      -- Limpa o HEX1 
tmp(308)  := STA & "100100001";      -- Limpa o HEX2 
tmp(309)  := STA & "100100010";      -- Limpa o HEX3 
tmp(310)  := STA & "100100011";      -- Limpa o HEX4 
tmp(311)  := STA & "100000000";      -- Limpa o HEX5 
tmp(312)  := STA & "111111110";      -- Limpa a leitura do KEY1 
tmp(313)  := RET & "000000000";  
return tmp;