--------------------------------------------------------
--  DDL for Function GET_REP_HM_ANA
--------------------------------------------------------

  CREATE OR REPLACE FUNCTION "GET_REP_HM_ANA" 
(
  P_ELEMENT IN VARCHAR2
, P_S_HEAT_ID IN NUMBER
) RETURN NUMBER AS

pResult NUMBER;
BEGIN

  pResult := null;
  SELECT ELE_AMOUNT into pResult FROM PE_HOT_METAL_ANA
  WHERE C_ELEMENT_ID=(SELECT ID FROM C_ELEMENT WHERE ELE_SYMBOL=P_ELEMENT AND PE_HOT_METAL_ID = (SELECT max(ID) FROM PE_HOT_METAL peh WHERE peh.S_HEAT_ID=P_S_HEAT_ID ));
  RETURN pResult;
  EXCEPTION WHEN OTHERS THEN RETURN null;
return pResult;
END GET_REP_HM_ANA;

/
