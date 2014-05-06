--------------------------------------------------------
--  DDL for View VBH_PM_ACT_PROCESS_DATA
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "VBH_PM_ACT_PROCESS_DATA" ("MONITORED_VALUE", "STRAND1", "STRAND2", "STRAND3", "STRAND4") AS 
  SELECT
  'Cast Speed' as MONITORED_VALUE,
  (SELECT CAST_SPEED FROM PC_STRAND WHERE STRAND_NO=1) as STRAND1,
  (SELECT CAST_SPEED FROM PC_STRAND WHERE STRAND_NO=2) as STRAND2,
  (SELECT CAST_SPEED FROM PC_STRAND WHERE STRAND_NO=3) as STRAND3,
  (SELECT CAST_SPEED FROM PC_STRAND WHERE STRAND_NO=4) as STRAND4
from DUAL
union
SELECT
v.mon_value as MONITORED_VALUE,
(SELECT ACT_VALUE FROM PC_ACT_COOLING_DATA p WHERE STRAND_NO=1 AND v.mon_value = p.value_id) AS STRAND1,
(SELECT ACT_VALUE FROM PC_ACT_COOLING_DATA p WHERE STRAND_NO=2 AND v.mon_value = p.value_id) AS STRAND2,
(SELECT ACT_VALUE FROM PC_ACT_COOLING_DATA p WHERE STRAND_NO=3 AND v.mon_value = p.value_id) AS STRAND3,
(SELECT ACT_VALUE FROM PC_ACT_COOLING_DATA p  WHERE STRAND_NO=4 AND v.mon_value = p.value_id) AS STRAND4
FROM (SELECT DISTINCT value_id as MON_VALUE FROM PC_ACT_COOLING_DATA) V;
