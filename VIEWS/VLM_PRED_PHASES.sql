--------------------------------------------------------
--  DDL for View VLM_PRED_PHASES
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "VLM_PRED_PHASES" ("ID", "S_HEAT_ID", "PLANT_UNIT_NO", "PHASE_SEQ_NO", "PHASE_TYPE", "C_MATERIAL_TAB_ID", "DURATION", "CURR_TEMPERATURE", "PRED_TEMPERATURE", "PRED_STEEL_WEIGHT", "PRED_SLAG_WEIGHT", "CURR_STEEL_WEIGHT", "CURR_SLAG_WEIGHT", "CURR_EL_ENERGY", "PRED_EL_ENERGY") AS 
  SELECT mp.ID,
  mp.S_HEAT_ID,
  cp.PLANT_UNIT_NO,
  PHASE_SEQ_NO,
  (select phase_type from c_phase where c_phase.id=(select c_phase_id from cl_practice_phase clp where clp.cl_practice_id = pl.cl_practice_id  and clp.phase_seq_no = mp.phase_seq_no) ) as phase_type,
  (select clp.C_MATERIAL_TAB_ID from cl_practice_phase clp where clp.cl_practice_id = pl.cl_practice_id  and clp.phase_seq_no = mp.phase_seq_no) C_MATERIAL_TAB_ID,
  DURATION,
  pl.steel_temperature CURR_TEMPERATURE,
  mp.steel_temperature PRED_TEMPERATURE,
  mp.steel_weight PRED_STEEL_WEIGHT,
  mp.slag_weight PRED_SLAG_WEIGHT,
  pl.STEEL_WEIGHT CURR_STEEL_WEIGHT,
  pl.SLAG_WEIGHT CURR_SLAG_WEIGHT,
  0 CURR_EL_ENERGY,
  mp.END_PHASE_ENERGY PRED_EL_ENERGY
FROM ML_PRED_PHASE mp, ML_HEAT ml, PL_HEAT pl, c_plant_unit cp
where
  mp.s_heat_id=pl.s_heat_id
  and ml.pl_heat_id = pl.id
  and mp.ml_heat_id = ml.id
  and pl.c_heat_status_id = get_heat_status_id(30)
  and cp.id = pl.c_plant_unit_id
  and cp.id=5
union
  SELECT mp.ID,
  mp.S_HEAT_ID,
  cp.PLANT_UNIT_NO,
  PHASE_SEQ_NO,
  (select phase_type from c_phase where c_phase.id=(select c_phase_id from cl_practice_phase clp where clp.cl_practice_id = pl.cl_practice_id  and clp.phase_seq_no = mp.phase_seq_no) ) as phase_type,
  (select clp.C_MATERIAL_TAB_ID from cl_practice_phase clp where clp.cl_practice_id = pl.cl_practice_id  and clp.phase_seq_no = mp.phase_seq_no) C_MATERIAL_TAB_ID,
  DURATION,
  pl.steel_temperature CURR_TEMPERATURE,
  mp.steel_temperature PRED_TEMPERATURE,
  mp.steel_weight PRED_STEEL_WEIGHT,
  mp.slag_weight PRED_SLAG_WEIGHT,
  pl.STEEL_WEIGHT CURR_STEEL_WEIGHT,
  pl.SLAG_WEIGHT CURR_SLAG_WEIGHT,
  0 CURR_EL_ENERGY,
  mp.END_PHASE_ENERGY PRED_EL_ENERGY
FROM ML_PRED_PHASE mp, ML_HEAT ml, PL_HEAT pl, c_plant_unit cp
where
  mp.s_heat_id=pl.s_heat_id
  and ml.pl_heat_id = pl.id
  and mp.ml_heat_id = ml.id
  and pl.c_heat_status_id = get_heat_status_id(30)
  and cp.id = pl.c_plant_unit_id
  and cp.id=6
 union
  SELECT mp.ID,
  mp.S_HEAT_ID,
  cp.PLANT_UNIT_NO,
  PHASE_SEQ_NO,
  (select phase_type from c_phase where c_phase.id=(select c_phase_id from cl_practice_phase clp where clp.cl_practice_id = pl.cl_practice_id  and clp.phase_seq_no = mp.phase_seq_no) ) as phase_type,
  (select clp.C_MATERIAL_TAB_ID from cl_practice_phase clp where clp.cl_practice_id = pl.cl_practice_id  and clp.phase_seq_no = mp.phase_seq_no) C_MATERIAL_TAB_ID,
  DURATION,
  pl.steel_temperature CURR_TEMPERATURE,
  mp.steel_temperature PRED_TEMPERATURE,
  mp.steel_weight PRED_STEEL_WEIGHT,
  mp.slag_weight PRED_SLAG_WEIGHT,
  pl.STEEL_WEIGHT CURR_STEEL_WEIGHT,
  pl.SLAG_WEIGHT CURR_SLAG_WEIGHT,
  0 CURR_EL_ENERGY,
  mp.END_PHASE_ENERGY PRED_EL_ENERGY
FROM ML_PRED_PHASE mp, ML_HEAT ml, PL_HEAT pl, c_plant_unit cp
where
  mp.s_heat_id=pl.s_heat_id
  and ml.pl_heat_id = pl.id
  and mp.ml_heat_id = ml.id
  and pl.c_heat_status_id = get_heat_status_id(30)
  and cp.id = pl.c_plant_unit_id
  and cp.id=7
union
  SELECT mp.ID,
  mp.S_HEAT_ID,
  cp.PLANT_UNIT_NO,
  PHASE_SEQ_NO,
  (select phase_type from c_phase where c_phase.id=(select c_phase_id from cl_practice_phase clp where clp.cl_practice_id = pl.cl_practice_id  and clp.phase_seq_no = mp.phase_seq_no) ) as phase_type,
  (select clp.C_MATERIAL_TAB_ID from cl_practice_phase clp where clp.cl_practice_id = pl.cl_practice_id  and clp.phase_seq_no = mp.phase_seq_no) C_MATERIAL_TAB_ID,
  DURATION,
  pl.steel_temperature CURR_TEMPERATURE,
  mp.steel_temperature PRED_TEMPERATURE,
  mp.steel_weight PRED_STEEL_WEIGHT,
  mp.slag_weight PRED_SLAG_WEIGHT,
  pl.STEEL_WEIGHT CURR_STEEL_WEIGHT,
  pl.SLAG_WEIGHT CURR_SLAG_WEIGHT,
  0 CURR_EL_ENERGY,
  mp.END_PHASE_ENERGY PRED_EL_ENERGY
FROM ML_PRED_PHASE mp, ML_HEAT ml, PL_HEAT pl, c_plant_unit cp
where
  mp.s_heat_id=pl.s_heat_id
  and ml.pl_heat_id = pl.id
  and mp.ml_heat_id = ml.id
  and pl.c_heat_status_id = get_heat_status_id(30)
  and cp.id = pl.c_plant_unit_id
  and cp.id=8;
