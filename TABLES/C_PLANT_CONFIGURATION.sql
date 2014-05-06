--------------------------------------------------------
--  DDL for Table C_PLANT_CONFIGURATION
--------------------------------------------------------

  CREATE TABLE "C_PLANT_CONFIGURATION" 
   (	"ID" NUMBER, 
	"PLANT_NAME" VARCHAR2(32 BYTE), 
	"PLANT_NUMBER" NUMBER(1,0), 
	"REF_VALUE_NAME" VARCHAR2(32 BYTE), 
	"REF_VALUE" VARCHAR2(32 BYTE), 
	"TOC" DATE, 
	"TOM" DATE, 
	"MOP" VARCHAR2(120 BYTE)
   ) ;
