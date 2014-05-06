--------------------------------------------------------
--  DDL for Table PE_BOTTOM_TEMP_REPORT
--------------------------------------------------------

  CREATE TABLE "PE_BOTTOM_TEMP_REPORT" 
   (	"ID" NUMBER, 
	"TEMP_ID" NUMBER, 
	"MEAS_TEMP" NUMBER(5,0), 
	"CREATED" DATE, 
	"MODIFIED" DATE, 
	"MOP" VARCHAR2(120 BYTE), 
	"C_PLANT_UNIT_ID" NUMBER, 
	"S_HEAT_ID" NUMBER
   ) ;
