--------------------------------------------------------
--  DDL for View VGH_RETURN_HEATS
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "VGH_RETURN_HEATS" ("ID", "S_HEAT_ID", "HEAT_ID", "C_STEEL_GRADE_ID", "C_EQUIPMENT_ID_LADLE", "RELADLE_TIME", "LAST_PLANT_UNIT_ID", "STEEL_TEMP", "STEEL_TEMP_TIME", "STEEL_WEIGHT", "SLAG_WEIGHT", "C_HEAT_STATUS_ID", "STATUS_DATE", "END_TIME", "CREATED", "MODIFIED", "MOP", "S_PROD_ORDER_ID") AS 
  SELECT "ID",
    "S_HEAT_ID",
    (SELECT HEAT_NO FROM S_HEAT WHERE ID="S_HEAT_ID"
    ) AS HEAT_ID,
    "C_STEEL_GRADE_ID",
    "C_EQUIPMENT_ID_LADLE",
    "RELADLE_TIME",
    "LAST_PLANT_UNIT_ID",
    "STEEL_TEMP",
    "STEEL_TEMP_TIME",
    "STEEL_WEIGHT",
    "SLAG_WEIGHT",
    "C_HEAT_STATUS_ID",
    "STATUS_DATE",
    "END_TIME",
    "CREATED",
    "MODIFIED",
    "MOP",
    "S_PROD_ORDER_ID"
  FROM P_HEAT
  WHERE C_HEAT_STATUS_ID=GET_HEAT_STATUS_ID(52);
