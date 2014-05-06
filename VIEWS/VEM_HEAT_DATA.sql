--------------------------------------------------------
--  DDL for View VEM_HEAT_DATA
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "VEM_HEAT_DATA" ("S_HEAT_NO", "S_HEAT_ID", "PE_HEAT_ID", "C_HEAT_STATUS_ID", "C_PLANT_UNIT_ID", "PLANT_UNIT_CODE", "PLANT_UNIT_NO", "START_TIME", "CE_PRACTICE_ID", "C_PHASE_ID", "C_STEEL_GRADE_ID", "S_STEEL_WEIGHT", "S_STEEL_WEIGHT_MAX", "S_HOT_METAL_WEIGHT", "NUM_OF_BASKETS", "NUM_OF_HOT_METAL", "STEEL_TEMPERATURE", "START_TEMPERATURE", "HOT_HEEL_WEIGHT", "ENERGY_TOTAL", "SCRAP_WEIGHT", "DRI_WEIGHT", "LIME_WEIGHT", "DOLO_WEIGHT", "C_CONTENT", "O_CONTENT", "OXYGEN_CONS", "MIX_GAS_CONS", "COKE_CONS", "METHANE_CONS", "NITROGEN_CONS") AS 
  SELECT
              (SELECT s_heat.heat_no from s_heat where ID = S_HEAT_ID),
              S_HEAT_ID,
              ID,
              C_HEAT_STATUS_ID,
              c_plant_unit_id,
              (SELECT c_plant_unit.plant_unit_code from c_plant_unit where id = pe.C_PLANT_UNIT_ID),
              (SELECT c_plant_unit.plant_unit_no from c_plant_unit where id = pe.C_PLANT_UNIT_ID),
              START_TIME,
              CE_PRACTICE_ID,
              C_PHASE_ID,
              C_STEEL_GRADE_ID,
              (SELECT STEEL_WEIGHT from s_heat where ID = S_HEAT_ID),
              (SELECT STEEL_WEIGHT_MAX from s_heat where ID = S_HEAT_ID),
              (SELECT HOT_HEEL_WEIGHT from s_heat where ID = S_HEAT_ID),
              NUM_OF_BASKETS,
              NUM_OF_HOT_METAL,
              STEEL_TEMPERATURE,
              START_TEMPERATURE,
              HOT_HEEL_WEIGHT,
              ENERGY_TOTAL,
              SCRAP_WEIGHT,
              DRI_WEIGHT,
              LIME_WEIGHT,
              DOLO_WEIGHT,
              C_CONTENT,
              O_CONTENT,
              OXYGEN_CONS,
              MIX_GAS_CONS,
              COKE_CONS,
              METHANE_CONS,
              NITROGEN_CONS
FROM PE_HEAT pe;
