--------------------------------------------------------
--  DDL for View VEM_PRED_PHASES_ENERGY
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "VEM_PRED_PHASES_ENERGY" ("PHASE_TYPE", "STEP_SEQ_NO", "REACTOR_TAP", "VOLTAGE_TAP", "ELECTRODE_CONTROL", "DURATION", "END_ENERGY") AS 
  SELECT
  (select phase_type from c_phase where mp.c_phase_id=id) as phase_type,
  STEP_SEQ_NO,
  (select REACTOR_TAP from CE_EL_POWER where id = mm.ce_el_power_id) as REACTOR_TAP,
  (select VOLTAGE_TAP from CE_EL_POWER where id = mm.ce_el_power_id) as VOLTAGE_TAP,
  (select ELECTRODE_CONTROL from CE_EL_POWER where id = mm.ce_el_power_id) as ELECTRODE_CONTROL,
  mm.DURATION,
  mm.END_ENERGY
FROM ME_PRED_ELECTRIC mm, ME_PRED_PHASE mp, PE_HEAT pe, S_HEAT s
where
  mm.me_pred_phase_id = mp.id
  and mp.s_heat_id=pe.s_heat_id
  and mp.s_heat_id=s.id
  and pe.c_heat_status_id = get_heat_status_id(20);
