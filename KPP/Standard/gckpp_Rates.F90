! ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
! 
! The Reaction Rates File
! 
! Generated by KPP-2.2.4_gc symbolic chemistry Kinetics PreProcessor
!       (http://www.cs.vt.edu/~asandu/Software/KPP)
! KPP is distributed under GPL, the general public licence
!       (http://www.gnu.org/copyleft/gpl.html)
! (C) 1995-1997, V. Damian & A. Sandu, CGRER, Univ. Iowa
! (C) 1997-2005, A. Sandu, Michigan Tech, Virginia Tech
!     With important contributions from:
!        M. Damian, Villanova University, USA
!        R. Sander, Max-Planck Institute for Chemistry, Mainz, Germany
! 
! File                 : gckpp_Rates.f90
! Time                 : Wed May  5 11:00:29 2021
! Working directory    : /net/seasasfs02/srv/export/seasasfs02/share_root/vshah/Hg/GC_Hg/KPP/Standard
! Equation file        : gckpp.kpp
! Output root filename : gckpp
! 
! ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~



MODULE gckpp_Rates

  USE gckpp_Parameters
  USE gckpp_Global
  IMPLICIT NONE

CONTAINS



! Begin Rate Law Functions from KPP_HOME/util/UserRateLaws

!~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
!  User-defined Rate Law functions
!  Note: the default argument type for rate laws, as read from the equations file, is single precision
!        but all the internal calculations are performed in double precision
!~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

!~~~>  Arrhenius
   REAL(kind=dp) FUNCTION ARR( A0,B0,C0 )
      REAL A0,B0,C0      
      ARR =  DBLE(A0) * EXP(-DBLE(B0)/TEMP) * (TEMP/300.0_dp)**DBLE(C0)
   END FUNCTION ARR        

!~~~> Simplified Arrhenius, with two arguments
!~~~> Note: The argument B0 has a changed sign when compared to ARR
   REAL(kind=dp) FUNCTION ARR2( A0,B0 )
      REAL A0,B0           
      ARR2 =  DBLE(A0) * EXP( DBLE(B0)/TEMP )              
   END FUNCTION ARR2          

   REAL(kind=dp) FUNCTION EP2(A0,C0,A2,C2,A3,C3)
      REAL A0,C0,A2,C2,A3,C3
      REAL(kind=dp) K0,K2,K3            
      K0 = DBLE(A0) * EXP(-DBLE(C0)/TEMP)
      K2 = DBLE(A2) * EXP(-DBLE(C2)/TEMP)
      K3 = DBLE(A3) * EXP(-DBLE(C3)/TEMP)
      K3 = K3*CFACTOR*1.0E6_dp
      EP2 = K0 + K3/(1.0_dp+K3/K2 )
   END FUNCTION EP2

   REAL(kind=dp) FUNCTION EP3(A1,C1,A2,C2) 
      REAL A1, C1, A2, C2
      REAL(kind=dp) K1, K2      
      K1 = DBLE(A1) * EXP(-DBLE(C1)/TEMP)
      K2 = DBLE(A2) * EXP(-DBLE(C2)/TEMP)
      EP3 = K1 + K2*(1.0E6_dp*CFACTOR)
   END FUNCTION EP3 

   REAL(kind=dp) FUNCTION FALL ( A0,B0,C0,A1,B1,C1,CF)
      REAL A0,B0,C0,A1,B1,C1,CF
      REAL(kind=dp) K0, K1     
      K0 = DBLE(A0) * EXP(-DBLE(B0)/TEMP)* (TEMP/300.0_dp)**DBLE(C0)
      K1 = DBLE(A1) * EXP(-DBLE(B1)/TEMP)* (TEMP/300.0_dp)**DBLE(C1)
      K0 = K0*CFACTOR*1.0E6_dp
      K1 = K0/K1
      FALL = (K0/(1.0_dp+K1))*   &
           DBLE(CF)**(1.0_dp/(1.0_dp+(LOG10(K1))**2))
   END FUNCTION FALL

  !---------------------------------------------------------------------------

  ELEMENTAL REAL(kind=dp) FUNCTION k_3rd(temp,cair,k0_300K,n,kinf_300K,m,fc)

    INTRINSIC LOG10

    REAL(kind=dp), INTENT(IN) :: temp      ! temperature [K]
    REAL(kind=dp), INTENT(IN) :: cair      ! air concentration [molecules/cm3]
    REAL, INTENT(IN) :: k0_300K   ! low pressure limit at 300 K
    REAL, INTENT(IN) :: n         ! exponent for low pressure limit
    REAL, INTENT(IN) :: kinf_300K ! high pressure limit at 300 K
    REAL, INTENT(IN) :: m         ! exponent for high pressure limit
    REAL, INTENT(IN) :: fc        ! broadening factor (usually fc=0.6)
    REAL(kind=dp) :: zt_help, k0_T, kinf_T, k_ratio

    zt_help = 300._dp/temp
    k0_T    = k0_300K   * zt_help**(n) * cair ! k_0   at current T
    kinf_T  = kinf_300K * zt_help**(m)        ! k_inf at current T
    k_ratio = k0_T/kinf_T
    k_3rd   = k0_T/(1._dp+k_ratio)*fc**(1._dp/(1._dp+LOG10(k_ratio)**2))

  END FUNCTION k_3rd

  !---------------------------------------------------------------------------

  ELEMENTAL REAL(kind=dp) FUNCTION k_arr (k_298,tdep,temp)
    ! Arrhenius function

    REAL,     INTENT(IN) :: k_298 ! k at T = 298.15K
    REAL,     INTENT(IN) :: tdep  ! temperature dependence
    REAL(kind=dp), INTENT(IN) :: temp  ! temperature

    INTRINSIC EXP

    k_arr = k_298 * EXP(tdep*(1._dp/temp-3.3540E-3_dp)) ! 1/298.15=3.3540e-3

  END FUNCTION k_arr

!~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
!  End of User-defined Rate Law functions
!~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

! End Rate Law Functions from KPP_HOME/util/UserRateLaws


! Begin INLINED Rate Law Functions


  REAL(kind=dp) FUNCTION OH_O1D (J, H2O, TEMP, NUMDEN)
  REAL*8 J, H2O, TEMP, NUMDEN
  REAL*8 K1, K2, K3
  REAL*8 N2, O2

  N2=0.79d0
  O2=0.21d0

  K1=1.63d-10*exp(60d0/TEMP)
  K2=2.15d-11*exp(110d0/TEMP)
  K3=3.30d-11*exp(55d0/TEMP)

  OH_O1D=J*K1*H2O/(K1*H2O+K2*N2*NUMDEN+K3*O2*NUMDEN)
  END FUNCTION OH_O1D

  REAL(kind=dp) FUNCTION HO2_H2O(H2O,TEMP)
  REAL*8 TEMP, H2O
  HO2_H2O=1+1.4D-21*H2O*EXP(2200/TEMP)
  END FUNCTION HO2_H2O


  REAL(kind=dp) FUNCTION GCARR( A0,B0,C0 )
      REAL A0,B0,C0 
      GCARR =  DBLE(A0) * EXP(DBLE(C0)/TEMP) * (300._dp/TEMP)**DBLE(B0)
  END FUNCTION GCARR    

  REAL(kind=dp) FUNCTION GCARR2( A0,B0,C0 )
 ! Low-pressure limit rate coefficient for a 
 ! three-body reaction
      REAL A0,B0,C0 
      GCARR2 =  GCARR( A0,B0,C0 )*NUMDEN
  END FUNCTION GCARR2    
  

  REAL(kind=dp) FUNCTION GC_HO2NO3( A0,B0,C0,A1,B1,C1 )
      REAL A0,B0,C0,A1,B1,C1
      REAL(kind=dp) :: R0,R1
      R0 =  DBLE(A0) * EXP(DBLE(C0)/TEMP) * (300._dp/TEMP)**DBLE(B0)
      R1 =  DBLE(A1) * EXP(DBLE(C1)/TEMP) * (300._dp/TEMP)**DBLE(B1)

      GC_HO2NO3 = (R0+R1*NUMDEN)*(1.D0+1.4E-21_dp*H2O* &
                   EXP(2200.E+0_dp/TEMP))
  END FUNCTION GC_HO2NO3    
  
  REAL(kind=dp) FUNCTION GC_TBRANCH( A0,B0,C0,A1,B1,C1 )
! Temperature Dependent Branching Ratio
      REAL A0,B0,C0,A1,B1,C1
      REAL(kind=dp) :: R0,R1
      R0 =  DBLE(A0) * EXP(DBLE(C0)/TEMP) * (300._dp/TEMP)**DBLE(B0)
      R1 =  DBLE(A1) * EXP(DBLE(C1)/TEMP) * (300._dp/TEMP)**DBLE(B1)

      GC_TBRANCH = R0/(1.D0+R1)

  END FUNCTION GC_TBRANCH

  REAL(kind=dp) FUNCTION GC_RO2HO2( A0,B0,C0,A1,B1,C1 )
! Carbon Dependence of RO2+HO2
      REAL A0,B0,C0,A1,B1,C1
      REAL(kind=dp) :: R0,R1
      R0 =  DBLE(A0) * EXP(DBLE(C0)/TEMP) * (300._dp/TEMP)**DBLE(B0)
      R1 =  DBLE(A1) * EXP(DBLE(C1)/TEMP) * (300._dp/TEMP)**DBLE(B1)

      GC_RO2HO2 = R0*(1E0-EXP(-0.245E0*R1))

  END FUNCTION GC_RO2HO2

  REAL(kind=dp) FUNCTION GC_DMSOH( A0,B0,C0,A1,B1,C1 )
! DMS+OH+O2
    REAL A0,B0,C0,A1,B1,C1
    REAL(kind=dp) :: R0,R1
    R0 =  DBLE(A0) * EXP(DBLE(C0)/TEMP) * (300._dp/TEMP)**DBLE(B0)
    R1 =  DBLE(A1) * EXP(DBLE(C1)/TEMP) * (300._dp/TEMP)**DBLE(B1)
!    GC_DMSOH = R0/(1e0_dp+R1*0.2095e0_dp)
    GC_DMSOH = (R0*NUMDEN*0.2095e0_dp)/(1e0_dp+R1*0.2095e0_dp)
    
  END FUNCTION GC_DMSOH

  REAL(kind=dp) FUNCTION GC_GLYXNO3( A0,B0,C0 )
! ---  K = K1*([O2]+3.5D18)/(2*[O2]+3.5D18) --- HO2+2*CO branch of GLYX+OH/NO3
    REAL A0,B0,C0
    REAL(kind=dp) R0
    REAL(kind=dp) O2

    O2 = NUMDEN*0.2095e0_dp
    R0 =  DBLE(A0) * EXP(DBLE(C0)/TEMP) * (300._dp/TEMP)**DBLE(B0)
    GC_GLYXNO3 = R0*(O2+3.5E+18_dp)/(2.E+0_dp*O2+3.5E+18_dp)
    
  END FUNCTION GC_GLYXNO3

  REAL(kind=dp) FUNCTION GC_OHHNO3( A0,B0,C0,A1,B1,C1,A2,B2,C2 )
! ---  OH + HNO3:   K = K0 + K3[M] / (1 + K3[M]/K2)  ------
    REAL A0,B0,C0,A1,B1,C1,A2,B2,C2
    REAL(kind=dp) R0,R1,R2
    R0 =  DBLE(A0) * EXP(DBLE(C0)/TEMP) * (300._dp/TEMP)**DBLE(B0)
    R1 =  DBLE(A1) * EXP(DBLE(C1)/TEMP) * (300._dp/TEMP)**DBLE(B1)
    R2 =  NUMDEN*(DBLE(A2) * EXP(DBLE(C2)/TEMP) * (300._dp/TEMP)**DBLE(B2))
    GC_OHHNO3 = R0 + R2/(1.E0_dp + R2/R1)
    
  END FUNCTION GC_OHHNO3

  REAL(kind=dp) FUNCTION GC_GLYCOHA( A0,B0,C0 )
! 
    REAL A0,B0,C0,R0,GLYC_FRAC
    R0 =  DBLE(A0) * EXP(DBLE(C0)/TEMP) * (300._dp/TEMP)**DBLE(B0)
    GLYC_FRAC=1e+0_dp-11.0729e+0_dp*EXP(-(1._dp/73._dp)*TEMP)
    IF (GLYC_FRAC<0e+0_dp) GLYC_FRAC=0e+0_dp
    GC_GLYCOHA=R0*GLYC_FRAC

  END FUNCTION GC_GLYCOHA

  REAL(kind=dp) FUNCTION GC_GLYCOHB( A0,B0,C0 )
! 
    REAL A0,B0,C0
    REAL(kind=dp) :: R0,GLYC_FRAC
    R0 =  DBLE(A0) * EXP(DBLE(C0)/TEMP) * (300._dp/TEMP)**DBLE(B0)
    GLYC_FRAC=1e+0_dp-11.0729e+0_dp*EXP(-(1._dp/73._dp)*TEMP)
    IF (GLYC_FRAC<0e+0_dp) GLYC_FRAC=0e+0_dp
    GC_GLYCOHB=R0*(1e0_dp-GLYC_FRAC)
    
  END FUNCTION GC_GLYCOHB

  REAL(kind=dp) FUNCTION GC_HACOHA( A0,B0,C0 )
! 
    REAL A0,B0,C0
    REAL(kind=dp) :: R0,HAC_FRAC
    R0 =  DBLE(A0) * EXP(DBLE(C0)/TEMP) * (300._dp/TEMP)**DBLE(B0)
    HAC_FRAC=1e+0_dp-23.7e+0_dp*EXP(-(1._dp/60._dp)*TEMP)
    IF (HAC_FRAC<0e+0_dp) HAC_FRAC=0e+0_dp
    GC_HACOHA=R0*HAC_FRAC

  END FUNCTION GC_HACOHA

  REAL(kind=dp) FUNCTION GC_HACOHB( A0,B0,C0 )
! 
    REAL A0,B0,C0
    REAL(kind=dp) :: R0,HAC_FRAC
    R0 =  DBLE(A0) * EXP(DBLE(C0)/TEMP) * (300._dp/TEMP)**DBLE(B0)
    HAC_FRAC=1e+0_dp-23.7e+0_dp*EXP(-(1._dp/60._dp)*TEMP)
    IF (HAC_FRAC<0e+0_dp) HAC_FRAC=0e+0_dp
    GC_HACOHB=R0*(1.E0_dp-HAC_FRAC)
    
  END FUNCTION GC_HACOHB

  REAL(kind=dp) FUNCTION GC_OHCO( A0,B0,C0 )

    REAL A0,B0,C0,R0
    REAL KLO1,KLO2,KHI1,KHI2,XYRAT1,XYRAT2,BLOG1,BLOG2,FEXP1,FEXP2
    REAL KCO1,KCO2,KCO

    R0 =  DBLE(A0) * EXP(DBLE(C0)/TEMP) * (300._dp/TEMP)**DBLE(B0)
    R0 = R0 * (1.E+0_dp + 0.6e+0_dp*9.871E7_dp*PRESS)

    ! new OH+CO rate from JPL2006.
    KLO1=5.9E-33_dp*(300._dp/TEMP)**(1.E+0_dp) 
    KHI1=1.1E-12_dp*(300._dp/TEMP)**(-1.3E0_dp)
    XYRAT1=KLO1*NUMDEN/KHI1
    BLOG1=LOG10(XYRAT1)
    FEXP1=1.E+0_dp/(1.E+0_dp+BLOG1*BLOG1)
    KCO1=KLO1*NUMDEN*0.6**FEXP1/(1.e+0_dp+XYRAT1)
    KLO2=1.5E-13_dp*(300._dp/TEMP)**(0.E+0_dp)
    KHI2=2.1e+09_dp *(300._dp/TEMP)**(-6.1E+0_dp)
    XYRAT2=KLO2*NUMDEN/KHI2
    BLOG2=LOG10(XYRAT2)
    FEXP2=1.E+0_dp/(1.E+0_dp+BLOG2*BLOG2)
    KCO2=KLO2*0.6**FEXP2/(1.e+0_dp+XYRAT2)
    KCO=KCO1+KCO2
    GC_OHCO=KCO
    
  END FUNCTION GC_OHCO

  REAL(kind=dp) FUNCTION GC_RO2NO( B,A0,B0,C0,A1,B1,C1 )
    ! ---  K = K1*(1-FYRNO3(K2,M,T))  ---  abstraction branch of RO2+NO
    CHARACTER(*) B !Branch Toggle
    REAL A0,B0,C0,A1,B1,C1
    REAL(kind=dp) :: R0,R1
    REAL(kind=dp) :: YYYN, XXYN,  AAA,  RARB, ZZYN
    REAL(kind=dp) :: XF, ALPHA, Y300, BETA, XMINF, XM0
    REAL(kind=dp) :: FYRNO3
    Y300 = 0.826
    ALPHA= 1.94e-22
    BETA = 0.97
    XM0  = 0.
    XMINF= 8.1
    XF   = 0.411
    
    R0 =  DBLE(A0) * EXP(DBLE(C0)/TEMP) * (300._dp/TEMP)**DBLE(B0)
    R1 =  DBLE(A1) * EXP(DBLE(C1)/TEMP) * (300._dp/TEMP)**DBLE(B1)
    
    ! Initialize static variables
    
    XXYN   = ALPHA*EXP(BETA*R1)*NUMDEN*((300./TEMP)**XM0)
    YYYN   = Y300*((300./TEMP)**XMINF)
    AAA    = LOG10(XXYN/YYYN)
    ZZYN   = 1./(1.+ AAA*AAA )
    RARB   = (XXYN/(1.+ (XXYN/YYYN)))*(XF**ZZYN)
    FYRNO3 = RARB/(1. + RARB)
    IF (trim(B) .eq. 'A') THEN
       GC_RO2NO     = R0 * FYRNO3
    ELSEIF (trim(B) .eq. 'B') THEN
       GC_RO2NO     = R0 * (1.E+0_dp - FYRNO3)
    ENDIF

  END FUNCTION GC_RO2NO

  REAL(kind=dp) FUNCTION GCJPL3( k0_300, n, ki_300, m)
!  Functions given in JPL Booklet
      REAL k0_300, n, ki_300,m
      REAL k0, ki

      k0=k0_300*((TEMP/300.d0)**(-n))
      ki=ki_300*((TEMP/300.d0)**(-m))

!      GCJPL3=(k0*NUMDEN)/(1+k0*NUMDEN/ki)*0.6** &
!	((1+((LOG10(k0*NUMDEN/ki))**2d0)**-1.0d0))
      GCJPL3=(k0/(1.d0+k0/(ki/NUMDEN)))*0.6** &
        ((1+((log10(k0/(ki/NUMDEN)))**2d0)**1.0e0))
      GCJPL3=GCJPL3*NUMDEN
  END FUNCTION GCJPL3
  
  REAL(kind=dp) FUNCTION GCJPLEQ( A0,B0,C0,A1,B1,C1,A2,B2,C2,FV,FCT1,FCT2 )
 ! Function calculates the rate constant of the forward reaction
 ! calculates the equilibrium constant 
 ! Find the backwards reaction by K=kforward/kbackwards
       REAL A0,B0,C0,A1,B1,C1
       REAL(kind=dp) :: R0,R1
       REAL, OPTIONAL :: A2,B2,C2,FV,FCT1,FCT2 !If a P-dependent rxn

       ! Calculate Backwards reaction
       R0 = GCARR( A0,B0,C0 )

       ! Calculate forwards reaction
       IF (present(A2)) THEN ! P-dependent
          IF (present(B2) .and. present(C2) .and. present(FV) &
                          .and. present(FCT1) .and. present(FCT2)) THEN
	     R1 = GCJPLPR( A1,B1,C1,A2,B2,C2,FV,FCT1,FCT2)
          ELSE ! Missing params!
	     write(*,'(a)') 'GCJPLEQ: Missing parameters for P-dependent reaction.'
	     write(*,'(a)') 'GCJPLEQ: Returning zero'
	     GCJPLEQ = 0.E0
	     RETURN
	  ENDIF
       ELSE
          R1 = gcarr( A1,B1,C1 ) !Std. Arrhenius eqn.
       ENDIF

       GCJPLEQ=R1/R0
  END FUNCTION GCJPLEQ
 
  REAL(kind=dp) FUNCTION GCJPLPR(A0,B0,C0,A1,B1,C1,FV,FCT1,FCT2)
! * PRESSURE-DEPENDENT EFFECTS 
! * ADD THE THIRD BODY EFFECT FOR PRESSURE DEPENDENCE OF RATE
! * COEFFICIENTS.
! A0 B0, & C0 are the Arrhenius parameters for the lower-limit
! rate. A1, B1 & C1 are the upper-limit parameters.
! FV is the falloff curve paramter, (SEE ATKINSON ET. AL (1992)
! J. PHYS. CHEM. REF. DATA 21, P. 1145). USUALLY = 0.6 
! 
       REAL A0,B0,C0,A1,B1,C1,FV,FCT1,FCT2
       REAL FCT,XYRAT,BLOG,RLOW,RHIGH,FEXP
       
       RLOW  = GCARR( A0,B0,C0 )*NUMDEN
       RHIGH = GCARR( A1,B1,C1 )

       IF     (FCT2.NE.0.) THEN	
             FCT            = EXP(-TEMP / FCT1) + EXP(-FCT2 / TEMP) 
             XYRAT          = RLOW/RHIGH
             BLOG           = LOG10(XYRAT)
             FEXP           = 1.e+0_dp / (1.e+0_dp + BLOG * BLOG)
             GCJPLPR        = RLOW*FCT**FEXP/(1e+0_dp+XYRAT) 
       ELSEIF (FCT1.NE.0.) THEN 
             FCT            = EXP(-TEMP / FCT1)
             XYRAT          = RLOW/RHIGH
             BLOG           = LOG10(XYRAT)
             FEXP           = 1.e+0_dp / (1.e+0_dp + BLOG * BLOG)
             GCJPLPR        = RLOW*FCT**FEXP/(1e+0_dp+XYRAT)  
       ELSE
             XYRAT          = RLOW/RHIGH
             BLOG           = LOG10(XYRAT)
             FEXP           = 1.e+0_dp / (1.e+0_dp + BLOG * BLOG)
             GCJPLPR        = RLOW*FV**FEXP/(1e+0_dp+XYRAT)
       ENDIF
       

  END FUNCTION GCJPLPR
 
  REAL(kind=dp) FUNCTION GCIUPAC3(ko_300,n,ki_300,m,Fc) 
! Function calcualtes the rate constant of 3 body reaction using IUPAC 
! methology
  REAL ko_300,n,ki_300,m,Fc
  REAL ko, ki, F, NN

  ko=ko_300*((TEMP/300.e0)**n)*NUMDEN
  ki=ki_300*((TEMP/300.e0)**m)

  NN=0.75-1.27*LOG10(Fc)
  F=10.0**(LOG10(Fc)/(1.0e0+(LOG10(ko/ki)/NN)**2.0))

  GCIUPAC3=ko/(1+ko/ki)*F
  END FUNCTION GCIUPAC3


! End INLINED Rate Law Functions

! ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
! 
! Update_SUN - update SUN light using TIME
!   Arguments :
! 
! ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

  SUBROUTINE Update_SUN()
      !USE gckpp_Parameters
      !USE gckpp_Global

    IMPLICIT NONE

    REAL(kind=dp) :: SunRise, SunSet
    REAL(kind=dp) :: Thour, Tlocal, Ttmp 
    ! PI - Value of pi
    REAL(kind=dp), PARAMETER :: PI = 3.14159265358979d0
    
    SunRise = 4.5_dp 
    SunSet  = 19.5_dp 
    Thour = TIME/3600.0_dp 
    Tlocal = Thour - (INT(Thour)/24)*24

    IF ((Tlocal>=SunRise).AND.(Tlocal<=SunSet)) THEN
       Ttmp = (2.0*Tlocal-SunRise-SunSet)/(SunSet-SunRise)
       IF (Ttmp.GT.0) THEN
          Ttmp =  Ttmp*Ttmp
       ELSE
          Ttmp = -Ttmp*Ttmp
       END IF
       SUN = ( 1.0_dp + COS(PI*Ttmp) )/2.0_dp 
    ELSE
       SUN = 0.0_dp 
    END IF

 END SUBROUTINE Update_SUN

! End of Update_SUN function
! ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


! ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
! 
! Update_RCONST - function to update rate constants
!   Arguments :
! 
! ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

SUBROUTINE Update_RCONST ( )




! Begin INLINED RCONST


! End INLINED RCONST

  RCONST(1) = (GCARR2(1.46E-32,1.86,0.0))
  RCONST(2) = (GCARR2(1.6E-9,1.86,-7801.0))
! RCONST(3) = constant rate coefficient
! RCONST(4) = constant rate coefficient
  RCONST(5) = (GCJPLPR(4.3E-30,5.9,0.0,1.2E-10,1.90,0.0,0.6,0.0,0.0))
  RCONST(6) = (GCJPLPR(4.3E-30,5.9,0.0,6.9E-11,2.40,0.0,0.6,0.0,0.0))
  RCONST(7) = (GCJPLPR(4.3E-30,5.9,0.0,6.9e-11,2.40,0.0,0.6,0.0,0.0))
  RCONST(8) = (GCJPLPR(4.3E-30,5.9,0.0,6.9E-11,2.40,0.0,0.6,0.0,0.0))
  RCONST(9) = (GCJPLPR(4.3E-30,5.9,0.0,6.9E-11,2.40,0.0,0.6,0.0,0.0))
! RCONST(10) = constant rate coefficient
  RCONST(11) = (GCARR(4.1E-12,0.0,-856.0))
  RCONST(12) = (GCARR(6.0E-11,0.0,-550.0))
! RCONST(13) = constant rate coefficient
  RCONST(14) = (GCARR2(2.25E-33,0.0,680.0))
! RCONST(15) = constant rate coefficient
! RCONST(16) = constant rate coefficient
  RCONST(17) = (GCJPLPR(4.3E-30,5.9,0.0,1.2E-10,1.90,0.0,0.6,0.0,0.0))
  RCONST(18) = (GCJPLPR(4.3E-30,5.9,0.0,6.9E-11,2.40,0.0,0.6,0.0,0.0))
  RCONST(19) = (GCJPLPR(4.3E-30,5.9,0.0,6.9E-11,2.40,0.0,0.6,0.0,0.0))
  RCONST(20) = (GCJPLPR(4.3E-30,5.9,0.0,6.9E-11,2.40,0.0,0.6,0.0,0.0))
! RCONST(21) = constant rate coefficient
! RCONST(22) = constant rate coefficient
! RCONST(23) = constant rate coefficient
  RCONST(24) = (GCARR(4.1E-12,0.0,-856.0))
  RCONST(25) = (GCARR(6.0E-11,0.0,-550.0))
  RCONST(26) = (GCARR2(3.34E-33,0.0,43.0))
  RCONST(27) = (GCARR2(1.22E-9,0.0,-5720.0))
  RCONST(28) = (GCJPLPR(4.1E-30,5.9,0.0,1.2E-10,1.90,0.0,0.6,0.0,0.0))
  RCONST(29) = (GCJPLPR(4.1E-30,5.9,0.0,6.9E-11,2.40,0.0,0.6,0.0,0.0))
  RCONST(30) = (GCJPLPR(4.1E-30,5.9,0.0,6.9E-11,2.40,0.0,0.6,0.0,0.0))
  RCONST(31) = (GCJPLPR(4.1E-30,5.9,0.0,6.9E-11,2.40,0.0,0.6,0.0,0.0))
  RCONST(32) = (GCJPLPR(4.1E-30,5.9,0.0,6.9E-11,2.40,0.0,0.6,0.0,0.0))
  RCONST(33) = (GCJPLPR(4.1E-30,5.9,0.0,6.9E-11,2.40,0.0,0.6,0.0,0.0))
! RCONST(34) = constant rate coefficient
  RCONST(35) = (GCARR(4.1E-12,0.0,-856.0))
  RCONST(36) = (GCARR(6.0E-11,0.0,-550.0))
  RCONST(37) = (HET(ind_HGBRNO2,1))
  RCONST(38) = (HET(ind_HGBRHO2,1))
  RCONST(39) = (HET(ind_HGBROH,1))
  RCONST(40) = (HET(ind_HGBRBRO,1))
  RCONST(41) = (HET(ind_HGBRCLO,1))
  RCONST(42) = (HET(ind_HGBR2,1))
  RCONST(43) = (HET(ind_HGCLNO2,1))
  RCONST(44) = (HET(ind_HGCLHO2,1))
  RCONST(45) = (HET(ind_HGCLOH,1))
  RCONST(46) = (HET(ind_HGCLBRO,1))
  RCONST(47) = (HET(ind_HGCLCLO,1))
  RCONST(48) = (HET(ind_HGCLBR,1))
  RCONST(49) = (HET(ind_HGCL2,1))
  RCONST(50) = (HET(ind_HGOHNO2,1))
  RCONST(51) = (HET(ind_HGOHHO2,1))
  RCONST(52) = (HET(ind_HGOHOH,1))
  RCONST(53) = (HET(ind_HGOHBRO,1))
  RCONST(54) = (HET(ind_HGOHCLO,1))
  RCONST(55) = (HET(ind_HGBRNO2,2))
  RCONST(56) = (HET(ind_HGBRHO2,2))
  RCONST(57) = (HET(ind_HGBROH,2))
  RCONST(58) = (HET(ind_HGBRBRO,2))
  RCONST(59) = (HET(ind_HGBRCLO,2))
  RCONST(60) = (HET(ind_HGBR2,2))
  RCONST(61) = (HET(ind_HGCLNO2,2))
  RCONST(62) = (HET(ind_HGCLHO2,2))
  RCONST(63) = (HET(ind_HGCLOH,2))
  RCONST(64) = (HET(ind_HGCLBRO,2))
  RCONST(65) = (HET(ind_HGCLCLO,2))
  RCONST(66) = (HET(ind_HGCLBR,2))
  RCONST(67) = (HET(ind_HGOHNO2,2))
  RCONST(68) = (HET(ind_HGOHHO2,2))
  RCONST(69) = (HET(ind_HGOHOH,2))
  RCONST(70) = (HET(ind_HGOHBRO,2))
  RCONST(71) = (HET(ind_HGOHCLO,2))
  RCONST(72) = (PHOTOL(25))
  RCONST(73) = (PHOTOL(26))
  RCONST(74) = (PHOTOL(27))
  RCONST(75) = (PHOTOL(4))
  RCONST(76) = (PHOTOL(7))
  RCONST(77) = (PHOTOL(8))
  RCONST(78) = (PHOTOL(9))
  RCONST(79) = (PHOTOL(10))
  RCONST(80) = (PHOTOL(11))
  RCONST(81) = (PHOTOL(12))
  RCONST(82) = (PHOTOL(14))
  RCONST(83) = (PHOTOL(15))
  RCONST(84) = (PHOTOL(16))
  RCONST(85) = (PHOTOL(17))
  RCONST(86) = (PHOTOL(18))
  RCONST(87) = (PHOTOL(19))
  RCONST(88) = (PHOTOL(6))
  RCONST(89) = (PHOTOL(20))
  RCONST(90) = (PHOTOL(21))
  RCONST(91) = (PHOTOL(5))
  RCONST(92) = (PHOTOL(23))
  RCONST(93) = (PHOTOL(24))
  RCONST(94) = (PHOTOL(13))
      
END SUBROUTINE Update_RCONST

! End of Update_RCONST function
! ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


! ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
! 
! Update_PHOTO - function to update photolytical rate constants
!   Arguments :
! 
! ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

SUBROUTINE Update_PHOTO ( )


   USE gckpp_Global

  RCONST(72) = (PHOTOL(25))
  RCONST(73) = (PHOTOL(26))
  RCONST(74) = (PHOTOL(27))
  RCONST(75) = (PHOTOL(4))
  RCONST(76) = (PHOTOL(7))
  RCONST(77) = (PHOTOL(8))
  RCONST(78) = (PHOTOL(9))
  RCONST(79) = (PHOTOL(10))
  RCONST(80) = (PHOTOL(11))
  RCONST(81) = (PHOTOL(12))
  RCONST(82) = (PHOTOL(14))
  RCONST(83) = (PHOTOL(15))
  RCONST(84) = (PHOTOL(16))
  RCONST(85) = (PHOTOL(17))
  RCONST(86) = (PHOTOL(18))
  RCONST(87) = (PHOTOL(19))
  RCONST(88) = (PHOTOL(6))
  RCONST(89) = (PHOTOL(20))
  RCONST(90) = (PHOTOL(21))
  RCONST(91) = (PHOTOL(5))
  RCONST(92) = (PHOTOL(23))
  RCONST(93) = (PHOTOL(24))
  RCONST(94) = (PHOTOL(13))
      
END SUBROUTINE Update_PHOTO

! End of Update_PHOTO function
! ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~



END MODULE gckpp_Rates

