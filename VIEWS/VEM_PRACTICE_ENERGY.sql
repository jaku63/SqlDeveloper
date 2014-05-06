--------------------------------------------------------
--  DDL for View VEM_PRACTICE_ENERGY
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "VEM_PRACTICE_ENERGY" ("CE_PRACTICE_ID", "CE_PRACTICE_PHASE_ID", "STEP_SEQ_NO", "STEP_TYPE", "STEP_SPECIFIC_ENERGY", "STEP_ENERGY", "STEP_DURATION", "CE_EL_POWER_ID", "ELECTRIC_POWER", "ELECTRODE_CONTROL", "REACTOR_TAP", "VOLTAGE_TAP") AS 
  select
prph.ce_practice_id,
pe.ce_practice_phase_id,
pe.step_seq_no,
pe.step_type,
pe.step_specific_energy,
pe.step_energy,
pe.duration,
pp.id as ce_el_power_id,
pp.electric_power,
pp.electrode_control,
pp.reactor_tap,
pp.voltage_tap
from
  CE_PRACTICE_PHASE prph,
  C_PHASE ph,
  CE_PRACT_ELECTRIC pe,
  CE_EL_POWER pp
where
  prph.c_phase_id = ph.id and
  prph.id = pe.ce_practice_phase_id and
  pp.id = pe.ce_el_power_id;
