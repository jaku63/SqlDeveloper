--------------------------------------------------------
--  DDL for View VGH_MATERIAL_ANA
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "VGH_MATERIAL_ANA" ("ID", "C_MATERIAL_ID", "ELE_SYMBOL_ID", "ELE_SYMBOL", "ELE_AMOUNT") AS 
  SELECT ID, C_MATERIAL_ID, ELE_SYMBOL_ID,
  (SELECT ELE_SYMBOL from C_ELEMENT CEL WHERE CEL.ID=ANA.ELE_SYMBOL_ID) as ELE_SYMBOL,
  ELE_AMOUNT
  FROM C_MATERIAL_ANA ANA;
