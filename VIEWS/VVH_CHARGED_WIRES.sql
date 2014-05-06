--------------------------------------------------------
--  DDL for View VVH_CHARGED_WIRES
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "VVH_CHARGED_WIRES" ("PHASE", "ID", "S_HEAT_ID", "C_PLANT_UNIT_ID", "UNIT_CODE", "UNIT_NO", "STRAND_NO", "C_MATERIAL_ID", "MAT_CODE", "LEGTH_CONSUMED", "WEIGHT_CONSUMED", "FILL_RATIO", "START_TIME", "STOP_TIME") AS 
  SELECT
    GET_VD_PHASE(S_HEAT_ID,STOP_TIME) as PHASE,
    "ID",
    S_HEAT_ID,
    "C_PLANT_UNIT_ID",
    "UNIT_CODE",
    "UNIT_NO",
    "STRAND_NO",
    "C_MATERIAL_ID",
    "MAT_CODE",
    "LEGTH_CONSUMED",
    "WEIGHT_CONSUMED",
    "FILL_RATIO",
    "START_TIME",
    "STOP_TIME"
  FROM VGH_CHARGED_WIRES v
  WHERE UNIT_CODE='VD';
