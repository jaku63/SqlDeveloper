--------------------------------------------------------
--  DDL for View VEH_PM_MODEL_RESULTS
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "VEH_PM_MODEL_RESULTS" ("ID", "S_HEAT_ID", "PLANT_UNIT_NO", "PHASE_SEQ_NO", "C_PHASE_ID", "PHASE_TYPE", "PRED_DURATION", "CURR_DURATION", "END_PHASE_ENERGY", "C_MATERIAL_TAB_ID", "PRED_STEEL_WEIGHT", "PRED_SLAG_WEIGHT", "CURR_STEEL_WEIGHT", "CURR_SLAG_WEIGHT", "CURR_CONTI_DRI", "FEED_SPEED_DRI", "PRED_CONTI_DRI", "CURR_CONTI_LIME", "FEED_SPEED_LIME", "PRED_CONTI_LIME", "CURR_CONTI_DOLOMITE", "FEED_SPEED_DOLOMITE", "PRED_CONTI_DOLOMITE", "CURR_CONTI_SPEC", "FEED_SPEED_SPEC", "PRED_CONTI_SPEC", "CURR_CARBON_BLOWN", "PRED_CARBON_BLOWN", "CURR_O2_BLOWN", "PRED_O2_BLOWN", "CURR_EL_ENERGY", "PRED_EL_ENERGY", "CURR_FUEL", "PRED_FUEL") AS 
  SELECT me.ID,
  me.S_HEAT_ID,
  (select cp.plant_unit_no from c_plant_unit cp where id = ph.c_plant_unit_id) as plant_unit_no,
  me.PHASE_SEQ_NO,
  me.C_PHASE_ID,
  (select phase_type from c_phase where id = me.c_phase_id) as phase_type,
  round(me."PRED_DURATION"/60) as "PRED_DURATION",
  round(me."CURR_DURATION"/60) as "CURR_DURATION",
  round(me.END_PHASE_ENERGY),
  me.C_MATERIAL_TAB_ID,
  round(me.PRED_STEEL_WEIGHT/1000),
  round(me.PRED_SLAG_WEIGHT/1000),
  round(me.CURR_STEEL_WEIGHT/1000),
  round(me.CURR_SLAG_WEIGHT/1000),
  round(me.CURR_CONTI_DRI),
  round(me.FEED_SPEED_DRI),
  round(me.PRED_CONTI_DRI),
  round(me.CURR_CONTI_LIME),
  round(me.FEED_SPEED_LIME),
  round(me.PRED_CONTI_LIME),
  round(me.CURR_CONTI_DOLOMITE),
  round(me.FEED_SPEED_DOLOMITE),
  round(me.PRED_CONTI_DOLOMITE),
  round(me.CURR_CONTI_SPEC),
  round(me.FEED_SPEED_SPEC),
  round(me.PRED_CONTI_SPEC),
  round(me.CURR_CARBON_BLOWN),
  round(me.PRED_CARBON_BLOWN),
  round(me.CURR_O2_BLOWN),
  round(me.PRED_O2_BLOWN),
  round(me.CURR_EL_ENERGY),
  round(me.PRED_EL_ENERGY),
  round(me.CURR_FUEL),
  round(me.PRED_FUEL)
FROM ME_PRED_PHASE me, PE_HEAT ph
where
  1=1
  and me.s_heat_id = ph.s_heat_id
  and ph.c_heat_status_id = get_heat_status_id(20);
