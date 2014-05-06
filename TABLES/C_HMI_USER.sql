--------------------------------------------------------
--  DDL for Table C_HMI_USER
--------------------------------------------------------

  CREATE TABLE "C_HMI_USER" 
   (	"ID" NUMBER(5,0), 
	"NAME" VARCHAR2(50 BYTE), 
	"C_HMI_PROFILE_ID" NUMBER(5,0), 
	"PASSWORD" VARCHAR2(50 BYTE), 
	"CREATED" DATE, 
	"MODIFIED" DATE, 
	"MOP" VARCHAR2(120 BYTE)
   ) ;
