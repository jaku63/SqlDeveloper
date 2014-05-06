--------------------------------------------------------
--  DDL for View VEM_PRACTICE_BLOWING
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "VEM_PRACTICE_BLOWING" ("CE_PRACTICE_ID", "CE_PRACTICE_PHASE_ID", "CE_INJECTION_TYPE_ID", "DEVICE_NAME", "STEP_SEQ_NO", "STEP_TYPE", "DEVICE_NO", "SCHED_FLOW", "MIN_FLOW", "AMOUNT", "START_SPECIFIC_ENERGY", "START_ENERGY", "STEP_DURATION", "DEVICE_POSITION") AS 
  select
prph.ce_practice_id,
pb.ce_practice_phase_id,
pb.ce_injection_type_id,
pt.device_name,
pb.step_seq_no,
pb.step_type,
pb.device_no,
pb.sched_flow,
pb.min_flow,
pb.amount,
pb.start_specific_energy,
pb.start_energy,
pb.duration,
pb.device_position
from
  CE_PRACTICE_PHASE prph,
  C_PHASE ph,
  CE_PRACT_INJECTION pb,
  CE_INJECTION_TYPE pt
where
  prph.c_phase_id = ph.id and
  prph.id = pb.ce_practice_phase_id and
  pb.ce_injection_type_id = pt.id;
