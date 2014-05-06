--------------------------------------------------------
--  DDL for View VLH_ACTUAL_L1_DATA
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "VLH_ACTUAL_L1_DATA" ("ID", "CREATED", "C_PLANT_UNIT_ID", "SUPPLIED_ENERGY", "TAP_NO") AS 
  SELECT
rownum as id,
READ_TIME as CREATED,
5 as C_PLANT_UNIT_ID,
(SELECT READ_VALUE FROM P_OPC_RAW_DATA p WHERE TAG_NAME='LF1_Simulation.ELECTRIC_AC.SuppliedEnergy' and pm.READ_TIME=p.READ_TIME) as SUPPLIED_ENERGY,
(SELECT READ_VALUE FROM P_OPC_RAW_DATA p WHERE TAG_NAME='LF1_Simulation.ELECTRIC_AC.VoltageTapNo' and pm.READ_TIME=p.READ_TIME) as TAP_NO
FROM (SELECT DISTINCT READ_TIME AS READ_TIME from P_OPC_RAW_DATA ORDER BY read_time) pm
ORDER BY read_time desc;
