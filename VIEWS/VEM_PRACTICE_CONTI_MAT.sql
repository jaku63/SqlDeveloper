--------------------------------------------------------
--  DDL for View VEM_PRACTICE_CONTI_MAT
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "VEM_PRACTICE_CONTI_MAT" ("CE_PRACTICE_ID", "CE_PRACTICE_PHASE_ID", "C_BUNKER_ID", "C_MATERIAL_ID", "STEP_SEQ_NO", "STEP_TYPE", "SCHED_FEED_RATE", "MIN_FEED_RATE", "MATERIAL_AMOUNT", "STEP_DURATION", "START_SPECIFIC_ENERGY", "START_ENERGY") AS 
  select
prph.ce_practice_id,
pm.ce_practice_phase_id,
pm.c_bunker_id,
pm.c_material_id,
pm.step_seq_no,
pm.step_type,
pm.sched_feed_rate,
pm.min_feed_rate,
pm.material_amount,
pm.duration,
pm.start_specific_energy,
pm.start_energy
from
  CE_PRACTICE_PHASE prph,
  C_PHASE ph,
  CE_PRACT_CONTI_MAT pm
where
  prph.c_phase_id = ph.id and
  prph.id = pm.ce_practice_phase_id;
