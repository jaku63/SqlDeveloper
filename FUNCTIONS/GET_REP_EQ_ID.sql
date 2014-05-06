--------------------------------------------------------
--  DDL for Function GET_REP_EQ_ID
--------------------------------------------------------

  CREATE OR REPLACE FUNCTION "GET_REP_EQ_ID" 
(
  P_EQ_NAME_PARENT IN VARCHAR2
, P_EQ_NAME IN VARCHAR2
) RETURN NUMBER AS

pResult NUMBER;
BEGIN

  pResult := 0;
  SELECT ID into pResult from C_EQUIPMENT WHERE
      ID=(SELECT ID FROM C_EQUIPMENT ce WHERE P_EQ_NAME_PARENT || P_EQ_NAME = ce.EQUIPMENT_NAME);
  RETURN pResult;
  EXCEPTION WHEN OTHERS THEN RETURN 0;
return pResult;
END GET_REP_EQ_ID;

/
