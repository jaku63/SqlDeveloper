--------------------------------------------------------
--  DDL for View VLH_PM_MATERIAL_SETP
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "VLH_PM_MATERIAL_SETP" ("PHASE", "UNIT_CODE", "UNIT_NO", "BUNKER_NO", "MAT_CODE", "MAT_WEIGHT", "ADD_SEQ_NO") AS 
  SELECT
  (select phase_type from c_phase c where c.id = mpp.c_phase_id) as PHASE,
  'LF' UNIT_CODE,
  1 UNIT_NO,
  (SELECT BUNKER_NO FROM C_BUNKER B WHERE B.ID=C_BUNKER_ID) BUNKER_NO,
  (SELECT MAT_CODE FROM C_MATERIAL M WHERE M.ID=C_MATERIAL_ID) MAT_CODE,
  MAT_WEIGHT,
  ADD_SEQ_NO
FROM ML_MATERIAL_RECIPE MMR, ML_PRED_PHASE MPP, P_HEAT PH, ML_HEAT ML
WHERE
MMR.ML_PRED_PHASE_ID=MPP.ID
AND mpp.ml_heat_id = ml.id
and ml.pl_heat_id = (select id from pl_heat where s_heat_id = ph.s_heat_id and C_HEAT_STATUS_ID = PH.C_HEAT_STATUS_ID)
AND PH.S_HEAT_ID = MPP.S_HEAT_ID
AND PH.C_HEAT_STATUS_ID = get_heat_status_id(30)
AND ph.last_plant_unit_id = 5
union
  SELECT
  (select phase_type from c_phase c where c.id = mpp.c_phase_id) as PHASE,
  'LF' UNIT_CODE,
  2 UNIT_NO,
  (SELECT BUNKER_NO FROM C_BUNKER B WHERE B.ID=C_BUNKER_ID) BUNKER_NO,
  (SELECT MAT_CODE FROM C_MATERIAL M WHERE M.ID=C_MATERIAL_ID) MAT_CODE,
  MAT_WEIGHT,
  ADD_SEQ_NO
FROM ML_MATERIAL_RECIPE MMR, ML_PRED_PHASE MPP, P_HEAT PH, ML_HEAT ML
WHERE
MMR.ML_PRED_PHASE_ID=MPP.ID
AND mpp.ml_heat_id = ml.id
and ml.pl_heat_id = (select id from pl_heat where s_heat_id = ph.s_heat_id and C_HEAT_STATUS_ID = PH.C_HEAT_STATUS_ID)
AND PH.S_HEAT_ID = MPP.S_HEAT_ID
AND PH.C_HEAT_STATUS_ID = get_heat_status_id(30)
AND ph.last_plant_unit_id = 6
union
  SELECT
  (select phase_type from c_phase c where c.id = mpp.c_phase_id) as PHASE,
  'LF' UNIT_CODE,
  1 UNIT_NO,
  (SELECT BUNKER_NO FROM C_BUNKER B WHERE B.ID=C_BUNKER_ID) BUNKER_NO,
  (SELECT MAT_CODE FROM C_MATERIAL M WHERE M.ID=C_MATERIAL_ID) MAT_CODE,
  MAT_WEIGHT,
  ADD_SEQ_NO
FROM ML_MATERIAL_RECIPE MMR, ML_PRED_PHASE MPP, P_HEAT PH, ML_HEAT ML
WHERE
MMR.ML_PRED_PHASE_ID=MPP.ID
AND mpp.ml_heat_id = ml.id
and ml.pl_heat_id = (select id from pl_heat where s_heat_id = ph.s_heat_id and C_HEAT_STATUS_ID = PH.C_HEAT_STATUS_ID)
AND PH.S_HEAT_ID = MPP.S_HEAT_ID
AND PH.C_HEAT_STATUS_ID = get_heat_status_id(30)
AND ph.last_plant_unit_id = 5
union
  SELECT
  (select phase_type from c_phase c where c.id = mpp.c_phase_id) as PHASE,
  'LF' UNIT_CODE,
  3 UNIT_NO,
  (SELECT BUNKER_NO FROM C_BUNKER B WHERE B.ID=C_BUNKER_ID) BUNKER_NO,
  (SELECT MAT_CODE FROM C_MATERIAL M WHERE M.ID=C_MATERIAL_ID) MAT_CODE,
  MAT_WEIGHT,
  ADD_SEQ_NO
FROM ML_MATERIAL_RECIPE MMR, ML_PRED_PHASE MPP, P_HEAT PH, ML_HEAT ML
WHERE
MMR.ML_PRED_PHASE_ID=MPP.ID
AND mpp.ml_heat_id = ml.id
and ml.pl_heat_id = (select id from pl_heat where s_heat_id = ph.s_heat_id and C_HEAT_STATUS_ID = PH.C_HEAT_STATUS_ID)
AND PH.S_HEAT_ID = MPP.S_HEAT_ID
AND PH.C_HEAT_STATUS_ID = get_heat_status_id(30)
AND ph.last_plant_unit_id = 7;
