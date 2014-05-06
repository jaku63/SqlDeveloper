--------------------------------------------------------
--  DDL for View VBH_PM_TEMP_MEAS
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "VBH_PM_TEMP_MEAS" ("ID", "PLANT_UNIT", "PLANT_UNIT_NO", "S_HEAT_ID", "TREAT_NO", "MEAS_TIME", "TEMPERATURE", "EQUIPMENT", "CREATED", "MODIFIED", "MOP", "C_CONTENT", "O2_CONTENT", "FLAG_MANUAL") AS 
  SELECT "ID",
    "PLANT_UNIT",
    "PLANT_UNIT_NO",
    "S_HEAT_ID",
    "TREAT_NO",
    "MEAS_TIME",
    "TEMPERATURE",
    "EQUIPMENT",
    "CREATED",
    "MODIFIED",
    "MOP",
    "C_CONTENT",
    "O2_CONTENT",
    "FLAG_MANUAL"
  FROM P_TEMP_MEAS
  WHERE PLANT_UNIT='BC'
  AND EQUIPMENT   ='TUNDISH';
