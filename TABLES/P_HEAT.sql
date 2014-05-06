--------------------------------------------------------
--  DDL for Table P_HEAT
--------------------------------------------------------

  CREATE TABLE "P_HEAT" 
   (	"ID" NUMBER, 
	"S_HEAT_ID" NUMBER, 
	"C_STEEL_GRADE_ID" NUMBER, 
	"C_EQUIPMENT_ID_LADLE" NUMBER, 
	"RELADLE_TIME" DATE, 
	"LAST_PLANT_UNIT_ID" NUMBER, 
	"STEEL_TEMP" NUMBER, 
	"STEEL_TEMP_TIME" DATE, 
	"STEEL_WEIGHT" NUMBER, 
	"SLAG_WEIGHT" NUMBER, 
	"C_HEAT_STATUS_ID" NUMBER, 
	"STATUS_DATE" DATE, 
	"END_TIME" DATE, 
	"CREATED" DATE, 
	"MODIFIED" DATE, 
	"MOP" VARCHAR2(120 BYTE), 
	"S_PROD_ORDER_ID" NUMBER
   ) ;
