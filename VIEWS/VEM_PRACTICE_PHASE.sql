--------------------------------------------------------
--  DDL for View VEM_PRACTICE_PHASE
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "VEM_PRACTICE_PHASE" ("CE_PRACTICE_ID", "CE_PRACTICE_PHASE_ID", "PRACTICE_CODE", "PHASE_TYPE", "C_PHASE_ID", "PHASE_SEQ_NO", "BASKET", "HOT_METAL", "DRI", "MIN_DURATION", "START_SPEC_ENERGY", "START_ENERGY", "END_TEMPERATURE", "END_WEIGHT", "C_MATERIAL_TAB_ID") AS 
  select
pr.id,
prph.id,
pr.practice_code,
ph.phase_type,
ph.id,
prph.phase_seq_no,
prph.basket,
prph.hot_metal,
prph.dri,
prph.min_duration,
prph.start_spec_energy,
prph.start_energy,
prph.end_temperature,
prph.end_weight,
prph.c_material_tab_id
from
  CE_PRACTICE pr,
  CE_PRACTICE_PHASE prph,
  C_PHASE ph
where
  prph.ce_practice_id = pr.id and
  prph.c_phase_id = ph.id;
