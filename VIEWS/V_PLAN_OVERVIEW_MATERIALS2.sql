--------------------------------------------------------
--  DDL for View V_PLAN_OVERVIEW_MATERIALS2
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "V_PLAN_OVERVIEW_MATERIALS2" ("C_MATERIAL_ID", "MATERIAL_CODE", "STEP_SEQ_NO", "FEED_SPEED", "DUR", "MATERIAL_AMOUNT", "START_ENERGY", "S_HEAT_ID") AS 
  SELECT
CM.ID AS C_MATERIAL_ID,
CM.MAT_CODE AS MATERIAL_CODE,
MPCM.STEP_SEQ_NO AS STEP_SEQ_NO,
MPCM.FEED_SPEED AS FEED_SPEED,
MPCM.DURATION AS DUR,
MPCM.MAT_AMOUNT AS MATERIAL_AMOUNT,
MPCM.START_ENERGY AS START_ENERGY,
MPP.S_HEAT_ID AS S_HEAT_ID
FROM ME_PRED_PHASE MPP,C_MATERIAL CM, ME_PRED_CONTI_MAT MPCM
WHERE CM.ID = MPCM.C_MATERIAL_ID AND MPP.ID = MPCM.ME_PRED_PHASE_ID
ORDER BY STEP_SEQ_NO;
