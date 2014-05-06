--------------------------------------------------------
--  DDL for Table C_HMI_REPORT
--------------------------------------------------------

  CREATE TABLE "C_HMI_REPORT" 
   (	"ID" NUMBER(5,0), 
	"REP_NAME" VARCHAR2(1024 BYTE), 
	"REP_FILE" VARCHAR2(1024 BYTE), 
	"REP_CLASS" VARCHAR2(1024 BYTE), 
	"PLANT_UNIT_CODE" VARCHAR2(3 BYTE), 
	"CREATED" DATE, 
	"MODIFIED" DATE, 
	"MOP" VARCHAR2(120 BYTE)
   ) ;
