--------------------------------------------------------
--  DDL for Table C_HMI_PROFILE_RIGHT
--------------------------------------------------------

  CREATE TABLE "C_HMI_PROFILE_RIGHT" 
   (	"ID" NUMBER(5,0), 
	"C_HMI_PROFILE_ID" NUMBER(5,0), 
	"C_HMI_DIALOG_ID" NUMBER(5,0), 
	"ACCESS_RIGHT" NUMBER(1,0), 
	"CREATED" DATE, 
	"MODIFIED" DATE, 
	"MOP" VARCHAR2(120 BYTE)
   ) ;
