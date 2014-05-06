--------------------------------------------------------
--  DDL for View VEM_BASKET
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "VEM_BASKET" ("PE_BASKET_ID", "S_HEAT_ID", "DISCHARGE_TIME", "BASKET_SEQ_NO", "LAYER_SEQ_NO", "C_MATERIAL_ID", "MAT_WEIGHT", "MAT_TEMPERATURE") AS 
  select
  b.id,
  s_heat_id,
  discharge_time,
  basket_seq_no,
  layer_seq_no,
  c_material_id,
  mat_weight,
  mat_temperature
from
  pe_basket b,
  pe_basket_det d
where
  b.id = d.pe_basket_id;
