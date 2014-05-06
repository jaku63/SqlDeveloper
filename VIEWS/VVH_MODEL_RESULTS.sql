--------------------------------------------------------
--  DDL for View VVH_MODEL_RESULTS
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "VVH_MODEL_RESULTS" ("ID", "C_PLANT_UNIT_ID", "CALCUL_TEMPERATURE", "CREATED") AS 
  select
  mv.id,
  (select id from c_plant_unit cp where cp.id = pv.c_plant_unit_id) as c_plant_unit_id,
  mv.steel_temperature,
  mv.created
from pv_heat pv, mv_heat_hist mv
where pv.s_heat_id = mv.s_heat_id
and pv.c_heat_status_id = get_heat_status_id(40);
