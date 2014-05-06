--------------------------------------------------------
--  DDL for Table C_EQUIPMENT
--------------------------------------------------------

  CREATE TABLE "C_EQUIPMENT" 
   (	"ID" NUMBER, 
	"C_EQUIPMENT_TYPE_ID" NUMBER, 
	"EQUIPMENT_NAME" VARCHAR2(64 BYTE), 
	"IN_USE" NUMBER, 
	"SERIAL_NUMBER" VARCHAR2(128 BYTE), 
	"DESCRIPTION" VARCHAR2(128 BYTE), 
	"CREATED" DATE, 
	"MODIFIED" DATE, 
	"MOP" VARCHAR2(120 BYTE), 
	"PRODUCER" VARCHAR2(64 BYTE), 
	"EQUIPMENT_NO" NUMBER
   ) ;
