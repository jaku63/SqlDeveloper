--------------------------------------------------------
--  DDL for Table P_MAT_REPORT
--------------------------------------------------------

  CREATE TABLE "P_MAT_REPORT" 
   (	"ID" NUMBER, 
	"S_HEAT_ID" NUMBER, 
	"C_PLANT_UNIT_ID" NUMBER, 
	"C_BUNKER_ID" NUMBER, 
	"C_MATERIAL_ID" NUMBER, 
	"TARGET_CODE" NUMBER, 
	"MAT_WEIGHT" NUMBER(8,0), 
	"DISCHARGE_TIME" DATE, 
	"CREATED" DATE, 
	"MODIFIED" DATE, 
	"MOP" VARCHAR2(120 BYTE)
   ) ;
