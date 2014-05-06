--------------------------------------------------------
--  DDL for Function GET_HEAT_STATUS_ID
--------------------------------------------------------

  CREATE OR REPLACE FUNCTION "GET_HEAT_STATUS_ID" 
(
  P_HEAT_STATUS_NO IN VARCHAR2
) RETURN NUMBER AS

pResult NUMBER;
BEGIN

  pResult := 0;
  SELECT ID into pResult FROM C_HEAT_STATUS WHERE HEAT_STATUS=P_HEAT_STATUS_NO;

  RETURN pResult;
  EXCEPTION WHEN OTHERS THEN RETURN 0;

END GET_HEAT_STATUS_ID;

/
