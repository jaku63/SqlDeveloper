--------------------------------------------------------
--  DDL for View VGM_ME_HEAT_ANA
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "VGM_ME_HEAT_ANA" ("ID", "ELEMENT_NAME", "ELEMENT_AMOUNT") AS 
  select
  mh.id,
  (select ele_symbol from c_element where id = mha.c_element_id) as element_name,
  mha.ele_amount
from me_heat mh, me_heat_ana mha where mha.me_heat_id = mh.id;
