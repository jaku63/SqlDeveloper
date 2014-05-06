--------------------------------------------------------
--  DDL for View VREP_DAILY_PRODUCTION
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "VREP_DAILY_PRODUCTION" ("PRODUCTION_DATE", "SN", "HEAT_NO", "GRADE", "TAPTOTAP_TIME", "SHRD_DRI_BKT", "PIG_IRON", "HM", "DRI_FIN", "DRI_FD", "TOTAL_DRI", "SKULL", "TOTAL_CHG", "TOTAL_LM", "POWER_CONS", "EAF_FLUX", "TOTAL_O2", "LEAD_SQ", "CROSS_SECTION", "PR", "HBI", "TOTAL_BIT_PRODUCT", "LMYIELD", "TOTAL_SLAB_PROD") AS 
  SELECT
  DATE_PRODUCED                                                AS "PRODUCTION_DATE",
  ROWNUM                                                       AS SN,
  HEAT_ID                                                      AS HEAT_NO,
  STEEL_GRADE                                                  AS GRADE,
  TAP_TO_TAP                                                   AS TAPTOTAP_TIME,
  (SHREDED_B1+SHREDED_B2)                                      AS SHRD_DRI_BKT,
  (PIG_IRON_B1+PIG_IRON_B2)                                      AS PIG_IRON,
  HOT_METAL                                                    AS HM,
  (DRI_FINES_B1+DRI_FINES_B2)                                  AS DRI_FIN,
  DRI_FEED                                                     AS DRI_FD,
  (DRI_FINES_B1+DRI_FINES_B2+DRI_FEED+DRI_LUMP_B1+DRI_LUMP_B2) AS TOTAL_DRI,
  (SKULL_B1     +SKULL_B2)                                       AS SKULL,
  TOTAL_CHARGE_WT                                              AS TOTAL_CHG,
  LIQUID_METAL_TAP                                             AS TOTAL_LM,
  KWH_TON_LM                                                   AS POWER_CONS,
  ((DOLOMITE_FEED+DOLO_LIME_B1+DOLO_LIME_B2)/LIQUID_METAL_TAP) AS EAF_FLUX,
  TOTAL_O2_CONS                                                AS TOTAL_O2,
  '---'                                                        AS LEAD_SQ,
  '---'                                                        AS CROSS_SECTION,
  0                                                            AS PR,
  0                                                            AS HBI,
  0                                                            AS TOTAL_BIT_PRODUCT,
  0                                                            AS LMYIELD,
  0                                                            AS TOTAL_SLAB_PROD
FROM VEH_HEAT_CONFIRMATION_MAN;
