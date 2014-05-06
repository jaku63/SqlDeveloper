--------------------------------------------------------
--  DDL for View VREP_HM_FORMAT
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "VREP_HM_FORMAT" ("SL_NO", "TORPEDO_NO", "CAST_NO", "ARRIVAL_TIME", "DEPT_TIME", "INIT_WT", "FINAL_WT", "AS_PER_BF_W", "HEAT_NO", "AS_PER_SMS", "AS_PER_BF_T", "TORPEDO_TEMP", "LADLE_TEMP", "LADLE_NO", "LADLE_TIME", "AS_PER_BF_SI", "AS_PER_SMS_SI", "PER_REASON_BELOW") AS 
  SELECT
0 AS SL_NO,
p.TORPEDO_NO AS TORPEDO_NO,
p.TAP_ID AS CAST_NO,
p.ARRIVAL_TIME AS ARRIVAL_TIME,
p.DEPARTURE_TIME AS DEPT_TIME,
p.INIT_WEIGHT AS INIT_WT,
p.FINAL_WEIGHT AS FINAL_WT,
p.BF_WEIGHT AS AS_PER_BF_W,
s.HEAT_NO AS HEAT_NO,
0 AS AS_PER_SMS,
p.BF_TEMP AS AS_PER_BF_T,
p.TORPEDO_TEMP AS TORPEDO_TEMP,
p.TEMPERATURE AS LADLE_TEMP,
c.EQUIPMENT_NAME as LADLE_NO,
p.DISCHARGED_DATE AS LADLE_TIME,
p.BF_SI_CONTENT AS AS_PER_BF_SI,
p.SI_CONTENT AS AS_PER_SMS_SI,
p.LOW_TEMP_REASON AS PER_REASON_BELOW
FROM PE_HOT_METAL p, S_HEAT s, C_EQUIPMENT c
WHERE p.S_HEAT_ID=s.ID AND p.C_EQUIPMENT_ID_LADLE=c.ID;
