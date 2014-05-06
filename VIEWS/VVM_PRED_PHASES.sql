--------------------------------------------------------
--  DDL for View VVM_PRED_PHASES
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "VVM_PRED_PHASES" ("ID", "S_HEAT_ID", "PLANT_UNIT_NO", "PHASE_SEQ_NO", "PHASE_TYPE", "C_MATERIAL_TAB_ID", "MAT_TAB_NAME", "DURATION", "TEMPERATURE", "STEEL_WEIGHT", "SLAG_WEIGHT", "PRESSURE", "PUMP_DOWN", "DEGASSING", "GAS1", "GAS_FLOW1", "GAS2", "GAS_FLOW2") AS 
  SELECT mp.ID,
  mp.S_HEAT_ID,
  cp.PLANT_UNIT_NO,
  PHASE_SEQ_NO,
  (select phase_type from c_phase where mp.C_PHASE_ID = id) as phase_type,
  mp.c_material_tab_id as C_MATERIAL_TAB_ID,
  (select MAT_TAB_NAME from C_MATERIAL_TAB cmt where cmt.id = mp.c_material_tab_id) as MAT_TAB_NAME,
  (select pp.phase_duration from PV_HEAT_PHASES pp where pp.pv_heat_id = pv.id and pp.c_phase_id = mp.c_phase_id) as DURATION,
  mp.steel_temperature as TEMPERATURE,
  mp.steel_weight as STEEL_WEIGHT,
  mp.slag_weight as SLAG_WEIGHT,
  (select round(pp.pressure_end,1) from PV_HEAT_PHASES pp where pp.pv_heat_id = pv.id and pp.c_phase_id = mp.c_phase_id) as PRESSURE,
  (select round(pp.pump_duration) from PV_HEAT_PHASES pp where pp.pv_heat_id = pv.id and pp.c_phase_id = mp.c_phase_id) as PUMP_DOWN,
  (select round(pp.degassing_duration) from PV_HEAT_PHASES pp where pp.pv_heat_id = pv.id and pp.c_phase_id = mp.c_phase_id) as DEGASSING,
  (select round(pp.ar_cons) from PV_HEAT_PHASES pp where pp.pv_heat_id = pv.id and pp.c_phase_id = mp.c_phase_id) as GAS1,
  mp.gas_flow1 as GAS_FLOW1,
  (select round(pp.n2_cons) from PV_HEAT_PHASES pp where pp.pv_heat_id = pv.id and pp.c_phase_id = mp.c_phase_id) as GAS2,
  mp.gas_flow2 as GAS_FLOW2
FROM MV_PRED_PHASE mp, MV_HEAT mv, PV_HEAT pv, c_plant_unit cp
where
  mp.s_heat_id=pv.s_heat_id
  and mv.pv_heat_id = pv.id
  and mp.mv_heat_id = mv.id
  and pv.c_heat_status_id = get_heat_status_id(40)
  and cp.id = pv.c_plant_unit_id
  and cp.id=9;
