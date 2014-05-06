--------------------------------------------------------
--  DDL for View VEM_HOT_METAL_ANA
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "VEM_HOT_METAL_ANA" ("ID", "PE_HOT_METAL_ID", "ELE_SYMBOL_ID", "ELE_SYMBOL", "ELE_AMOUNT") AS 
  SELECT ID, PE_HOT_METAL_ID, C_ELEMENT_ID,
  (SELECT ELE_SYMBOL from C_ELEMENT CEL WHERE CEL.ID=ANA.C_ELEMENT_ID) as ELE_SYMBOL,
  ELE_AMOUNT
  FROM PE_HOT_METAL_ANA ANA;
