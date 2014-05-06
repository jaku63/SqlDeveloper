--------------------------------------------------------
--  DDL for View VBH_PM_ANA
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "VBH_PM_ANA" ("ELE_SYMBOL", "LAST_ANALYSIS") AS 
  SELECT
  ELE_SYMBOL,
  (SELECT ELE_AMOUNT FROM P_LAB_ANA ANA WHERE ANA.C_ELEMENT_ID=CEL.ID AND ANA.P_LAB_ID=(SELECT max(ID) FROM P_LAB WHERE S_HEAT_ID = (SELECT S_HEAT_ID FROM VBH_PM_MAIN) )) LAST_ANALYSIS
from C_ELEMENT CEL;
