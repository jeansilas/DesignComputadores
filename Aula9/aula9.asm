tmp(0)  := JSR & "000000010";
tmp(1)  := JMP & "000100100";
tmp(2)  := LDI & "000000000";
tmp(3)  := STA & "000000000";
tmp(4)  := LDI & "000000001";
tmp(5)  := STA & "000000001";
tmp(6)  := LDI & "000001010";
tmp(7)  := STA & "000001010";
tmp(8)  := LDI & "000010000";
tmp(9)  := LDA & "000000000";
tmp(10)  := STA & "100100000";
tmp(11)  := STA & "100100001";
tmp(12)  := STA & "100100010";
tmp(13)  := STA & "100100011";
tmp(14)  := STA & "100100100";
tmp(15)  := STA & "100100101";
tmp(16)  := STA & "100000000";
tmp(17)  := STA & "100000001";
tmp(18)  := STA & "100000010";
tmp(19)  := STA & "000000010";
tmp(20)  := STA & "000000011";
tmp(21)  := STA & "000000100";
tmp(22)  := STA & "000000101";
tmp(23)  := STA & "000000110";
tmp(24)  := STA & "000000111";
tmp(25)  := LDI & "000001001";
tmp(26)  := STA & "000001101";
tmp(27)  := STA & "000001110";
tmp(28)  := STA & "000001111";
tmp(29)  := LDI & "000000000";
tmp(30)  := STA & "000010000";
tmp(31)  := STA & "000010001";
tmp(32)  := STA & "000010010";
tmp(33)  := STA & "000001000";
tmp(34)  := STA & "000001100";
tmp(35)  := RET & "000000000";
tmp(36)  := LDA & "101100011";
tmp(37)  := CEQ & "000000001";
tmp(38)  := JEQ & "000110100";
tmp(39)  := JSR & "010101111";
tmp(40)  := LDA & "101100001";
tmp(41)  := ANDOP & "000000001";
tmp(42)  := CEQ & "000000001";
tmp(43)  := JEQ & "000110010";
tmp(44)  := JSR & "001101000";
tmp(45)  := LDA & "101100100";
tmp(46)  := ANDOP & "000000001";
tmp(47)  := CEQ & "000000001";
tmp(48)  := JEQ & "000110110";
tmp(49)  := JMP & "000100100";
tmp(50)  := JSR & "010001010";
tmp(51)  := JMP & "000101100";
tmp(52)  := JSR & "000111000";
tmp(53)  := JMP & "000100111";
tmp(54)  := JSR & "001111110";
tmp(55)  := JMP & "000110001";
tmp(56)  := STA & "111111111";
tmp(57)  := LDA & "000001100";
tmp(58)  := CEQ & "000000001";
tmp(59)  := RET & "000000000";
tmp(60)  := LDA & "000000001";
tmp(61)  := SOMA & "000000010";
tmp(62)  := CEQ & "000001010";
tmp(63)  := JEQ & "001000001";
tmp(64)  := STA & "000000010";
tmp(65)  := LDA & "000000000";
tmp(66)  := STA & "000000010";
tmp(67)  := LDA & "000000001";
tmp(68)  := SOMA & "000000011";
tmp(69)  := CEQ & "000001010";
tmp(70)  := JEQ & "001001000";
tmp(71)  := STA & "000000011";
tmp(72)  := LDA & "000000000";
tmp(73)  := STA & "000000011";
tmp(74)  := LDA & "000000001";
tmp(75)  := SOMA & "000000100";
tmp(76)  := CEQ & "000001010";
tmp(77)  := JEQ & "001001111";
tmp(78)  := STA & "000000100";
tmp(79)  := LDA & "000000000";
tmp(80)  := STA & "000000100";
tmp(81)  := LDA & "000000001";
tmp(82)  := SOMA & "000000101";
tmp(83)  := CEQ & "000001010";
tmp(84)  := JEQ & "001010110";
tmp(85)  := STA & "000000101";
tmp(86)  := LDA & "000000000";
tmp(87)  := STA & "000000101";
tmp(88)  := LDA & "000000001";
tmp(89)  := SOMA & "000000110";
tmp(90)  := CEQ & "000001010";
tmp(91)  := JEQ & "001011101";
tmp(92)  := STA & "000000110";
tmp(93)  := LDA & "000000000";
tmp(94)  := STA & "000000110";
tmp(95)  := LDA & "000000001";
tmp(96)  := SOMA & "000000111";
tmp(97)  := CEQ & "000001010";
tmp(98)  := JEQ & "001100100";
tmp(99)  := STA & "000000111";
tmp(100)  := LDI & "000000001";
tmp(101)  := STA & "100000010";
tmp(102)  := STA & "000001100";
tmp(103)  := RET & "000000000";
tmp(104)  := LDA & "000000010";
tmp(105)  := CLT & "000001101";
tmp(106)  := JLT & "001111101";
tmp(107)  := LDA & "000000011";
tmp(108)  := CLT & "000001110";
tmp(109)  := JLT & "001111101";
tmp(110)  := LDA & "000000100";
tmp(111)  := CLT & "000001111";
tmp(112)  := JLT & "001111101";
tmp(113)  := LDA & "000000101";
tmp(114)  := CLT & "000010000";
tmp(115)  := JLT & "001111101";
tmp(116)  := LDA & "000000110";
tmp(117)  := CLT & "000010001";
tmp(118)  := JLT & "001111101";
tmp(119)  := LDA & "000000111";
tmp(120)  := CLT & "000010010";
tmp(121)  := JLT & "001111101";
tmp(122)  := LDI & "000000001";
tmp(123)  := STA & "000001000";
tmp(124)  := STA & "100000001";
tmp(125)  := RET & "000000000";
tmp(126)  := LDI & "000000000";
tmp(127)  := STA & "000000010";
tmp(128)  := STA & "000000011";
tmp(129)  := STA & "000000100";
tmp(130)  := STA & "000000101";
tmp(131)  := STA & "000000110";
tmp(132)  := STA & "000000111";
tmp(133)  := STA & "000001000";
tmp(134)  := STA & "000001100";
tmp(135)  := STA & "100000001";
tmp(136)  := STA & "100000010";
tmp(137)  := RET & "000000000";
tmp(138)  := STA & "111111110";
tmp(139)  := LDI & "000000001";
tmp(140)  := STA & "100000000";
tmp(141)  := LDA & "101000000";
tmp(142)  := ANDOP & "000001011";
tmp(143)  := STA & "000001101";
tmp(144)  := STA & "111111110";
tmp(145)  := LDI & "000000010";
tmp(146)  := STA & "100000000";
tmp(147)  := LDA & "101000000";
tmp(148)  := ANDOP & "000001011";
tmp(149)  := STA & "000001110";
tmp(150)  := STA & "111111110";
tmp(151)  := LDI & "000000100";
tmp(152)  := STA & "100000000";
tmp(153)  := LDA & "101000000";
tmp(154)  := ANDOP & "000001011";
tmp(155)  := STA & "000001111";
tmp(156)  := STA & "111111110";
tmp(157)  := LDI & "000001000";
tmp(158)  := STA & "100000000";
tmp(159)  := LDA & "101000000";
tmp(160)  := ANDOP & "000001011";
tmp(161)  := STA & "000010000";
tmp(162)  := STA & "111111110";
tmp(163)  := LDI & "000010000";
tmp(164)  := STA & "100000000";
tmp(165)  := LDA & "101000000";
tmp(166)  := ANDOP & "000001011";
tmp(167)  := STA & "000010001";
tmp(168)  := STA & "111111110";
tmp(169)  := LDI & "000100000";
tmp(170)  := STA & "100000000";
tmp(171)  := LDA & "101000000";
tmp(172)  := ANDOP & "000001011";
tmp(173)  := STA & "000010010";
tmp(174)  := RET & "000000000";
tmp(175)  := LDA & "000000010";
tmp(176)  := STA & "100100000";
tmp(177)  := LDA & "000000011";
tmp(178)  := STA & "100100001";
tmp(179)  := LDA & "000000100";
tmp(180)  := STA & "100100010";
tmp(181)  := LDA & "000000101";
tmp(182)  := STA & "100100011";
tmp(183)  := LDA & "000000110";
tmp(184)  := STA & "100100100";
tmp(185)  := LDA & "000000111";
tmp(186)  := STA & "100100101";
tmp(187)  := RET & "000000000";
return tmp;