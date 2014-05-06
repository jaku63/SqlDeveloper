--------------------------------------------------------
--  DDL for View VGM_PE_HEAT_ANA
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "VGM_PE_HEAT_ANA" ("ID", "ELEMENT_NAME", "ELEMENT_AMOUNT") AS 
  select
  ph.id,
  (select ele_symbol from c_element where id = pha.c_element_id) as element_name,
  pha.ele_amount
from pe_heat ph, pe_heat_ana pha;
