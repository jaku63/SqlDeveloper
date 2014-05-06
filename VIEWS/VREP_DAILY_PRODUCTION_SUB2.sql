--------------------------------------------------------
--  DDL for View VREP_DAILY_PRODUCTION_SUB2
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "VREP_DAILY_PRODUCTION_SUB2" ("NO_OF_HEATS", "BILLET_PRODUCTION", "SLAB_PRODUCTION", "HR_PRODUCTION", "AV_HSIZE_BS", "LM_PRODUCTION", "AV_HSIZE_LM", "LM_YIELD", "LM_YIELD_CSP", "EAF_POW_CONS", "EAF_ELE_CONS") AS 
  SELECT
'---' as NO_OF_HEATS,
0 as BILLET_PRODUCTION,
0 as SLAB_PRODUCTION,
0 as HR_PRODUCTION,
0 as AV_HSIZE_BS,
0 as LM_PRODUCTION,
0 as AV_HSIZE_LM,
0 as LM_YIELD,
'---' as LM_YIELD_CSP,
0 as EAF_POW_CONS,
0 as EAF_ELE_CONS
from dual;
