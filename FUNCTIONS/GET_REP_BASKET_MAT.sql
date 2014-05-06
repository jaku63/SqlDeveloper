--------------------------------------------------------
--  DDL for Function GET_REP_BASKET_MAT
--------------------------------------------------------

  CREATE OR REPLACE FUNCTION "GET_REP_BASKET_MAT" 
(
  P_REPORT_GROUP IN VARCHAR2
, P_S_HEAT_ID IN NUMBER
, P_BASKET_NO IN NUMBER
) RETURN NUMBER AS

pResult NUMBER;
BEGIN

  pResult := null;
  SELECT sum(MAT_WEIGHT) into pResult FROM PE_BASKET_DET
        WHERE C_MATERIAL_ID in (SELECT ID FROM C_MATERIAL WHERE REPORT_GROUP like P_REPORT_GROUP)
        AND PE_BASKET_ID in (SELECT ID FROM PE_BASKET peb WHERE peb.S_HEAT_ID=P_S_HEAT_ID and BASKET_SEQ_NO=P_BASKET_NO);
  RETURN pResult;
  EXCEPTION WHEN OTHERS THEN RETURN null;
return pResult;
END GET_REP_BASKET_MAT;

/
