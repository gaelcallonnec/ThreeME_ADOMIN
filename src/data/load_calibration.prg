subroutine load_calibration

  ' Load parameter from Excel and store them into a matrix (L,C)

  matrix(150,150) SUPPLY_USE_DOM                                ' Matrix supply use domestic
  SUPPLY_USE_DOM.read(E6,s=SUPPLY_USE_DOM) {%data_calibration}

  matrix(150,150) SUPPLY_USE_FOREIGN                                ' Matrix supply use Foreign
  SUPPLY_USE_FOREIGN.read(E6,s=SUPPLY_USE_FOREIGN) {%data_calibration}

  matrix(50,10) OTH_VARIABLE                            ' Matrix of the data OTHER_VARIABLES
  OTH_VARIABLE.read(D4,s=OTH_VARIABLE) {%data_calibration}

  matrix(150,1) STEADYSTATE                                     ' Matrix of the coefficients of the Steady state rate
  STEADYSTATE.read(B2,s=BaselineHypotheses) {%data_calibration}

  matrix(50,1) NELEMSET                                     ' Matrix of the coefficients of the Steady state rate
  NELEMSET.read(G2,s=BaselineHypotheses) {%data_calibration}

  matrix(100,6) ADJUST                                      ' Matrix of the coefficients of the ajustment processes
  ADJUST.read(C4,s=Adjustment) {%data_calibration}

  matrix(25,41) INV_MAT                                 ' Matrix investment by sector incommodities
  INV_MAT.read(D4,s=INV_MAT)           {%data_calibration}

  matrix(37,7) ES_KLEM                                  ' Matrix of elasticity of substitution (level 1, KLEM)
  ES_KLEM.read(B4,s=ELAS_L1_KLEM)          {%data_calibration}

  matrix(37,6) ES_NRJ                                   ' Matrix of elasticity of substitution (level 2, between type of energy)
  ES_NRJ.read(B4,s=ELAS_L2_NRJ) {%data_calibration}

  matrix(37,9) ES_TRANSP_CI                                 ' Matrix of elasticity of substitution (level 2, between type of transport)
  ES_TRANSP_CI.read(B4,s=ELAS_L2_TRANSPORT) {%data_calibration}

  matrix(24,6) ES_TRANSP_MARG                                   ' Matrix of elasticity of substitution (Level 3, Transport Margins, between type of transport)
  ES_TRANSP_MARG.read(B4,s=ELAS_TRANSP_MARGIN) {%data_calibration}

  matrix(37,24) ES_CIM                                  ' Matrix of elasticity of substitution (level 3, Material between domestic and imported)
  ES_CIM.read(B4,s=ELAS_L3_IMP_DOM) {%data_calibration}

  matrix(37,24) ES_IAM                                  ' Matrix of elasticity of substitution (level 3, Investment allocation between domestic and imported)
  ES_IAM.read(B4,s=ELAS_INVEST) {%data_calibration}

  matrix(82,5) EMISSION                                 ' Matrix of the emssions of GHG by type of source
  EMISSION.read(C3,s=GHG_Emissions) {%data_calibration}
 
   matrix(37,4) EMS_INDUS                                ' Matrix of the emssions of GHG by type of source
  EMS_INDUS.read(P5,s=EnergyIndus) {%data_calibration}
   
  matrix(37,4) ENER_INDUS                     ' Matrix of the energy production features
  ENER_INDUS.read(C5,s=EnergyIndus) {%data_calibration}

  matrix(40,10) DEMOGRAPHY                                  ' Matrix of the emssions of GHG by type of source
  DEMOGRAPHY.read(C3,s=Demography) {%data_calibration}

  matrix(37,7)RHO                                   ' Matrix of the parameters in the wage equation
  RHO.read(D5,s=ELAS_WAGE) {%data_calibration}

  matrix(100,10) household                           ' Matrix of the data household
  household.read(D4,s=household) {%data_calibration}

  matrix(1,1) ES_LES_CES                                ' Matrix of the elasticity of the household's consumption eq.
  ES_LES_CES.read(E1,s=ELAS_OTHER) {%data_calibration}

  matrix(1,11) ES_LVL3_NRJ                              ' Matrix of the parameters in the wage equation
  ES_LVL3_NRJ.read(B6,s=ELAS_OTHER) {%data_calibration}

  matrix(1,30) ES_LVL4_HH                           ' Matrix of the parameters in the wage equation
  ES_LVL4_HH.read(B11,s=ELAS_OTHER) {%data_calibration}

  matrix(1,24) ES_GOV                       ' Matrix of the parameters in the wage equation
  ES_GOV.read(B16,s=ELAS_OTHER) {%data_calibration}

  matrix(24,2) ES_X                     ' Matrix of the parameters in export equation
  ES_X.read(B4,s=ELAS_EXPORT) {%data_calibration}
  
   matrix(24,3) ES_eta_K_E                     ' Matrix of the parameters in endogenous elasticity of substitution between capital and energy
  ES_eta_K_E.read(B43,s=ELAS_L2_NRJ)          {%data_calibration}

  matrix(24,1) FOOTPRINT                     ' Matrix of the imports carbon intensity 
  FOOTPRINT.read(F4,s=FOOTPRINT)          {%data_calibration}

    matrix(23,57) MTEP                     ' Matrix of the energy production features
  MTEP.read(C4,s=Donnees_energie) {%data_calibration}

  matrix(35,5) MTEP_USE                   ' Matrix of the energy production features
  MTEP_USE.read(C33,s=Donnees_energie) {%data_calibration}
   
  matrix(37,4) MTEP_INDUS                     ' Matrix of the energy production features
  MTEP_INDUS.read(J5,s=EnergyIndus) {%data_calibration}
  
  matrix(300,10) HOUSEHOLD_HYBRID_BUIL                          ' Matrix of the data HOUSEHOLD_HYBRID_BUIL
  HOUSEHOLD_HYBRID_BUIL.read(D4,s=Household_hybrid_BUIL) {%data_calibration}

  matrix(370,10) HOUSEHOLD_HYBRID_AUTO                          ' Matrix of the data HOUSEHOLD_HYBRID_AUTO
  HOUSEHOLD_HYBRID_AUTO.read(D4,s=Household_hybrid_AUTO) {%data_calibration}

  matrix(100,10) HOUSEHOLD_HYBRID_Trans                         ' Matrix of the data HOUSEHOLD_HYBRID_Trans
  HOUSEHOLD_HYBRID_Trans.read(D4,s=Household_hybrid_Transition) {%data_calibration}
  
  matrix(37,37) TECH_COEF_VAR                         ' Matrix of the TECHNICAL COEFFICIENT VARIATION
  TECH_COEF_VAR.read(B3,s=technical_coef_variation) {%data_calibration}
  
  matrix(37,37) TECH_COEF_VAR_2                         ' Matrix of the TECHNICAL COEFFICIENT VARIATION  in choc scenario
  TECH_COEF_VAR_2.read(B3,s=technical_coef_variation_2) {%data_calibration}
endsub
