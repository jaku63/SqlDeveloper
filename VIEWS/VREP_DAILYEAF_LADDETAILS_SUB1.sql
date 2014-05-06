--------------------------------------------------------
--  DDL for View VREP_DAILYEAF_LADDETAILS_SUB1
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "VREP_DAILYEAF_LADDETAILS_SUB1" ("LADLE_NO", "LADLE_PARTY", "BOTTOM", "M_Z", "S_Z", "BLOCK", "PLUG", "I_N", "PLATE", "C_N", "LADLE_LIFE", "VD", "PLUG_PARTY", "REMARKS") AS 
  SELECT
 to_number(SUBSTR(EQUIPMENT_NAME,6)) AS LADLE_NO,
PRODUCER AS LADLE_PARTY,
GET_REP_EQ_LIFE(main_rec.equipment_name, 'Bottom', 'HeatCount' ) AS BOTTOM,
GET_REP_EQ_LIFE(main_rec.equipment_name, 'MZ', 'HeatCount' ) AS M_Z,
GET_REP_EQ_LIFE(main_rec.equipment_name, 'SZ', 'HeatCount' ) AS S_Z,
GET_REP_EQ_LIFE(main_rec.equipment_name, 'Block', 'HeatCount' ) AS BLOCK,
GET_REP_EQ_LIFE(main_rec.equipment_name, 'Plug', 'HeatCount' ) AS PLUG,
GET_REP_EQ_LIFE(main_rec.equipment_name, 'IN', 'HeatCount' ) AS I_N,
GET_REP_EQ_LIFE(main_rec.equipment_name, 'Plate', 'HeatCount' ) AS PLATE,
GET_REP_EQ_LIFE(main_rec.equipment_name, 'CN', 'HeatCount' ) AS C_N,
GET_REP_EQ_LIFE(main_rec.equipment_name, '', 'HeatCount' ) AS LADLE_LIFE,
GET_REP_EQ_LIFE(main_rec.equipment_name, '', 'VacuumCount' ) AS VD,
(SELECT PRODUCER FROM C_EQUIPMENT CPP WHERE CPP.ID=GET_REP_EQ_ID(main_rec.equipment_name, 'Plug' )) AS PLUG_PARTY,
main_rec.DESCRIPTION AS REMARKS
FROM C_EQUIPMENT main_rec
WHERE C_EQUIPMENT_TYPE_ID=(SELECT ID FROM C_EQUIPMENT_TYPE WHERE TYPE_NAME='SteelLadle')
ORDER BY LADLE_NO;
