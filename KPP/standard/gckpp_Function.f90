! ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
! 
! The ODE Function of Chemical Model File
! 
! Generated by KPP-2.2 symbolic chemistry Kinetics PreProcessor
!       (http://www.cs.vt.edu/~asandu/Software/KPP)
! KPP is distributed under GPL, the general public licence
!       (http://www.gnu.org/copyleft/gpl.html)
! (C) 1995-1997, V. Damian & A. Sandu, CGRER, Univ. Iowa
! (C) 1997-2005, A. Sandu, Michigan Tech, Virginia Tech
!     With important contributions from:
!        M. Damian, Villanova University, USA
!        R. Sander, Max-Planck Institute for Chemistry, Mainz, Germany
! 
! File                 : gckpp_Function.f90
! Time                 : Wed Sep 15 15:20:39 2010
! Working directory    : /mnt/lstr04/srv/home/c/ccarouge/KPP/geoschem_kppfiles/v8-03-02/standard
! Equation file        : gckpp.kpp
! Output root filename : gckpp
! 
! ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~



MODULE gckpp_Function

  USE gckpp_Parameters
  IMPLICIT NONE

! A - Rate for each equation
  REAL(kind=dp) :: A(NREACT)

!$OMP THREADPRIVATE( A )

CONTAINS


! ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
! 
! Fun - time derivatives of variables - Agregate form
!   Arguments :
!      V         - Concentrations of variable species (local)
!      F         - Concentrations of fixed species (local)
!      RCT       - Rate constants (local)
!      Vdot      - Time derivative of variable species concentrations
! 
! ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

SUBROUTINE Fun ( V, F, RCT, Vdot )

! V - Concentrations of variable species (local)
  REAL(kind=dp) :: V(NVAR)
! F - Concentrations of fixed species (local)
  REAL(kind=dp) :: F(NFIX)
! RCT - Rate constants (local)
  REAL(kind=dp) :: RCT(NREACT)
! Vdot - Time derivative of variable species concentrations
  REAL(kind=dp) :: Vdot(NVAR)


! Computation of equation rates
  A(1) = RCT(1)*V(85)*V(89)
  A(2) = RCT(2)*V(89)*V(90)
  A(3) = RCT(3)*V(84)*V(89)
  A(4) = RCT(4)*V(82)*V(89)
  A(5) = RCT(5)*V(86)*V(89)
  A(6) = RCT(6)*V(90)*V(90)
  A(7) = RCT(7)*V(90)*V(90)
  A(8) = RCT(8)*V(84)*V(90)
  A(9) = RCT(9)*V(17)*V(90)
  A(10) = RCT(10)*V(84)*V(85)
  A(11) = RCT(11)*V(84)*V(84)
  A(12) = RCT(12)*V(90)*F(9)
  A(13) = RCT(13)*V(47)*V(90)
  A(14) = RCT(14)*V(90)*F(2)
  A(15) = RCT(15)*V(85)*V(86)
  A(16) = RCT(16)*V(84)*V(86)
  A(17) = RCT(17)*V(86)*V(86)
  A(18) = RCT(18)*V(86)*V(86)
  A(19) = RCT(19)*V(28)*V(90)
  A(20) = RCT(20)*V(28)*V(90)
  A(21) = RCT(21)*V(69)*V(90)
  A(22) = RCT(22)*V(82)*V(90)
  A(23) = RCT(23)*V(54)*V(90)
  A(24) = RCT(24)*V(85)*V(90)
  A(25) = RCT(25)*V(24)*V(90)
  A(26) = RCT(26)*V(82)*V(84)
  A(27) = RCT(27)*V(29)
  A(28) = RCT(28)*V(29)*V(90)
  A(29) = RCT(29)*V(84)*V(87)
  A(30) = RCT(30)*V(85)*V(87)
  A(31) = RCT(31)*V(87)*V(90)
  A(32) = RCT(32)*V(82)*V(87)
  A(33) = RCT(33)*V(25)
  A(34) = RCT(34)*V(90)*F(11)
  A(35) = RCT(35)*V(90)*F(13)
  A(36) = RCT(36)*V(82)*V(87)
  A(37) = RCT(37)*V(69)*V(87)
  A(38) = RCT(38)*V(71)*V(90)
  A(39) = RCT(39)*V(71)*V(87)
  A(40) = RCT(40)*V(82)*V(83)
  A(41) = RCT(41)*V(21)
  A(42) = RCT(42)*V(83)*V(85)
  A(43) = RCT(43)*V(23)*V(90)
  A(44) = RCT(44)*V(74)*V(85)
  A(45) = RCT(45)*V(16)*V(90)
  A(46) = RCT(46)*V(16)*V(90)
  A(47) = RCT(47)*V(52)*V(85)
  A(48) = RCT(48)*V(70)*V(85)
  A(49) = RCT(49)*V(22)*V(90)
  A(50) = RCT(50)*V(72)*V(85)
  A(51) = RCT(51)*V(72)*V(85)
  A(52) = RCT(52)*V(55)*V(85)
  A(53) = RCT(53)*V(62)*V(85)
  A(54) = RCT(54)*V(60)*V(85)
  A(55) = RCT(55)*V(79)*V(85)
  A(56) = RCT(56)*V(57)*V(85)
  A(57) = RCT(57)*V(57)*V(85)
  A(58) = RCT(58)*V(66)*V(85)
  A(59) = RCT(59)*V(65)*V(85)
  A(60) = RCT(60)*V(64)*V(85)
  A(61) = RCT(61)*V(64)*V(85)
  A(62) = RCT(62)*V(59)*V(85)
  A(63) = RCT(63)*V(59)*V(85)
  A(64) = RCT(64)*V(51)*V(85)
  A(65) = RCT(65)*V(56)*V(85)
  A(66) = RCT(66)*V(53)*V(85)
  A(67) = RCT(67)*V(67)*V(85)
  A(68) = RCT(68)*V(63)*V(85)
  A(69) = RCT(69)*V(22)*V(87)
  A(70) = RCT(70)*V(73)*V(90)
  A(71) = RCT(71)*V(90)*F(1)
  A(72) = RCT(72)*V(68)*V(90)
  A(73) = RCT(73)*V(81)*V(82)
  A(74) = RCT(74)*V(18)
  A(75) = RCT(75)*V(82)*V(88)
  A(76) = RCT(76)*V(19)
  A(77) = RCT(77)*V(78)*V(82)
  A(78) = RCT(78)*V(44)
  A(79) = RCT(79)*V(82)*F(5)
  A(80) = RCT(80)*F(7)
  A(81) = RCT(81)*V(81)*V(85)
  A(82) = RCT(82)*V(85)*V(88)
  A(83) = RCT(83)*V(78)*V(85)
  A(84) = RCT(84)*V(85)*F(5)
  A(85) = RCT(85)*V(68)*V(87)
  A(86) = RCT(86)*V(49)*V(90)
  A(87) = RCT(87)*V(49)*V(90)
  A(88) = RCT(88)*V(52)*V(86)
  A(89) = RCT(89)*V(70)*V(86)
  A(90) = RCT(90)*V(72)*V(84)
  A(91) = RCT(91)*V(55)*V(84)
  A(92) = RCT(92)*V(62)*V(84)
  A(93) = RCT(93)*V(60)*V(84)
  A(94) = RCT(94)*V(79)*V(84)
  A(95) = RCT(95)*V(57)*V(84)
  A(96) = RCT(96)*V(66)*V(84)
  A(97) = RCT(97)*V(65)*V(84)
  A(98) = RCT(98)*V(64)*V(84)
  A(99) = RCT(99)*V(59)*V(84)
  A(100) = RCT(100)*V(51)*V(84)
  A(101) = RCT(101)*V(56)*V(84)
  A(102) = RCT(102)*V(53)*V(84)
  A(103) = RCT(103)*V(67)*V(84)
  A(104) = RCT(104)*V(63)*V(84)
  A(105) = RCT(105)*V(76)*V(90)
  A(106) = RCT(106)*V(74)*V(86)
  A(107) = RCT(107)*V(76)*V(87)
  A(108) = RCT(108)*V(72)*V(86)
  A(109) = RCT(109)*V(55)*V(86)
  A(110) = RCT(110)*V(62)*V(86)
  A(111) = RCT(111)*V(60)*V(86)
  A(112) = RCT(112)*V(79)*V(86)
  A(113) = RCT(113)*V(57)*V(86)
  A(114) = RCT(114)*V(66)*V(86)
  A(115) = RCT(115)*V(65)*V(86)
  A(116) = RCT(116)*V(64)*V(86)
  A(117) = RCT(117)*V(59)*V(86)
  A(118) = RCT(118)*V(51)*V(86)
  A(119) = RCT(119)*V(56)*V(86)
  A(120) = RCT(120)*V(53)*V(86)
  A(121) = RCT(121)*V(67)*V(86)
  A(122) = RCT(122)*V(63)*V(86)
  A(123) = RCT(123)*V(90)*F(4)
  A(124) = RCT(124)*V(90)*F(16)
  A(125) = RCT(125)*V(74)*V(74)
  A(126) = RCT(126)*V(74)*V(74)
  A(127) = RCT(127)*V(74)*V(84)
  A(128) = RCT(128)*V(52)*V(84)
  A(129) = RCT(129)*V(70)*V(84)
  A(130) = RCT(130)*V(83)*V(84)
  A(131) = RCT(131)*V(81)*V(84)
  A(132) = RCT(132)*V(84)*V(88)
  A(133) = RCT(133)*V(78)*V(84)
  A(134) = RCT(134)*V(84)*F(5)
  A(135) = RCT(135)*V(48)*V(90)
  A(136) = RCT(136)*V(48)*V(89)
  A(137) = RCT(137)*V(44)*V(90)
  A(138) = RCT(138)*V(44)*V(89)
  A(139) = RCT(139)*V(50)*V(90)
  A(140) = RCT(140)*V(48)*V(87)
  A(141) = RCT(141)*V(90)*F(8)
  A(142) = RCT(142)*V(75)*V(90)
  A(143) = RCT(143)*V(87)*F(8)
  A(144) = RCT(144)*V(75)*V(87)
  A(145) = RCT(145)*V(46)*V(90)
  A(146) = RCT(146)*V(77)*V(90)
  A(147) = RCT(147)*V(80)*V(90)
  A(148) = RCT(148)*V(61)*V(90)
  A(149) = RCT(149)*V(52)*V(83)
  A(150) = RCT(150)*V(70)*V(83)
  A(151) = RCT(151)*V(52)*V(83)
  A(152) = RCT(152)*V(70)*V(83)
  A(153) = RCT(153)*V(46)*V(89)
  A(154) = RCT(154)*V(77)*V(89)
  A(155) = RCT(155)*V(80)*V(89)
  A(156) = RCT(156)*V(46)*V(87)
  A(157) = RCT(157)*V(80)*V(87)
  A(158) = RCT(158)*V(80)*V(87)
  A(159) = RCT(159)*V(81)*V(86)
  A(160) = RCT(160)*V(86)*V(88)
  A(161) = RCT(161)*V(78)*V(86)
  A(162) = RCT(162)*V(86)*F(5)
  A(163) = RCT(163)*V(81)*V(86)
  A(164) = RCT(164)*V(86)*V(88)
  A(165) = RCT(165)*V(78)*V(86)
  A(166) = RCT(166)*V(86)*F(5)
  A(167) = RCT(167)*V(39)*V(90)
  A(168) = RCT(168)*V(38)*V(90)
  A(169) = RCT(169)*V(35)*V(90)
  A(170) = RCT(170)*V(31)*V(90)
  A(171) = RCT(171)*V(32)*V(90)
  A(172) = RCT(172)*V(30)*V(90)
  A(173) = RCT(173)*V(33)*V(90)
  A(174) = RCT(174)*V(37)*V(90)
  A(175) = RCT(175)*V(36)*V(90)
  A(176) = RCT(176)*V(90)*F(6)
  A(177) = RCT(177)*V(45)*V(90)
  A(178) = RCT(178)*V(41)*V(90)
  A(179) = RCT(179)*V(43)*V(90)
  A(180) = RCT(180)*V(42)*V(90)
  A(181) = RCT(181)*V(40)*V(90)
  A(182) = RCT(182)*V(26)*V(90)
  A(183) = RCT(183)*V(27)*V(90)
  A(184) = RCT(184)*V(23)*V(87)
  A(185) = RCT(185)*V(90)*F(12)
  A(186) = RCT(186)*V(58)*V(90)
  A(187) = RCT(187)*V(58)*V(89)
  A(188) = RCT(188)*V(83)*V(83)
  A(189) = RCT(189)*V(83)*V(86)
  A(190) = RCT(190)*V(83)*V(86)
  A(191) = RCT(191)*V(72)*V(83)
  A(192) = RCT(192)*V(62)*V(83)
  A(193) = RCT(193)*V(60)*V(83)
  A(194) = RCT(194)*V(79)*V(83)
  A(195) = RCT(195)*V(57)*V(83)
  A(196) = RCT(196)*V(66)*V(83)
  A(197) = RCT(197)*V(65)*V(83)
  A(198) = RCT(198)*V(64)*V(83)
  A(199) = RCT(199)*V(59)*V(83)
  A(200) = RCT(200)*V(53)*V(83)
  A(201) = RCT(201)*V(55)*V(83)
  A(202) = RCT(202)*V(51)*V(83)
  A(203) = RCT(203)*V(56)*V(83)
  A(204) = RCT(204)*V(67)*V(83)
  A(205) = RCT(205)*V(63)*V(83)
  A(206) = RCT(206)*V(72)*V(83)
  A(207) = RCT(207)*V(62)*V(83)
  A(208) = RCT(208)*V(60)*V(83)
  A(209) = RCT(209)*V(79)*V(83)
  A(210) = RCT(210)*V(57)*V(83)
  A(211) = RCT(211)*V(66)*V(83)
  A(212) = RCT(212)*V(64)*V(83)
  A(213) = RCT(213)*V(59)*V(83)
  A(214) = RCT(214)*V(55)*V(83)
  A(215) = RCT(215)*V(65)*V(83)
  A(216) = RCT(216)*V(51)*V(83)
  A(217) = RCT(217)*V(56)*V(83)
  A(218) = RCT(218)*V(67)*V(83)
  A(219) = RCT(219)*V(63)*V(83)
  A(220) = RCT(220)*V(53)*V(83)
  A(221) = RCT(221)*V(74)*V(83)
  A(222) = RCT(222)*V(74)*V(83)
  A(223) = RCT(223)*V(81)*V(83)
  A(224) = RCT(224)*V(83)*V(88)
  A(225) = RCT(225)*V(78)*V(83)
  A(226) = RCT(226)*V(83)*F(5)
  A(227) = RCT(227)*V(87)*V(87)
  A(228) = RCT(228)*F(3)
  A(229) = RCT(229)*F(3)
  A(230) = RCT(230)*F(3)
  A(231) = RCT(231)*F(3)
  A(232) = RCT(232)*F(3)
  A(233) = RCT(233)*F(3)
  A(234) = RCT(234)*F(3)
  A(235) = RCT(235)*F(3)
  A(236) = RCT(236)*F(3)
  A(237) = RCT(237)*F(3)
  A(238) = RCT(238)*F(3)
  A(239) = RCT(239)*F(3)
  A(240) = RCT(240)*F(3)
  A(241) = RCT(241)*F(3)
  A(242) = RCT(242)*V(82)
  A(243) = RCT(243)*V(89)
  A(244) = RCT(244)*V(21)
  A(245) = RCT(245)*V(54)
  A(246) = RCT(246)*V(69)
  A(247) = RCT(247)*V(25)
  A(248) = RCT(248)*V(17)
  A(249) = RCT(249)*V(44)
  A(250) = RCT(250)*V(18)
  A(251) = RCT(251)*V(73)
  A(252) = RCT(252)*V(84)
  A(253) = RCT(253)*V(82)
  A(254) = RCT(254)*V(87)
  A(255) = RCT(255)*V(25)
  A(256) = RCT(256)*V(34)*V(90)
  A(257) = RCT(257)*V(34)*V(90)
  A(258) = RCT(258)*V(34)*V(87)
  A(259) = RCT(259)*V(20)*V(90)
  A(260) = RCT(260)*V(89)
  A(261) = RCT(261)*V(82)
  A(262) = RCT(262)*V(17)
  A(263) = RCT(263)*V(28)
  A(264) = RCT(264)*V(69)
  A(265) = RCT(265)*V(69)
  A(266) = RCT(266)*V(54)
  A(267) = RCT(267)*V(24)
  A(268) = RCT(268)*V(29)
  A(269) = RCT(269)*V(87)
  A(270) = RCT(270)*V(87)
  A(271) = RCT(271)*V(25)
  A(272) = RCT(272)*V(25)
  A(273) = RCT(273)*V(29)
  A(274) = RCT(274)*V(71)
  A(275) = RCT(275)*V(71)
  A(276) = RCT(276)*V(21)
  A(277) = RCT(277)*V(68)
  A(278) = RCT(278)*V(49)
  A(279) = RCT(279)*V(49)
  A(280) = RCT(280)*V(76)
  A(281) = RCT(281)*F(12)
  A(282) = RCT(282)*V(50)
  A(283) = RCT(283)*F(8)
  A(284) = RCT(284)*F(8)
  A(285) = RCT(285)*V(75)
  A(286) = RCT(286)*V(75)
  A(287) = RCT(287)*V(77)
  A(288) = RCT(288)*V(77)
  A(289) = RCT(289)*V(77)
  A(290) = RCT(290)*V(80)
  A(291) = RCT(291)*V(80)
  A(292) = RCT(292)*V(61)
  A(293) = RCT(293)*V(39)
  A(294) = RCT(294)*V(38)
  A(295) = RCT(295)*V(35)
  A(296) = RCT(296)*V(31)
  A(297) = RCT(297)*V(32)
  A(298) = RCT(298)*V(30)
  A(299) = RCT(299)*V(37)
  A(300) = RCT(300)*V(33)
  A(301) = RCT(301)*V(36)
  A(302) = RCT(302)*F(6)
  A(303) = RCT(303)*V(45)
  A(304) = RCT(304)*V(41)
  A(305) = RCT(305)*V(43)
  A(306) = RCT(306)*V(42)
  A(307) = RCT(307)*V(40)
  A(308) = RCT(308)*V(26)
  A(309) = RCT(309)*V(73)
  A(310) = RCT(310)*V(27)

! Aggregate function
  Vdot(1) = A(246)
  Vdot(2) = A(248)
  Vdot(3) = A(245)
  Vdot(4) = A(247)
  Vdot(5) = A(242)
  Vdot(6) = A(243)
  Vdot(7) = A(244)
  Vdot(8) = A(249)
  Vdot(9) = A(250)
  Vdot(10) = A(251)
  Vdot(11) = A(259)
  Vdot(12) = 0.25*A(257)
  Vdot(13) = A(13)+A(34)+A(42)+A(71)+0.15*A(153)+0.16*A(155)
  Vdot(14) = A(242)+A(243)+A(244)+A(245)+A(246)+A(247)+A(248)+A(249)+A(250)+A(251)
  Vdot(15) = A(145)
  Vdot(16) = -A(45)-A(46)+A(235)
  Vdot(17) = A(7)-A(9)+A(11)-A(248)+0.5*A(252)-A(262)
  Vdot(18) = A(73)-A(74)-A(250)
  Vdot(19) = A(75)-A(76)
  Vdot(20) = A(256)+0.75*A(257)+A(258)-A(259)
  Vdot(21) = A(40)-A(41)-A(244)-A(276)
  Vdot(22) = -A(49)-A(69)+A(231)
  Vdot(23) = -A(43)-A(184)+A(236)
  Vdot(24) = A(24)-A(25)+0.5*A(253)-A(267)
  Vdot(25) = A(32)-A(33)-A(247)-A(255)-A(271)-A(272)
  Vdot(26) = 0.7*A(133)-A(182)-A(308)
  Vdot(27) = 0.41*A(130)-A(183)-A(310)
  Vdot(28) = A(16)-A(19)-A(20)-A(263)
  Vdot(29) = A(26)-A(27)-A(28)-A(268)-A(273)
  Vdot(30) = A(90)-A(172)-A(298)
  Vdot(31) = A(128)-A(170)-A(296)
  Vdot(32) = A(102)-A(171)-A(297)
  Vdot(33) = 0.7*A(131)-A(173)-A(300)
  Vdot(34) = -A(256)-A(257)-A(258)
  Vdot(35) = A(127)-A(169)-A(295)
  Vdot(36) = 0.71*A(132)-A(175)-A(301)
  Vdot(37) = A(129)-A(174)-A(299)
  Vdot(38) = A(104)-A(168)-A(294)
  Vdot(39) = A(103)-A(167)-A(293)
  Vdot(40) = A(99)-A(181)-A(307)
  Vdot(41) = A(96)-A(178)-A(304)
  Vdot(42) = A(98)-A(180)-A(306)
  Vdot(43) = A(97)+A(100)+A(101)-A(179)-A(305)
  Vdot(44) = A(77)-A(78)-A(137)-A(138)-A(249)
  Vdot(45) = A(94)+A(95)-A(177)-A(303)
  Vdot(46) = -A(145)-A(153)-A(156)+A(232)
  Vdot(47) = -A(13)+A(21)+A(37)+0.05*A(38)+0.61*A(58)+A(84)+0.33*A(114)+0.15*A(117)+0.42*A(136)+0.4*A(139)+2*A(141)&
               &+A(142)+2*A(143)+A(144)+0.05*A(153)+0.05*A(154)+0.2*A(155)+A(162)+0.5*A(176)+0.4*A(187)+0.65*A(196)+0.83&
               &*A(199)+A(226)+A(230)+A(264)+A(265)+A(274)+A(275)+A(277)+A(279)+A(282)+1.5*A(283)+2*A(284)+A(285)+A(286)&
               &+A(287)+A(288)+A(291)+A(302)+0.67*A(304)+0.5*A(307)
  Vdot(48) = -A(135)-A(136)-A(140)+0.07*A(153)+A(234)+A(287)
  Vdot(49) = 0.32*A(50)+A(66)-A(86)-A(87)+0.16*A(108)+0.75*A(120)+0.5*A(171)+0.32*A(191)+A(200)+A(220)+A(233)-A(278)&
               &-A(279)+A(297)+0.32*A(309)
  Vdot(50) = 0.24*A(58)+0.95*A(59)+0.72*A(60)+0.6*A(64)+0.13*A(114)+0.5*A(115)+0.36*A(116)-A(139)+0.28*A(187)+0.26&
               &*A(196)+A(197)+0.72*A(198)-A(282)+0.26*A(304)+0.7*A(306)
  Vdot(51) = -A(64)-A(100)-A(118)-A(202)-A(216)
  Vdot(52) = A(46)-A(47)+0.05*A(50)-A(88)+0.03*A(108)-A(128)-A(149)-A(151)+0.5*A(170)+0.05*A(191)+0.05*A(309)
  Vdot(53) = A(45)+0.18*A(50)-A(66)-A(102)+0.09*A(108)-A(120)+0.5*A(171)+0.18*A(191)-A(200)-A(220)+0.18*A(309)
  Vdot(54) = A(22)-A(23)+A(37)+A(39)+A(57)+0.08*A(58)+0.05*A(59)+A(61)+A(63)+0.1*A(64)+0.85*A(67)+A(69)+A(85)+A(107)&
               &+0.425*A(121)+A(143)+A(144)+A(158)+A(184)+0.85*A(204)+A(241)-A(245)+0.5*A(253)+A(254)+2*A(255)+A(258)-A(266)
  Vdot(55) = -A(52)+A(70)-A(91)-A(109)-A(201)-A(214)
  Vdot(56) = -A(65)-A(101)-A(119)+A(157)-A(203)-A(217)
  Vdot(57) = -A(56)-A(57)-A(95)+0.07*A(112)-A(113)+0.136*A(194)-A(195)-A(210)
  Vdot(58) = 0.34*A(55)+A(56)+0.06*A(112)+0.5*A(113)+0.509*A(177)-A(186)-A(187)+0.127*A(194)+A(195)+0.373*A(303)
  Vdot(59) = -A(62)-A(63)-A(99)-A(117)+0.43*A(147)+A(181)-A(199)-A(213)
  Vdot(60) = -A(54)-A(93)+A(105)+A(107)-A(111)-A(193)-A(208)
  Vdot(61) = 0.33*A(58)+0.95*A(59)+A(62)+0.16*A(89)+0.2*A(110)+0.18*A(114)+0.5*A(115)+A(117)+0.59*A(137)-A(148)+0.65&
               &*A(152)+0.2*A(187)+0.36*A(196)+A(197)+0.83*A(199)-A(292)+0.36*A(304)+A(307)
  Vdot(62) = -A(53)+A(86)+A(87)-A(92)-A(110)-A(192)-A(207)
  Vdot(63) = -A(68)-A(104)-A(122)+A(140)+A(168)-A(205)-A(219)
  Vdot(64) = -A(60)-A(61)-A(98)-A(116)+A(146)+0.5*A(180)-A(198)-A(212)
  Vdot(65) = -A(59)-A(97)-A(115)+0.5*A(179)-A(197)-A(215)
  Vdot(66) = -A(58)-A(96)-A(114)+A(178)+0.44*A(186)-A(196)-A(211)
  Vdot(67) = -A(67)-A(103)-A(121)+A(156)+A(167)-A(204)-A(218)
  Vdot(68) = A(47)+0.13*A(50)+0.57*A(52)-A(72)-A(85)+0.75*A(88)+0.09*A(89)+0.07*A(108)+0.54*A(109)+0.25*A(115)+0.25&
               &*A(118)+0.25*A(119)+0.25*A(121)+0.25*A(122)+A(124)+A(149)+A(151)+0.35*A(152)+0.5*A(170)+0.5*A(172)+0.5&
               &*A(179)+0.5*A(180)+0.13*A(191)+0.57*A(201)+A(214)+A(215)+A(216)+A(217)+A(218)+A(219)-A(277)+A(293)+A(294)&
               &+A(296)+A(298)+A(305)+0.13*A(309)
  Vdot(69) = A(5)+A(15)+A(17)+2*A(18)+A(20)-A(21)+A(35)-A(37)+0.05*A(38)+A(48)+0.39*A(52)+0.96*A(53)+0.56*A(55)+0.75&
               &*A(56)+0.35*A(58)+0.28*A(60)+A(62)+0.3*A(64)+A(65)+0.15*A(67)+A(68)+A(82)+A(83)+0.75*A(88)+1.25*A(89)+0.75&
               &*A(106)+0.75*A(108)+0.95*A(109)+0.5*A(110)+0.75*A(111)+1.1*A(112)+1.13*A(113)+0.95*A(114)+0.75*A(115)+0.89&
               &*A(116)+0.85*A(117)+1.25*A(118)+1.25*A(119)+0.75*A(120)+0.83*A(121)+1.25*A(122)+0.29*A(132)+0.535*A(136)&
               &+2.23*A(137)+0.6*A(138)+A(150)+0.9*A(153)+0.8*A(154)+0.7*A(155)+A(159)+2*A(160)+2*A(161)+A(162)+A(163)&
               &+A(164)+A(165)+A(166)+0.5*A(183)+A(185)+0.12*A(187)+A(189)+A(190)+0.2*A(192)+0.69*A(194)+0.75*A(195)+0.4&
               &*A(196)+0.28*A(198)+0.17*A(199)+0.39*A(201)+A(202)+A(203)+0.15*A(204)+A(205)+A(224)+A(225)+A(239)-A(246)&
               &+A(256)+A(258)+A(263)-A(264)-A(265)+A(281)+A(282)+0.5*A(283)+A(288)+A(291)+A(292)+A(299)+A(301)+0.627*A(303)&
               &+0.3*A(306)+0.5*A(307)+A(308)
  Vdot(70) = -A(48)-A(89)-A(129)+A(135)-A(150)-A(152)+A(174)
  Vdot(71) = -A(38)-A(39)+A(44)+A(48)+0.32*A(50)+0.75*A(52)+0.93*A(54)+A(68)+0.5*A(89)+0.75*A(106)+0.16*A(108)+0.38&
               &*A(109)+0.5*A(111)+0.5*A(122)+A(123)+2*A(125)+A(126)+0.5*A(136)+A(150)+0.04*A(154)+0.5*A(169)+0.5*A(173)&
               &+0.32*A(191)+A(193)+0.75*A(201)+A(205)+A(221)+A(222)+A(238)-A(274)-A(275)+A(286)+A(295)+A(299)+A(300)+0.32&
               &*A(309)
  Vdot(72) = A(49)-A(50)-A(51)+0.3*A(52)+A(69)-A(90)-A(108)+0.15*A(109)+0.5*A(172)-A(191)+0.3*A(201)-A(206)
  Vdot(73) = A(51)+0.04*A(53)+0.07*A(54)-A(70)+A(91)-A(251)-A(309)
  Vdot(74) = A(43)-A(44)+0.32*A(50)+A(81)-A(106)+0.16*A(108)-2*A(125)-2*A(126)-A(127)+A(159)+0.5*A(169)+A(184)+0.32&
               &*A(191)-A(221)-A(222)+A(223)+A(277)+0.85*A(280)+0.32*A(309)
  Vdot(75) = 0.53*A(58)+0.28*A(60)+0.3*A(64)+A(65)+A(93)+0.5*A(110)+0.29*A(114)+0.14*A(116)+0.25*A(118)+0.5*A(119)&
               &-A(142)-A(144)+A(148)+0.82*A(154)+0.8*A(155)+0.6*A(187)+0.8*A(192)+0.58*A(196)+0.28*A(198)+0.17*A(199)+0.5&
               &*A(202)+A(203)-A(285)-A(286)+0.58*A(304)+0.3*A(306)
  Vdot(76) = 0.19*A(50)-A(105)-A(107)+0.35*A(108)+0.25*A(111)+0.25*A(112)+0.25*A(113)+0.25*A(114)+0.25*A(116)+0.19&
               &*A(191)+A(206)+A(207)+A(208)+A(209)+A(210)+A(211)+A(212)+A(213)+A(237)-A(280)+0.19*A(309)
  Vdot(77) = 0.34*A(55)+0.05*A(67)+0.2*A(112)+0.03*A(121)-A(146)+0.159*A(153)-A(154)+0.402*A(194)+0.05*A(204)-A(287)&
               &-A(288)-A(289)+0.368*A(303)
  Vdot(78) = -A(77)+A(78)-A(83)-A(133)+0.57*A(147)+A(158)-A(161)-A(165)+A(182)+0.41*A(186)-A(225)+A(289)+A(290)
  Vdot(79) = -A(55)-A(94)-A(112)+A(145)+0.491*A(177)-A(194)-A(209)
  Vdot(80) = 0.22*A(55)+0.1*A(67)+0.14*A(112)+0.05*A(121)-A(147)+0.387*A(153)-A(155)-A(157)-A(158)+0.288*A(194)+0.1&
               &*A(204)-A(290)-A(291)+0.259*A(303)
  Vdot(81) = A(72)-A(73)+A(74)-A(81)+A(85)-A(131)-A(159)-A(163)+0.5*A(173)-A(223)+0.15*A(280)
  Vdot(82) = A(1)-A(4)+A(10)+A(15)-A(22)+A(25)-A(26)+A(27)+A(28)+A(29)+2*A(30)+A(31)-A(32)+A(33)-A(40)+A(41)+A(42)+A(44)&
               &+A(47)+A(48)+A(50)+2*A(52)+0.96*A(53)+0.93*A(54)+0.9*A(55)+A(56)+0.92*A(58)+1.95*A(59)+A(60)+A(62)+1.9*A(64)&
               &+2*A(65)+A(66)+1.15*A(67)+2*A(68)-A(73)+A(74)-A(75)+A(76)-A(77)+A(78)-A(79)+A(80)+A(81)+A(82)+A(83)+A(84)&
               &+A(109)+A(115)+A(118)+A(119)+0.575*A(121)+A(122)+A(137)+A(138)+0.5*A(179)+A(185)+A(197)+A(201)+A(202)+A(203)&
               &+0.15*A(204)+A(205)+A(214)+A(215)+A(216)+A(217)+A(218)+A(219)+2*A(227)+A(229)-A(242)-A(253)-A(261)+A(266)&
               &+A(269)+A(271)+A(273)+0.6*A(276)+A(281)+A(293)+A(294)+A(305)+A(309)
  Vdot(83) = 0.95*A(38)+A(39)-A(40)+A(41)-A(42)+0.96*A(53)+0.93*A(54)+0.72*A(60)+0.6*A(64)+A(83)+A(92)+0.3*A(110)+0.5&
               &*A(111)+0.36*A(116)+0.25*A(118)-A(130)+A(142)+A(144)-A(149)-A(150)-A(151)-A(152)+A(161)+0.5*A(183)-2*A(188)&
               &-A(189)-A(190)-A(191)-0.8*A(192)-A(194)-A(195)-A(196)-A(197)-0.28*A(198)-A(199)-A(200)-A(201)-0.5*A(202)&
               &-A(203)-A(204)-A(205)-A(206)-A(207)-A(208)-A(209)-A(210)-A(211)-A(212)-A(213)-A(214)-A(215)-A(216)-A(217)&
               &-A(218)-A(219)-A(220)-A(221)-A(222)-A(223)-A(224)-A(226)+0.6*A(276)+A(278)+0.85*A(280)+A(285)+A(288)+A(291)&
               &+A(292)+0.7*A(306)+A(308)
  Vdot(84) = A(2)-A(3)+A(5)-A(8)+A(9)-A(10)-2*A(11)+A(12)+A(13)+A(15)-A(16)+2*A(18)+A(21)-A(26)+A(27)-A(29)+A(31)+A(34)&
               &+A(35)+A(37)+0.05*A(38)+A(44)+A(47)+A(48)+0.27*A(50)+0.9*A(55)+A(56)+0.92*A(58)+0.05*A(59)+0.28*A(60)+A(62)&
               &+0.3*A(64)+A(66)+0.8*A(67)+A(82)+A(84)+A(88)+A(89)-A(90)-A(91)-A(92)-A(93)-A(94)-A(95)-A(96)-A(97)-A(98)&
               &-A(99)-A(100)-A(101)-A(102)-A(103)-A(104)+A(106)+0.64*A(108)+0.5*A(109)+0.3*A(110)+0.5*A(111)+0.92*A(112)&
               &+A(113)+A(114)+0.5*A(115)+0.64*A(116)+1.15*A(117)+0.75*A(118)+0.5*A(119)+A(120)+0.45*A(121)+0.5*A(122)&
               &+A(123)+A(124)+2*A(125)-A(127)-A(128)-A(129)-A(130)-A(131)-A(132)-A(133)-A(134)+0.3*A(136)+2*A(137)+A(138)&
               &+0.2*A(139)+A(141)+A(143)+A(148)+A(149)+A(150)+0.06*A(153)+0.06*A(154)+0.275*A(155)+A(159)+2*A(160)+A(161)+2&
               &*A(162)+0.15*A(186)+A(189)+0.27*A(191)+0.8*A(192)+0.864*A(194)+A(195)+A(196)+0.28*A(198)+A(199)+A(200)+0.5&
               &*A(202)+0.8*A(204)+A(221)+A(224)+A(226)-A(252)+A(259)+A(263)+2*A(264)+A(273)+A(274)+A(277)+2*A(282)+2*A(284)&
               &+A(285)+A(288)+A(290)+A(291)+A(292)+A(293)+A(294)+A(295)+A(296)+A(297)+A(298)+A(299)+A(300)+A(301)+A(302)&
               &+A(303)+A(304)+A(305)+0.3*A(306)+A(307)+0.27*A(309)
  Vdot(85) = -A(1)-A(10)-A(15)-A(24)-A(30)+A(36)-A(42)-A(44)-A(47)-A(48)-A(50)-A(51)-A(52)-A(53)-A(54)-A(55)-A(56)-A(57)&
               &-A(58)-A(59)-A(60)-A(61)-A(62)-A(63)-A(64)-A(65)-A(66)-A(67)-A(68)-A(81)-A(82)-A(83)-A(84)+A(228)+A(261)&
               &+A(267)+A(270)+A(272)
  Vdot(86) = -A(5)+A(14)-A(15)-A(16)-2*A(17)-2*A(18)+A(19)+A(42)+0.18*A(50)+A(71)-A(88)-A(89)+A(92)+A(93)-A(106)-0.91&
               &*A(108)-A(109)-A(110)-A(111)-A(112)-A(113)-A(114)-A(115)-A(116)-A(117)-A(118)-A(119)-A(120)-A(121)-A(122)&
               &+0.44*A(130)+0.305*A(136)+A(149)+A(150)-A(159)-A(160)-A(161)-A(162)-A(163)-A(164)-A(165)-A(166)+2*A(188)&
               &-A(190)+1.18*A(191)+A(192)+A(193)+A(194)+A(195)+A(196)+A(197)+A(198)+A(199)+A(200)+A(201)+A(202)+A(203)&
               &+A(204)+A(205)+A(221)+A(223)+A(224)+A(225)+A(226)+A(256)+A(257)+A(258)+A(274)+0.4*A(276)+A(278)+2*A(279)&
               &+0.15*A(280)+A(289)+0.18*A(309)+A(310)
  Vdot(87) = A(4)+A(23)-A(29)-A(30)-A(31)-A(32)+A(33)-A(36)-A(37)-A(39)-A(69)-A(85)-A(107)-A(140)-A(143)-A(144)-A(156)&
               &-A(157)-A(158)-A(184)-2*A(227)-A(254)-A(258)+A(268)-A(269)-A(270)+A(271)+A(272)+0.4*A(276)
  Vdot(88) = -A(75)+A(76)-A(82)-A(132)+0.8*A(139)-A(160)-A(164)+A(175)-A(224)
  Vdot(89) = -A(1)-A(2)-A(3)-A(4)-A(5)+A(6)+0.15*A(130)+0.3*A(131)+0.29*A(132)+0.3*A(133)+0.3*A(134)-A(136)-A(138)-0.9&
               &*A(153)-0.8*A(154)-0.8*A(155)-0.7*A(187)+A(240)-A(243)-A(260)+A(261)+A(269)+A(272)
  Vdot(90) = -A(2)+A(3)-2*A(6)-2*A(7)-A(8)-A(9)+A(10)-A(12)-A(13)-A(14)-A(19)-A(21)-A(22)-A(23)-A(24)-A(25)-A(28)+A(29)&
               &-A(31)-A(34)-A(35)-A(38)-A(43)-A(45)-A(46)-A(49)-A(70)-A(71)-A(72)-A(86)-A(87)-A(105)-A(123)-A(124)+0.44&
               &*A(130)-A(135)+0.135*A(136)-A(137)-A(139)-A(141)-A(142)-A(145)-A(146)-A(147)-A(148)+0.27*A(153)+0.08*A(154)&
               &+0.215*A(155)-A(167)-A(168)-0.5*A(169)-0.5*A(170)-0.5*A(171)-0.5*A(172)-0.5*A(173)-A(174)-A(175)-0.5*A(176)&
               &-0.491*A(177)-A(178)-0.5*A(179)-0.5*A(180)-A(181)-A(182)-0.5*A(183)-A(185)-A(186)+0.1*A(187)-A(256)-A(257)&
               &-A(259)+2*A(260)+2*A(262)+A(263)+A(266)+A(267)+A(268)+A(293)+A(294)+A(295)+A(296)+A(297)+A(298)+A(299)&
               &+A(300)+A(301)+A(302)+A(303)+A(304)+A(305)+A(306)+A(307)+A(308)+A(310)
      
END SUBROUTINE Fun

! End of Fun function
! ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~



END MODULE gckpp_Function

