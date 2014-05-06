--------------------------------------------------------
--  DDL for View VREP_DAILYEAF_LADDETAILS
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "VREP_DAILYEAF_LADDETAILS" ("EAF", "SHELL_NO", "HEAT_NO", "BOTTOM", "E1", "E2", "E3", "DOOR", "NOSE", "EBT", "ROOF", "LF_ROOF", "DPP_LIFE", "CAMPAIGN", "LAUNDER") AS 
  select
 to_number(SUBSTR(EQUIPMENT_NAME,4)) AS EAF,
(SELECT DESCRIPTION FROM C_EQUIPMENT WHERE EQUIPMENT_NAME=main_rec.equipment_name||'Shell') AS SHELL_NO,
GET_REP_EQ_LIFE(main_rec.equipment_name, 'Shell','HeatCount' )  AS HEAT_NO,
GET_REP_EQ_LIFE(main_rec.equipment_name, 'Bottom','HeatCount' ) AS BOTTOM,
GET_REP_EQ_LIFE(main_rec.equipment_name, 'E1','HeatCount' ) AS E1,
GET_REP_EQ_LIFE(main_rec.equipment_name, 'E2','HeatCount' ) AS E2,
GET_REP_EQ_LIFE(main_rec.equipment_name, 'E3','HeatCount' ) AS E3,
GET_REP_EQ_LIFE(main_rec.equipment_name, 'Door','HeatCount' ) AS DOOR,
GET_REP_EQ_LIFE(main_rec.equipment_name, 'Nose','HeatCount' ) AS NOSE,
GET_REP_EQ_LIFE(main_rec.equipment_name, 'EBT','HeatCount' ) AS EBT,
GET_REP_EQ_LIFE(main_rec.equipment_name, 'Roof','HeatCount' ) AS ROOF,
GET_REP_EQ_LIFE('LF' || SUBSTR(EQUIPMENT_NAME,4), 'Roof','HeatCount' ) as LF_ROOF,
GET_REP_EQ_LIFE('LF' || SUBSTR(EQUIPMENT_NAME,4), 'DPPLife','HeatCount' ) as DPP_LIFE,
0 as CAMPAIGN,
0 as LAUNDER
FROM C_EQUIPMENT main_rec
WHERE C_EQUIPMENT_TYPE_ID=(SELECT ID FROM C_EQUIPMENT_TYPE WHERE TYPE_NAME='EAF Furnace');
