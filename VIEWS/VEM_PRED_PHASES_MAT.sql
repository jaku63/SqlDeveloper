--------------------------------------------------------
--  DDL for View VEM_PRED_PHASES_MAT
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "VEM_PRED_PHASES_MAT" ("PHASE_TYPE", "STEP_SEQ_NO", "BUNKER_NO", "MATERIAL_CODE", "FEED_RATE", "DURATION", "MAT_WEIGHT", "START_ENERGY") AS 
  SELECT
  (select phase_type from c_phase where mp.c_phase_id=id) as phase_type,
  STEP_SEQ_NO,
  (select bunker_no from c_bunker where id = mm.c_bunker_id) as BUNKER_NO,
  (select mat_code from c_material where mm.c_material_id = id) as MATERIAL_CODE,
  FEED_SPEED * 60 as FEED_RATE,
  mm.DURATION,
  MAT_AMOUNT,
  START_ENERGY
FROM ME_PRED_CONTI_MAT mm, ME_PRED_PHASE mp, PE_HEAT pe, S_HEAT s
where
  mm.me_pred_phase_id = mp.id
  and mp.s_heat_id=pe.s_heat_id
  and mp.s_heat_id=s.id
  and pe.c_heat_status_id = get_heat_status_id(20);
