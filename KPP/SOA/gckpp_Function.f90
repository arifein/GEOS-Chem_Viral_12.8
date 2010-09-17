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
! Time                 : Wed Sep 15 16:00:44 2010
! Working directory    : /mnt/lstr04/srv/home/c/ccarouge/KPP/geoschem_kppfiles/v8-03-02/SOA
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
  A(1) = RCT(1)*V(98)*V(103)
  A(2) = RCT(2)*V(98)*V(102)
  A(3) = RCT(3)*V(96)*V(98)
  A(4) = RCT(4)*V(98)*V(99)
  A(5) = RCT(5)*V(95)*V(98)
  A(6) = RCT(6)*V(102)*V(102)
  A(7) = RCT(7)*V(102)*V(102)
  A(8) = RCT(8)*V(96)*V(102)
  A(9) = RCT(9)*V(29)*V(102)
  A(10) = RCT(10)*V(96)*V(103)
  A(11) = RCT(11)*V(96)*V(96)
  A(12) = RCT(12)*V(102)*F(9)
  A(13) = RCT(13)*V(60)*V(102)
  A(14) = RCT(14)*V(102)*F(2)
  A(15) = RCT(15)*V(95)*V(103)
  A(16) = RCT(16)*V(95)*V(96)
  A(17) = RCT(17)*V(95)*V(95)
  A(18) = RCT(18)*V(95)*V(95)
  A(19) = RCT(19)*V(39)*V(102)
  A(20) = RCT(20)*V(39)*V(102)
  A(21) = RCT(21)*V(82)*V(102)
  A(22) = RCT(22)*V(99)*V(102)
  A(23) = RCT(23)*V(67)*V(102)
  A(24) = RCT(24)*V(102)*V(103)
  A(25) = RCT(25)*V(37)*V(102)
  A(26) = RCT(26)*V(96)*V(99)
  A(27) = RCT(27)*V(49)
  A(28) = RCT(28)*V(49)*V(102)
  A(29) = RCT(29)*V(96)*V(100)
  A(30) = RCT(30)*V(100)*V(103)
  A(31) = RCT(31)*V(100)*V(102)
  A(32) = RCT(32)*V(99)*V(100)
  A(33) = RCT(33)*V(38)
  A(34) = RCT(34)*V(102)*F(11)
  A(35) = RCT(35)*V(102)*F(13)
  A(36) = RCT(36)*V(99)*V(100)
  A(37) = RCT(37)*V(82)*V(100)
  A(38) = RCT(38)*V(84)*V(102)
  A(39) = RCT(39)*V(84)*V(100)
  A(40) = RCT(40)*V(99)*V(101)
  A(41) = RCT(41)*V(34)
  A(42) = RCT(42)*V(101)*V(103)
  A(43) = RCT(43)*V(36)*V(102)
  A(44) = RCT(44)*V(87)*V(103)
  A(45) = RCT(45)*V(26)*V(102)
  A(46) = RCT(46)*V(26)*V(102)
  A(47) = RCT(47)*V(65)*V(103)
  A(48) = RCT(48)*V(83)*V(103)
  A(49) = RCT(49)*V(35)*V(102)
  A(50) = RCT(50)*V(85)*V(103)
  A(51) = RCT(51)*V(85)*V(103)
  A(52) = RCT(52)*V(68)*V(103)
  A(53) = RCT(53)*V(74)*V(103)
  A(54) = RCT(54)*V(73)*V(103)
  A(55) = RCT(55)*V(92)*V(103)
  A(56) = RCT(56)*V(70)*V(103)
  A(57) = RCT(57)*V(70)*V(103)
  A(58) = RCT(58)*V(79)*V(103)
  A(59) = RCT(59)*V(80)*V(103)
  A(60) = RCT(60)*V(75)*V(103)
  A(61) = RCT(61)*V(75)*V(103)
  A(62) = RCT(62)*V(72)*V(103)
  A(63) = RCT(63)*V(72)*V(103)
  A(64) = RCT(64)*V(64)*V(103)
  A(65) = RCT(65)*V(69)*V(103)
  A(66) = RCT(66)*V(66)*V(103)
  A(67) = RCT(67)*V(78)*V(103)
  A(68) = RCT(68)*V(76)*V(103)
  A(69) = RCT(69)*V(35)*V(100)
  A(70) = RCT(70)*V(86)*V(102)
  A(71) = RCT(71)*V(102)*F(1)
  A(72) = RCT(72)*V(81)*V(102)
  A(73) = RCT(73)*V(90)*V(99)
  A(74) = RCT(74)*V(27)
  A(75) = RCT(75)*V(94)*V(99)
  A(76) = RCT(76)*V(28)
  A(77) = RCT(77)*V(97)*V(99)
  A(78) = RCT(78)*V(58)
  A(79) = RCT(79)*V(99)*F(5)
  A(80) = RCT(80)*F(7)
  A(81) = RCT(81)*V(90)*V(103)
  A(82) = RCT(82)*V(94)*V(103)
  A(83) = RCT(83)*V(97)*V(103)
  A(84) = RCT(84)*V(103)*F(5)
  A(85) = RCT(85)*V(81)*V(100)
  A(86) = RCT(86)*V(62)*V(102)
  A(87) = RCT(87)*V(62)*V(102)
  A(88) = RCT(88)*V(65)*V(95)
  A(89) = RCT(89)*V(83)*V(95)
  A(90) = RCT(90)*V(85)*V(96)
  A(91) = RCT(91)*V(68)*V(96)
  A(92) = RCT(92)*V(74)*V(96)
  A(93) = RCT(93)*V(73)*V(96)
  A(94) = RCT(94)*V(92)*V(96)
  A(95) = RCT(95)*V(70)*V(96)
  A(96) = RCT(96)*V(79)*V(96)
  A(97) = RCT(97)*V(80)*V(96)
  A(98) = RCT(98)*V(75)*V(96)
  A(99) = RCT(99)*V(72)*V(96)
  A(100) = RCT(100)*V(64)*V(96)
  A(101) = RCT(101)*V(69)*V(96)
  A(102) = RCT(102)*V(66)*V(96)
  A(103) = RCT(103)*V(78)*V(96)
  A(104) = RCT(104)*V(76)*V(96)
  A(105) = RCT(105)*V(89)*V(102)
  A(106) = RCT(106)*V(87)*V(95)
  A(107) = RCT(107)*V(89)*V(100)
  A(108) = RCT(108)*V(85)*V(95)
  A(109) = RCT(109)*V(68)*V(95)
  A(110) = RCT(110)*V(74)*V(95)
  A(111) = RCT(111)*V(73)*V(95)
  A(112) = RCT(112)*V(92)*V(95)
  A(113) = RCT(113)*V(70)*V(95)
  A(114) = RCT(114)*V(79)*V(95)
  A(115) = RCT(115)*V(80)*V(95)
  A(116) = RCT(116)*V(75)*V(95)
  A(117) = RCT(117)*V(72)*V(95)
  A(118) = RCT(118)*V(64)*V(95)
  A(119) = RCT(119)*V(69)*V(95)
  A(120) = RCT(120)*V(66)*V(95)
  A(121) = RCT(121)*V(78)*V(95)
  A(122) = RCT(122)*V(76)*V(95)
  A(123) = RCT(123)*V(102)*F(4)
  A(124) = RCT(124)*V(102)*F(16)
  A(125) = RCT(125)*V(87)*V(87)
  A(126) = RCT(126)*V(87)*V(87)
  A(127) = RCT(127)*V(87)*V(96)
  A(128) = RCT(128)*V(65)*V(96)
  A(129) = RCT(129)*V(83)*V(96)
  A(130) = RCT(130)*V(96)*V(101)
  A(131) = RCT(131)*V(90)*V(96)
  A(132) = RCT(132)*V(94)*V(96)
  A(133) = RCT(133)*V(96)*V(97)
  A(134) = RCT(134)*V(96)*F(5)
  A(135) = RCT(135)*V(61)*V(102)
  A(136) = RCT(136)*V(61)*V(98)
  A(137) = RCT(137)*V(58)*V(102)
  A(138) = RCT(138)*V(58)*V(98)
  A(139) = RCT(139)*V(63)*V(102)
  A(140) = RCT(140)*V(61)*V(100)
  A(141) = RCT(141)*V(102)*F(8)
  A(142) = RCT(142)*V(88)*V(102)
  A(143) = RCT(143)*V(100)*F(8)
  A(144) = RCT(144)*V(88)*V(100)
  A(145) = RCT(145)*V(59)*V(102)
  A(146) = RCT(146)*V(93)*V(102)
  A(147) = RCT(147)*V(91)*V(102)
  A(148) = RCT(148)*V(77)*V(102)
  A(149) = RCT(149)*V(65)*V(101)
  A(150) = RCT(150)*V(83)*V(101)
  A(151) = RCT(151)*V(65)*V(101)
  A(152) = RCT(152)*V(83)*V(101)
  A(153) = RCT(153)*V(59)*V(98)
  A(154) = RCT(154)*V(93)*V(98)
  A(155) = RCT(155)*V(91)*V(98)
  A(156) = RCT(156)*V(59)*V(100)
  A(157) = RCT(157)*V(91)*V(100)
  A(158) = RCT(158)*V(91)*V(100)
  A(159) = RCT(159)*V(90)*V(95)
  A(160) = RCT(160)*V(94)*V(95)
  A(161) = RCT(161)*V(95)*V(97)
  A(162) = RCT(162)*V(95)*F(5)
  A(163) = RCT(163)*V(90)*V(95)
  A(164) = RCT(164)*V(94)*V(95)
  A(165) = RCT(165)*V(95)*V(97)
  A(166) = RCT(166)*V(95)*F(5)
  A(167) = RCT(167)*V(52)*V(102)
  A(168) = RCT(168)*V(51)*V(102)
  A(169) = RCT(169)*V(46)*V(102)
  A(170) = RCT(170)*V(41)*V(102)
  A(171) = RCT(171)*V(42)*V(102)
  A(172) = RCT(172)*V(40)*V(102)
  A(173) = RCT(173)*V(43)*V(102)
  A(174) = RCT(174)*V(50)*V(102)
  A(175) = RCT(175)*V(47)*V(102)
  A(176) = RCT(176)*V(102)*F(6)
  A(177) = RCT(177)*V(57)*V(102)
  A(178) = RCT(178)*V(54)*V(102)
  A(179) = RCT(179)*V(56)*V(102)
  A(180) = RCT(180)*V(55)*V(102)
  A(181) = RCT(181)*V(53)*V(102)
  A(182) = RCT(182)*V(45)*V(102)
  A(183) = RCT(183)*V(48)*V(102)
  A(184) = RCT(184)*V(36)*V(100)
  A(185) = RCT(185)*V(102)*F(12)
  A(186) = RCT(186)*V(71)*V(102)
  A(187) = RCT(187)*V(71)*V(98)
  A(188) = RCT(188)*V(101)*V(101)
  A(189) = RCT(189)*V(95)*V(101)
  A(190) = RCT(190)*V(95)*V(101)
  A(191) = RCT(191)*V(85)*V(101)
  A(192) = RCT(192)*V(74)*V(101)
  A(193) = RCT(193)*V(73)*V(101)
  A(194) = RCT(194)*V(92)*V(101)
  A(195) = RCT(195)*V(70)*V(101)
  A(196) = RCT(196)*V(79)*V(101)
  A(197) = RCT(197)*V(80)*V(101)
  A(198) = RCT(198)*V(75)*V(101)
  A(199) = RCT(199)*V(72)*V(101)
  A(200) = RCT(200)*V(66)*V(101)
  A(201) = RCT(201)*V(68)*V(101)
  A(202) = RCT(202)*V(64)*V(101)
  A(203) = RCT(203)*V(69)*V(101)
  A(204) = RCT(204)*V(78)*V(101)
  A(205) = RCT(205)*V(76)*V(101)
  A(206) = RCT(206)*V(85)*V(101)
  A(207) = RCT(207)*V(74)*V(101)
  A(208) = RCT(208)*V(73)*V(101)
  A(209) = RCT(209)*V(92)*V(101)
  A(210) = RCT(210)*V(70)*V(101)
  A(211) = RCT(211)*V(79)*V(101)
  A(212) = RCT(212)*V(75)*V(101)
  A(213) = RCT(213)*V(72)*V(101)
  A(214) = RCT(214)*V(68)*V(101)
  A(215) = RCT(215)*V(80)*V(101)
  A(216) = RCT(216)*V(64)*V(101)
  A(217) = RCT(217)*V(69)*V(101)
  A(218) = RCT(218)*V(78)*V(101)
  A(219) = RCT(219)*V(76)*V(101)
  A(220) = RCT(220)*V(66)*V(101)
  A(221) = RCT(221)*V(87)*V(101)
  A(222) = RCT(222)*V(87)*V(101)
  A(223) = RCT(223)*V(90)*V(101)
  A(224) = RCT(224)*V(94)*V(101)
  A(225) = RCT(225)*V(97)*V(101)
  A(226) = RCT(226)*V(101)*F(5)
  A(227) = RCT(227)*V(100)*V(100)
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
  A(242) = RCT(242)*F(3)
  A(243) = RCT(243)*F(3)
  A(244) = RCT(244)*F(3)
  A(245) = RCT(245)*F(3)
  A(246) = RCT(246)*V(99)
  A(247) = RCT(247)*V(98)
  A(248) = RCT(248)*V(34)
  A(249) = RCT(249)*V(67)
  A(250) = RCT(250)*V(82)
  A(251) = RCT(251)*V(38)
  A(252) = RCT(252)*V(29)
  A(253) = RCT(253)*V(58)
  A(254) = RCT(254)*V(27)
  A(255) = RCT(255)*V(86)
  A(256) = RCT(256)*V(96)
  A(257) = RCT(257)*V(99)
  A(258) = RCT(258)*V(100)
  A(259) = RCT(259)*V(38)
  A(260) = RCT(260)*V(44)*V(102)
  A(261) = RCT(261)*V(44)*V(102)
  A(262) = RCT(262)*V(44)*V(100)
  A(263) = RCT(263)*V(30)*V(102)
  A(264) = RCT(264)*V(25)*V(102)
  A(265) = RCT(265)*V(23)*V(102)
  A(266) = RCT(266)*V(24)*V(102)
  A(267) = RCT(267)*V(1)
  A(268) = RCT(268)*V(31)*V(96)
  A(269) = RCT(269)*V(31)*V(103)
  A(270) = RCT(270)*V(32)*V(96)
  A(271) = RCT(271)*V(32)*V(103)
  A(272) = RCT(272)*V(33)*V(96)
  A(273) = RCT(273)*V(33)*V(103)
  A(274) = RCT(274)*V(98)
  A(275) = RCT(275)*V(99)
  A(276) = RCT(276)*V(29)
  A(277) = RCT(277)*V(39)
  A(278) = RCT(278)*V(82)
  A(279) = RCT(279)*V(82)
  A(280) = RCT(280)*V(67)
  A(281) = RCT(281)*V(37)
  A(282) = RCT(282)*V(49)
  A(283) = RCT(283)*V(100)
  A(284) = RCT(284)*V(100)
  A(285) = RCT(285)*V(38)
  A(286) = RCT(286)*V(38)
  A(287) = RCT(287)*V(49)
  A(288) = RCT(288)*V(84)
  A(289) = RCT(289)*V(84)
  A(290) = RCT(290)*V(34)
  A(291) = RCT(291)*V(81)
  A(292) = RCT(292)*V(62)
  A(293) = RCT(293)*V(62)
  A(294) = RCT(294)*V(89)
  A(295) = RCT(295)*F(12)
  A(296) = RCT(296)*V(63)
  A(297) = RCT(297)*F(8)
  A(298) = RCT(298)*F(8)
  A(299) = RCT(299)*V(88)
  A(300) = RCT(300)*V(88)
  A(301) = RCT(301)*V(93)
  A(302) = RCT(302)*V(93)
  A(303) = RCT(303)*V(93)
  A(304) = RCT(304)*V(91)
  A(305) = RCT(305)*V(91)
  A(306) = RCT(306)*V(77)
  A(307) = RCT(307)*V(52)
  A(308) = RCT(308)*V(51)
  A(309) = RCT(309)*V(46)
  A(310) = RCT(310)*V(41)
  A(311) = RCT(311)*V(42)
  A(312) = RCT(312)*V(40)
  A(313) = RCT(313)*V(50)
  A(314) = RCT(314)*V(43)
  A(315) = RCT(315)*V(47)
  A(316) = RCT(316)*F(6)
  A(317) = RCT(317)*V(57)
  A(318) = RCT(318)*V(54)
  A(319) = RCT(319)*V(56)
  A(320) = RCT(320)*V(55)
  A(321) = RCT(321)*V(53)
  A(322) = RCT(322)*V(45)
  A(323) = RCT(323)*V(86)
  A(324) = RCT(324)*V(48)

