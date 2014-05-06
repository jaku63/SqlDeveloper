--------------------------------------------------------
--  DDL for Function GET_VD_PHASE
--------------------------------------------------------

  CREATE OR REPLACE FUNCTION "GET_VD_PHASE" 
(
  P_S_HEAT_ID IN NUMBER,
  P_REF_TIME IN DATE
) RETURN VARCHAR2 AS

pResult VARCHAR2(32);
lStartTime DATE;
lEndTime DATE;

BEGIN

  pResult := 'Unknown';
  SELECT START_TIME,END_TIME into lStartTime, lEndTime FROM VVH_HEAT_CONFIRMATION_MAN vc WHERE vc.S_HEAT_ID=P_S_HEAT_ID;

  IF (P_REF_TIME<lStartTime) THEN
     pResult := 'Before VD';
  ELSE
    IF ((P_REF_TIME>lStartTime) AND (P_REF_TIME<lEndTime)) THEN
       pResult := 'During VD';
    ELSE
       pResult := 'After VD';
    END IF;
  END IF;
  RETURN pResult;

  RETURN pResult;
  EXCEPTION WHEN OTHERS THEN RETURN pResult;

END GET_VD_PHASE;

/
