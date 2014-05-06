--------------------------------------------------------
--  DDL for View VLH_MODEL_RESULTS
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "VLH_MODEL_RESULTS" ("ID", "C_PLANT_UNIT_ID", "CALCUL_TEMPERATURE", "PHASE_NO", "ENERGY_STEP_NO", "ENERGY_SUPPLIED", "CREATED") AS 
  select
  ml.id,
  (select id from c_plant_unit cp where cp.id = pl.c_plant_unit_id) as c_plant_unit_id,
  ml.steel_temperature,
  ml.PHASE_NO,
  ml.ENERGY_STEP_NO,
  ml.ENERGY_SUPPLIED,
  ml.created
from pl_heat pl, ml_heat_hist ml
where pl.s_heat_id = ml.s_heat_id
and pl.c_heat_status_id = get_heat_status_id(30);
