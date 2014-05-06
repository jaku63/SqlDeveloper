--------------------------------------------------------
--  DDL for View VEM_PREDICTION
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "VEM_PREDICTION" ("S_HEAT_ID", "CHARGE_WEIGHT", "STEEL_WEIGHT", "SLAG_WEIGHT", "TEMPERATURE", "DRI_WEIGHT", "LIME_WEIGHT", "DOLOMITE_WEIGHT", "DRI_FEED_RATE", "LIME_FEED_RATE", "DOLOMITE_FEED_RATE", "O2_DEMAND", "ENERGY_DEMAND", "EL_ENERGY_DEMAND", "DURATION", "MAX_HM_WEIGHT") AS 
  SELECT
  mp.S_HEAT_ID,
  mp.CHARGE_WEIGHT,
  mp.STEEL_WEIGHT,
  mp.SLAG_WEIGHT,
  mp.TEMPERATURE,
  mp.DRI_WEIGHT,
  mp.LIME_WEIGHT,
  mp.DOLOMITE_WEIGHT,
  mp.DRI_FEED_RATE,
  mp.LIME_FEED_RATE,
  mp.DOLOMITE_FEED_RATE,
  O2_DEMAND,
  ENERGY_DEMAND,
  EL_ENERGY_DEMAND,
  DURATION,
  MAX_HM_WEIGHT
FROM ME_PREDICTION mp, PE_HEAT pe, S_HEAT s
where
  mp.s_heat_id=pe.s_heat_id
  and mp.s_heat_id=s.id
  and pe.c_heat_status_id = get_heat_status_id(20);
