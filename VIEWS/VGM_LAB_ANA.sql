--------------------------------------------------------
--  DDL for View VGM_LAB_ANA
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "VGM_LAB_ANA" ("ID", "ELEMENT_NAME", "ELEMENT_AMOUNT") AS 
  select
  pa.id,
  (select ele_symbol from c_element where id = pad.c_element_id) as element_name,
  pad.ele_amount
from p_lab pa, p_lab_ana pad;
