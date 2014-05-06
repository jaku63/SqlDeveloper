--------------------------------------------------------
--  DDL for Table CC_STRAND_STATUS
--------------------------------------------------------

  CREATE TABLE "CC_STRAND_STATUS" 
   (	"ID" NUMBER, 
	"DESCRIPTION" VARCHAR2(40 BYTE), 
	"CREATED" DATE, 
	"MODIFIED" DATE, 
	"MOP" VARCHAR2(120 BYTE)
   ) ;

   COMMENT ON COLUMN "CC_STRAND_STATUS"."DESCRIPTION" IS 'Description';
