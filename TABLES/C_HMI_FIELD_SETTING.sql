--------------------------------------------------------
--  DDL for Table C_HMI_FIELD_SETTING
--------------------------------------------------------

  CREATE TABLE "C_HMI_FIELD_SETTING" 
   (	"ID" NUMBER(5,0), 
	"VALUE_CODE" VARCHAR2(1024 BYTE), 
	"DISPLAY_FORMAT" VARCHAR2(1024 BYTE), 
	"MIN_VALUE" NUMBER, 
	"MAX_VALUE" NUMBER, 
	"CONVERSION_FACTOR" NUMBER, 
	"CREATED" DATE, 
	"MODIFIED" DATE, 
	"MOP" VARCHAR2(120 BYTE), 
	"DATA_TYPE" VARCHAR2(20 BYTE)
   ) ;