! Aggregate function
  Vdot(1) = A(245)-A(267)
  Vdot(2) = A(250)
  Vdot(3) = A(252)
  Vdot(4) = A(249)
  Vdot(5) = A(251)
  Vdot(6) = A(246)
  Vdot(7) = A(247)
  Vdot(8) = A(248)
  Vdot(9) = A(253)
  Vdot(10) = A(254)
  Vdot(11) = A(255)
  Vdot(12) = A(263)
  Vdot(13) = 0.25*A(261)
  Vdot(14) = A(145)
  Vdot(15) = A(268)
  Vdot(16) = A(269)
  Vdot(17) = A(270)
  Vdot(18) = A(271)
  Vdot(19) = A(272)
  Vdot(20) = A(273)
  Vdot(21) = A(13)+A(34)+A(42)+A(71)+0.15*A(153)+0.16*A(155)
  Vdot(22) = A(246)+A(247)+A(248)+A(249)+A(250)+A(251)+A(252)+A(253)+A(254)+A(255)
  Vdot(23) = A(243)-A(265)
  Vdot(24) = A(244)-A(266)
  Vdot(25) = A(242)-A(264)
  Vdot(26) = -A(45)-A(46)+A(235)
  Vdot(27) = A(73)-A(74)-A(254)
  Vdot(28) = A(75)-A(76)
  Vdot(29) = A(7)-A(9)+A(11)-A(252)+0.5*A(256)-A(276)
  Vdot(30) = A(260)+0.75*A(261)+A(262)-A(263)
  Vdot(31) = A(264)-A(268)-A(269)
  Vdot(32) = A(265)-A(270)-A(271)
  Vdot(33) = A(266)-A(272)-A(273)
  Vdot(34) = A(40)-A(41)-A(248)-A(290)
  Vdot(35) = -A(49)-A(69)+A(231)
  Vdot(36) = -A(43)-A(184)+A(236)
  Vdot(37) = A(24)-A(25)+0.5*A(257)-A(281)
  Vdot(38) = A(32)-A(33)-A(251)-A(259)-A(285)-A(286)
  Vdot(39) = A(16)-A(19)-A(20)-A(277)
  Vdot(40) = A(90)-A(172)-A(312)
  Vdot(41) = A(128)-A(170)-A(310)
  Vdot(42) = A(102)-A(171)-A(311)
  Vdot(43) = 0.7*A(131)-A(173)-A(314)
  Vdot(44) = -A(260)-A(261)-A(262)
  Vdot(45) = 0.7*A(133)-A(182)-A(322)
  Vdot(46) = A(127)-A(169)-A(309)
  Vdot(47) = 0.71*A(132)-A(175)-A(315)
  Vdot(48) = 0.41*A(130)-A(183)-A(324)
  Vdot(49) = A(26)-A(27)-A(28)-A(282)-A(287)
  Vdot(50) = A(129)-A(174)-A(313)
  Vdot(51) = A(104)-A(168)-A(308)
  Vdot(52) = A(103)-A(167)-A(307)
  Vdot(53) = A(99)-A(181)-A(321)
  Vdot(54) = A(96)-A(178)-A(318)
  Vdot(55) = A(98)-A(180)-A(320)
  Vdot(56) = A(97)+A(100)+A(101)-A(179)-A(319)
  Vdot(57) = A(94)+A(95)-A(177)-A(317)
  Vdot(58) = A(77)-A(78)-A(137)-A(138)-A(253)
  Vdot(59) = -A(145)-A(153)-A(156)+A(232)
  Vdot(60) = -A(13)+A(21)+A(37)+0.05*A(38)+0.61*A(58)+A(84)+0.33*A(114)+0.15*A(117)+0.42*A(136)+0.4*A(139)+2*A(141)&
               &+A(142)+2*A(143)+A(144)+0.05*A(153)+0.05*A(154)+0.2*A(155)+A(162)+0.5*A(176)+0.4*A(187)+0.65*A(196)+0.83&
               &*A(199)+A(226)+A(230)+A(278)+A(279)+A(288)+A(289)+A(291)+A(293)+A(296)+1.5*A(297)+2*A(298)+A(299)+A(300)&
               &+A(301)+A(302)+A(305)+A(316)+0.67*A(318)+0.5*A(321)
  Vdot(61) = -A(135)-A(136)-A(140)+0.07*A(153)+A(234)+A(301)
  Vdot(62) = 0.32*A(50)+A(66)-A(86)-A(87)+0.16*A(108)+0.75*A(120)+0.5*A(171)+0.32*A(191)+A(200)+A(220)+A(233)-A(292)&
               &-A(293)+A(311)+0.32*A(323)
  Vdot(63) = 0.24*A(58)+0.95*A(59)+0.72*A(60)+0.6*A(64)+0.13*A(114)+0.5*A(115)+0.36*A(116)-A(139)+0.28*A(187)+0.26&
               &*A(196)+A(197)+0.72*A(198)-A(296)+0.26*A(318)+0.7*A(320)
  Vdot(64) = -A(64)-A(100)-A(118)-A(202)-A(216)
  Vdot(65) = A(46)-A(47)+0.05*A(50)-A(88)+0.03*A(108)-A(128)-A(149)-A(151)+0.5*A(170)+0.05*A(191)+0.05*A(323)
  Vdot(66) = A(45)+0.18*A(50)-A(66)-A(102)+0.09*A(108)-A(120)+0.5*A(171)+0.18*A(191)-A(200)-A(220)+0.18*A(323)
  Vdot(67) = A(22)-A(23)+A(37)+A(39)+A(57)+0.08*A(58)+0.05*A(59)+A(61)+A(63)+0.1*A(64)+0.85*A(67)+A(69)+A(85)+A(107)&
               &+0.425*A(121)+A(143)+A(144)+A(158)+A(184)+0.85*A(204)+A(241)-A(249)+0.5*A(257)+A(258)+2*A(259)+A(262)-A(280)
  Vdot(68) = -A(52)+A(70)-A(91)-A(109)-A(201)-A(214)
  Vdot(69) = -A(65)-A(101)-A(119)+A(157)-A(203)-A(217)
  Vdot(70) = -A(56)-A(57)-A(95)+0.07*A(112)-A(113)+0.136*A(194)-A(195)-A(210)
  Vdot(71) = 0.34*A(55)+A(56)+0.06*A(112)+0.5*A(113)+0.509*A(177)-A(186)-A(187)+0.127*A(194)+A(195)+0.373*A(317)
  Vdot(72) = -A(62)-A(63)-A(99)-A(117)+0.43*A(147)+A(181)-A(199)-A(213)
  Vdot(73) = -A(54)-A(93)+A(105)+A(107)-A(111)-A(193)-A(208)
  Vdot(74) = -A(53)+A(86)+A(87)-A(92)-A(110)-A(192)-A(207)
  Vdot(75) = -A(60)-A(61)-A(98)-A(116)+A(146)+0.5*A(180)-A(198)-A(212)
  Vdot(76) = -A(68)-A(104)-A(122)+A(140)+A(168)-A(205)-A(219)
  Vdot(77) = 0.33*A(58)+0.95*A(59)+A(62)+0.16*A(89)+0.2*A(110)+0.18*A(114)+0.5*A(115)+A(117)+0.59*A(137)-A(148)+0.65&
               &*A(152)+0.2*A(187)+0.36*A(196)+A(197)+0.83*A(199)-A(306)+0.36*A(318)+A(321)
  Vdot(78) = -A(67)-A(103)-A(121)+A(156)+A(167)-A(204)-A(218)
  Vdot(79) = -A(58)-A(96)-A(114)+A(178)+0.44*A(186)-A(196)-A(211)
  Vdot(80) = -A(59)-A(97)-A(115)+0.5*A(179)-A(197)-A(215)
  Vdot(81) = A(47)+0.13*A(50)+0.57*A(52)-A(72)-A(85)+0.75*A(88)+0.09*A(89)+0.07*A(108)+0.54*A(109)+0.25*A(115)+0.25&
               &*A(118)+0.25*A(119)+0.25*A(121)+0.25*A(122)+A(124)+A(149)+A(151)+0.35*A(152)+0.5*A(170)+0.5*A(172)+0.5&
               &*A(179)+0.5*A(180)+0.13*A(191)+0.57*A(201)+A(214)+A(215)+A(216)+A(217)+A(218)+A(219)-A(291)+A(307)+A(308)&
               &+A(310)+A(312)+A(319)+0.13*A(323)
  Vdot(82) = A(5)+A(15)+A(17)+2*A(18)+A(20)-A(21)+A(35)-A(37)+0.05*A(38)+A(48)+0.39*A(52)+0.96*A(53)+0.56*A(55)+0.75&
               &*A(56)+0.35*A(58)+0.28*A(60)+A(62)+0.3*A(64)+A(65)+0.15*A(67)+A(68)+A(82)+A(83)+0.75*A(88)+1.25*A(89)+0.75&
               &*A(106)+0.75*A(108)+0.95*A(109)+0.5*A(110)+0.75*A(111)+1.1*A(112)+1.13*A(113)+0.95*A(114)+0.75*A(115)+0.89&
               &*A(116)+0.85*A(117)+1.25*A(118)+1.25*A(119)+0.75*A(120)+0.83*A(121)+1.25*A(122)+0.29*A(132)+0.535*A(136)&
               &+2.23*A(137)+0.6*A(138)+A(150)+0.9*A(153)+0.8*A(154)+0.7*A(155)+A(159)+2*A(160)+2*A(161)+A(162)+A(163)&
               &+A(164)+A(165)+A(166)+0.5*A(183)+A(185)+0.12*A(187)+A(189)+A(190)+0.2*A(192)+0.69*A(194)+0.75*A(195)+0.4&
               &*A(196)+0.28*A(198)+0.17*A(199)+0.39*A(201)+A(202)+A(203)+0.15*A(204)+A(205)+A(224)+A(225)+A(239)-A(250)&
               &+A(260)+A(262)+3*A(267)+A(277)-A(278)-A(279)+A(295)+A(296)+0.5*A(297)+A(302)+A(305)+A(306)+A(313)+A(315)&
               &+0.627*A(317)+0.3*A(320)+0.5*A(321)+A(322)
  Vdot(83) = -A(48)-A(89)-A(129)+A(135)-A(150)-A(152)+A(174)
  Vdot(84) = -A(38)-A(39)+A(44)+A(48)+0.32*A(50)+0.75*A(52)+0.93*A(54)+A(68)+0.5*A(89)+0.75*A(106)+0.16*A(108)+0.38&
               &*A(109)+0.5*A(111)+0.5*A(122)+A(123)+2*A(125)+A(126)+0.5*A(136)+A(150)+0.04*A(154)+0.5*A(169)+0.5*A(173)&
               &+0.32*A(191)+A(193)+0.75*A(201)+A(205)+A(221)+A(222)+A(238)-A(288)-A(289)+A(300)+A(309)+A(313)+A(314)+0.32&
               &*A(323)
  Vdot(85) = A(49)-A(50)-A(51)+0.3*A(52)+A(69)-A(90)-A(108)+0.15*A(109)+0.5*A(172)-A(191)+0.3*A(201)-A(206)
  Vdot(86) = A(51)+0.04*A(53)+0.07*A(54)-A(70)+A(91)-A(255)-A(323)
  Vdot(87) = A(43)-A(44)+0.32*A(50)+A(81)-A(106)+0.16*A(108)-2*A(125)-2*A(126)-A(127)+A(159)+0.5*A(169)+A(184)+0.32&
               &*A(191)-A(221)-A(222)+A(223)+A(291)+0.85*A(294)+0.32*A(323)
  Vdot(88) = 0.53*A(58)+0.28*A(60)+0.3*A(64)+A(65)+A(93)+0.5*A(110)+0.29*A(114)+0.14*A(116)+0.25*A(118)+0.5*A(119)&
               &-A(142)-A(144)+A(148)+0.82*A(154)+0.8*A(155)+0.6*A(187)+0.8*A(192)+0.58*A(196)+0.28*A(198)+0.17*A(199)+0.5&
               &*A(202)+A(203)-A(299)-A(300)+0.58*A(318)+0.3*A(320)
  Vdot(89) = 0.19*A(50)-A(105)-A(107)+0.35*A(108)+0.25*A(111)+0.25*A(112)+0.25*A(113)+0.25*A(114)+0.25*A(116)+0.19&
               &*A(191)+A(206)+A(207)+A(208)+A(209)+A(210)+A(211)+A(212)+A(213)+A(237)-A(294)+0.19*A(323)
  Vdot(90) = A(72)-A(73)+A(74)-A(81)+A(85)-A(131)-A(159)-A(163)+0.5*A(173)-A(223)+0.15*A(294)
  Vdot(91) = 0.22*A(55)+0.1*A(67)+0.14*A(112)+0.05*A(121)-A(147)+0.387*A(153)-A(155)-A(157)-A(158)+0.288*A(194)+0.1&
               &*A(204)-A(304)-A(305)+0.259*A(317)
  Vdot(92) = -A(55)-A(94)-A(112)+A(145)+0.491*A(177)-A(194)-A(209)
  Vdot(93) = 0.34*A(55)+0.05*A(67)+0.2*A(112)+0.03*A(121)-A(146)+0.159*A(153)-A(154)+0.402*A(194)+0.05*A(204)-A(301)&
               &-A(302)-A(303)+0.368*A(317)
  Vdot(94) = -A(75)+A(76)-A(82)-A(132)+0.8*A(139)-A(160)-A(164)+A(175)-A(224)
  Vdot(95) = -A(5)+A(14)-A(15)-A(16)-2*A(17)-2*A(18)+A(19)+A(42)+0.18*A(50)+A(71)-A(88)-A(89)+A(92)+A(93)-A(106)-0.91&
               &*A(108)-A(109)-A(110)-A(111)-A(112)-A(113)-A(114)-A(115)-A(116)-A(117)-A(118)-A(119)-A(120)-A(121)-A(122)&
               &+0.44*A(130)+0.305*A(136)+A(149)+A(150)-A(159)-A(160)-A(161)-A(162)-A(163)-A(164)-A(165)-A(166)+2*A(188)&
               &-A(190)+1.18*A(191)+A(192)+A(193)+A(194)+A(195)+A(196)+A(197)+A(198)+A(199)+A(200)+A(201)+A(202)+A(203)&
               &+A(204)+A(205)+A(221)+A(223)+A(224)+A(225)+A(226)+A(260)+A(261)+A(262)+A(288)+0.4*A(290)+A(292)+2*A(293)&
               &+0.15*A(294)+A(303)+0.18*A(323)+A(324)
  Vdot(96) = A(2)-A(3)+A(5)-A(8)+A(9)-A(10)-2*A(11)+A(12)+A(13)+A(15)-A(16)+2*A(18)+A(21)-A(26)+A(27)-A(29)+A(31)+A(34)&
               &+A(35)+A(37)+0.05*A(38)+A(44)+A(47)+A(48)+0.27*A(50)+0.9*A(55)+A(56)+0.92*A(58)+0.05*A(59)+0.28*A(60)+A(62)&
               &+0.3*A(64)+A(66)+0.8*A(67)+A(82)+A(84)+A(88)+A(89)-A(90)-A(91)-A(92)-A(93)-A(94)-A(95)-A(96)-A(97)-A(98)&
               &-A(99)-A(100)-A(101)-A(102)-A(103)-A(104)+A(106)+0.64*A(108)+0.5*A(109)+0.3*A(110)+0.5*A(111)+0.92*A(112)&
               &+A(113)+A(114)+0.5*A(115)+0.64*A(116)+1.15*A(117)+0.75*A(118)+0.5*A(119)+A(120)+0.45*A(121)+0.5*A(122)&
               &+A(123)+A(124)+2*A(125)-A(127)-A(128)-A(129)-A(130)-A(131)-A(132)-A(133)-A(134)+0.3*A(136)+2*A(137)+A(138)&
               &+0.2*A(139)+A(141)+A(143)+A(148)+A(149)+A(150)+0.06*A(153)+0.06*A(154)+0.275*A(155)+A(159)+2*A(160)+A(161)+2&
               &*A(162)+0.15*A(186)+A(189)+0.27*A(191)+0.8*A(192)+0.864*A(194)+A(195)+A(196)+0.28*A(198)+A(199)+A(200)+0.5&
               &*A(202)+0.8*A(204)+A(221)+A(224)+A(226)-A(256)+A(263)-A(268)-A(270)-A(272)+A(277)+2*A(278)+A(287)+A(288)&
               &+A(291)+2*A(296)+2*A(298)+A(299)+A(302)+A(304)+A(305)+A(306)+A(307)+A(308)+A(309)+A(310)+A(311)+A(312)&
               &+A(313)+A(314)+A(315)+A(316)+A(317)+A(318)+A(319)+0.3*A(320)+A(321)+0.27*A(323)
  Vdot(97) = -A(77)+A(78)-A(83)-A(133)+0.57*A(147)+A(158)-A(161)-A(165)+A(182)+0.41*A(186)-A(225)+A(303)+A(304)
  Vdot(98) = -A(1)-A(2)-A(3)-A(4)-A(5)+A(6)+0.15*A(130)+0.3*A(131)+0.29*A(132)+0.3*A(133)+0.3*A(134)-A(136)-A(138)-0.9&
               &*A(153)-0.8*A(154)-0.8*A(155)-0.7*A(187)+A(240)-A(247)-A(274)+A(275)+A(283)+A(286)
  Vdot(99) = A(1)-A(4)+A(10)+A(15)-A(22)+A(25)-A(26)+A(27)+A(28)+A(29)+2*A(30)+A(31)-A(32)+A(33)-A(40)+A(41)+A(42)+A(44)&
               &+A(47)+A(48)+A(50)+2*A(52)+0.96*A(53)+0.93*A(54)+0.9*A(55)+A(56)+0.92*A(58)+1.95*A(59)+A(60)+A(62)+1.9*A(64)&
               &+2*A(65)+A(66)+1.15*A(67)+2*A(68)-A(73)+A(74)-A(75)+A(76)-A(77)+A(78)-A(79)+A(80)+A(81)+A(82)+A(83)+A(84)&
               &+A(109)+A(115)+A(118)+A(119)+0.575*A(121)+A(122)+A(137)+A(138)+0.5*A(179)+A(185)+A(197)+A(201)+A(202)+A(203)&
               &+0.15*A(204)+A(205)+A(214)+A(215)+A(216)+A(217)+A(218)+A(219)+2*A(227)+A(229)-A(246)-A(257)-A(275)+A(280)&
               &+A(283)+A(285)+A(287)+0.6*A(290)+A(295)+A(307)+A(308)+A(319)+A(323)
  Vdot(100) = A(4)+A(23)-A(29)-A(30)-A(31)-A(32)+A(33)-A(36)-A(37)-A(39)-A(69)-A(85)-A(107)-A(140)-A(143)-A(144)-A(156)&
                &-A(157)-A(158)-A(184)-2*A(227)-A(258)-A(262)+A(282)-A(283)-A(284)+A(285)+A(286)+0.4*A(290)
  Vdot(101) = 0.95*A(38)+A(39)-A(40)+A(41)-A(42)+0.96*A(53)+0.93*A(54)+0.72*A(60)+0.6*A(64)+A(83)+A(92)+0.3*A(110)+0.5&
                &*A(111)+0.36*A(116)+0.25*A(118)-A(130)+A(142)+A(144)-A(149)-A(150)-A(151)-A(152)+A(161)+0.5*A(183)-2*A(188)&
                &-A(189)-A(190)-A(191)-0.8*A(192)-A(194)-A(195)-A(196)-A(197)-0.28*A(198)-A(199)-A(200)-A(201)-0.5*A(202)&
                &-A(203)-A(204)-A(205)-A(206)-A(207)-A(208)-A(209)-A(210)-A(211)-A(212)-A(213)-A(214)-A(215)-A(216)-A(217)&
                &-A(218)-A(219)-A(220)-A(221)-A(222)-A(223)-A(224)-A(226)+0.6*A(290)+A(292)+0.85*A(294)+A(299)+A(302)+A(305)&
                &+A(306)+0.7*A(320)+A(322)
  Vdot(102) = -A(2)+A(3)-2*A(6)-2*A(7)-A(8)-A(9)+A(10)-A(12)-A(13)-A(14)-A(19)-A(21)-A(22)-A(23)-A(24)-A(25)-A(28)+A(29)&
                &-A(31)-A(34)-A(35)-A(38)-A(43)-A(45)-A(46)-A(49)-A(70)-A(71)-A(72)-A(86)-A(87)-A(105)-A(123)-A(124)+0.44&
                &*A(130)-A(135)+0.135*A(136)-A(137)-A(139)-A(141)-A(142)-A(145)-A(146)-A(147)-A(148)+0.27*A(153)+0.08*A(154)&
                &+0.215*A(155)-A(167)-A(168)-0.5*A(169)-0.5*A(170)-0.5*A(171)-0.5*A(172)-0.5*A(173)-A(174)-A(175)-0.5*A(176)&
                &-0.491*A(177)-A(178)-0.5*A(179)-0.5*A(180)-A(181)-A(182)-0.5*A(183)-A(185)-A(186)+0.1*A(187)-A(260)-A(261)&
                &-A(263)-A(264)-A(265)-A(266)+2*A(274)+2*A(276)+A(277)+A(280)+A(281)+A(282)+A(307)+A(308)+A(309)+A(310)&
                &+A(311)+A(312)+A(313)+A(314)+A(315)+A(316)+A(317)+A(318)+A(319)+A(320)+A(321)+A(322)+A(324)
  Vdot(103) = -A(1)-A(10)-A(15)-A(24)-A(30)+A(36)-A(42)-A(44)-A(47)-A(48)-A(50)-A(51)-A(52)-A(53)-A(54)-A(55)-A(56)&
                &-A(57)-A(58)-A(59)-A(60)-A(61)-A(62)-A(63)-A(64)-A(65)-A(66)-A(67)-A(68)-A(81)-A(82)-A(83)-A(84)+A(228)&
                &-A(269)-A(271)-A(273)+A(275)+A(281)+A(284)+A(286)
      
END SUBROUTINE Fun

! End of Fun function
! ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~



END MODULE gckpp_Function

