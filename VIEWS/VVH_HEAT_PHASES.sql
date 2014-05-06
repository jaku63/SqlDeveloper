--------------------------------------------------------
--  DDL for View VVH_HEAT_PHASES
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "VVH_HEAT_PHASES" ("ID", "PV_HEAT_ID", "S_HEAT_ID", "C_PHASE_ID", "PHASE_NAME", "PRESSURE", "PHASE_START", "DURATION", "PUMP_DOWN_START", "PUMP_DOWN_TIME", "DEGASSING_START", "DEGASSING", "AR_CONS", "N2_CONS") AS 
  SELECT p."ID",
    "PV_HEAT_ID",
    (SELECT S_HEAT_ID FROM PV_HEAT pv WHERE pv.ID=p."PV_HEAT_ID") AS S_HEAT_ID,
    C.ID "C_PHASE_ID",
    c.phase_type as PHASE_NAME,
    round(p.pressure_end) as "PRESSURE",
    nvl(p.phase_start, sysdate) as "PHASE_START",
    nvl(p.phase_duration,0) as "DURATION",
    nvl(p.pump_start, sysdate) as "PUMP_DOWN_START",
    nvl(p.pump_duration,0) as "PUMP_DOWN_TIME",
    nvl(p.degassing_start, sysdate) as "DEGASSING_START",
    nvl(p.degassing_duration,0) as "DEGASSING",
    round("AR_CONS") as AR_CONS,
    round("N2_CONS") as AR_CONS
    FROM C_PHASE C, PV_HEAT_PHASES P
  WHERE C.ID=p.C_PHASE_ID(+)
  AND c.plant_unit_code='VD';
