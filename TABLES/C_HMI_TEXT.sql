--------------------------------------------------------
--  DDL for Table C_HMI_TEXT
--------------------------------------------------------

  CREATE TABLE "C_HMI_TEXT" 
   (	"ID" NUMBER(5,0), 
	"VALUE_CODE" VARCHAR2(1024 BYTE), 
	"LANGUAGE" CHAR(1 BYTE), 
	"VALUE_TEXT" VARCHAR2(1024 BYTE), 
	"CREATED" DATE, 
	"MODIFIED" DATE, 
	"MOP" VARCHAR2(120 BYTE)
   ) ;
