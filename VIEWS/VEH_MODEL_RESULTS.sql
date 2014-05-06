--------------------------------------------------------
--  DDL for View VEH_MODEL_RESULTS
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "VEH_MODEL_RESULTS" ("ID", "C_PLANT_UNIT_ID", "CALCUL_TEMPERATURE", "CREATED") AS 
  select
  me.id,
  (select c_plant_unit_id from c_plant_unit where id = pe.c_plant_unit_id) as c_plant_unit_id,
  me.calcul_temperature,
  me.created
from pe_heat pe, me_heat_hist me
where pe.s_heat_id = me.s_heat_id;
