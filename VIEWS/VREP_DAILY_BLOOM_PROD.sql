--------------------------------------------------------
--  DDL for View VREP_DAILY_BLOOM_PROD
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "VREP_DAILY_BLOOM_PROD" ("SL_NO", "DATE1", "SIZE1", "GRADE", "HEAT_NO", "WEIGHT", "STEEL_TYPE", "REMARKS") AS 
  SELECT
0 AS SL_NO,
SYSDATE AS DATE1,
'---' AS SIZE1,
'---' AS GRADE,
'---' AS HEAT_NO,
0 AS WEIGHT,
'---' STEEL_TYPE,
'---' AS REMARKS
FROM DUAL;
