--------------------------------------------------------
--  DDL for View VGH_DELAYS
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "VGH_DELAYS" ("ID", "S_HEAT_ID", "HEAT_NO", "PLANT_UNIT_ID", "UNIT_NO", "UNIT_CODE", "START_TIME", "END_TIME", "DELAY_CODE", "DELAY_CODE_ID", "COMMENT", "USER_NAME") AS 
  SELECT "ID",
    "S_HEAT_ID",
    (select HEAT_NO FROM S_HEAT s WHERE s.ID="S_HEAT_ID") as HEAT_NO,
    "PLANT_UNIT_ID",
    (SELECT PLANT_UNIT_NO FROM C_PLANT_UNIT cu WHERE cu.ID="PLANT_UNIT_ID") as UNIT_NO,
    (SELECT PLANT_UNIT_CODE FROM C_PLANT_UNIT cu WHERE cu.ID="PLANT_UNIT_ID") as UNIT_CODE,
    "START_TIME",
    "END_TIME",
    (SELECT "DELAY_CODE" FROM C_DELAY cd WHERE cd.ID = "DELAY_CODE_ID") as "DELAY_CODE",
    "DELAY_CODE_ID",
    "USER_DESCR" as "COMMENT",
    "USER_NAME"
  FROM P_DELAY;
