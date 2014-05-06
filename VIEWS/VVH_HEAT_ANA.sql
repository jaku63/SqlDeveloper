--------------------------------------------------------
--  DDL for View VVH_HEAT_ANA
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "VVH_HEAT_ANA" ("S_HEAT_ID", "SAMPLE_PHASE", "SAMPLE_PLACE", "C_SAMPLE_TYPE_ID", "TIME_ANNOUNCE", "PHASE_REPORT", "C", "Mn", "S", "P", "Si", "Al", "Ni", "Cr", "Mo", "Ti", "V", "N", "Ca", "CaO", "SiO2", "MgO", "FeO", "SO3", "TiO2", "Al2O3", "P2O5", "MnO") AS 
  SELECT S_HEAT_ID,
  SAMPLE_PHASE,
  SAMPLE_PLACE,
  c_sample_type_id,
  TIME_ANNOUNCE,
   GET_VD_PHASE(S_HEAT_ID,TIME_ANALYSE) as PHASE_REPORT,
  "C",
  "Mn",
  "S",
  "P",
  "Si",
  "Al",
  "Ni",
  "Cr",
  "Mo",
  "Ti",
  "V",
  "N",
  "Ca",
  "CaO"	,
  "SiO2"		,
  "MgO"		,
  "FeO"		,
  "SO3"		,
  "TiO2"		,
  "V2O5"
 "Al2O3"		,
  "P2O5"		,
  "MnO"
 FROM VGH_LAB_ANA;
