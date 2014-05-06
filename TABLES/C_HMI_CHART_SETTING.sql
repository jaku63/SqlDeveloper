--------------------------------------------------------
--  DDL for Table C_HMI_CHART_SETTING
--------------------------------------------------------

  CREATE TABLE "C_HMI_CHART_SETTING" 
   (	"ID" NUMBER(5,0), 
	"C_PLANT_UNIT_ID" NUMBER, 
	"TABLE_NAME" VARCHAR2(1024 BYTE), 
	"COLUMN_NAME" VARCHAR2(1024 BYTE), 
	"CURVE_COLOR" VARCHAR2(1024 BYTE), 
	"CURVE_STYLE" NVARCHAR2(20), 
	"SHOW_IN_PM" NUMBER, 
	"AXIS" NUMBER, 
	"SERIE_NAME" VARCHAR2(120 BYTE), 
	"CREATED" DATE, 
	"MODIFIED" DATE, 
	"MOP" VARCHAR2(120 BYTE)
   ) ;
