--------------------------------------------------------
--  DDL for Table C_HMI_DEV_REQ
--------------------------------------------------------

  CREATE TABLE "C_HMI_DEV_REQ" 
   (	"ID" NUMBER, 
	"TARGET_DIALOG" NUMBER, 
	"REQUEST_DESCRIPTION" VARCHAR2(2048 BYTE), 
	"IMG" BLOB, 
	"CREATED" DATE, 
	"MODIFIED" DATE, 
	"MOP" VARCHAR2(120 BYTE), 
	"C_HMI_DIALOG_ID" NUMBER
   ) ;
