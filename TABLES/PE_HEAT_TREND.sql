--------------------------------------------------------
--  DDL for Table PE_HEAT_TREND
--------------------------------------------------------

  CREATE TABLE "PE_HEAT_TREND" 
   (	"ID" NUMBER, 
	"PLANT_UNIT_CODE" VARCHAR2(6 BYTE), 
	"PLANT_UNIT_NO" NUMBER, 
	"PE_HEAT_ID" NUMBER, 
	"CALC_TEMP" NUMBER(8,0), 
	"C_CONTENT" NUMBER(7,4), 
	"P_CONTENT" NUMBER(7,4), 
	"S_CONTENT" NUMBER(7,4), 
	"SI_CONTENT" NUMBER(7,4), 
	"SIO2_CONTENT" NUMBER(7,4), 
	"CAO_CONTENT" NUMBER(7,4), 
	"FEO_CONTENT" NUMBER(7,4), 
	"BASICITY" NUMBER(3,2), 
	"CREATED" DATE, 
	"MODIFIED" DATE, 
	"MOP" VARCHAR2(120 BYTE)
   ) ;
