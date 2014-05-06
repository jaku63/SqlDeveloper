--------------------------------------------------------
--  DDL for Table CL_PRACTICE
--------------------------------------------------------

  CREATE TABLE "CL_PRACTICE" 
   (	"ID" NUMBER, 
	"PRACTICE_CODE" VARCHAR2(10 BYTE), 
	"DESCRIPTION" VARCHAR2(80 BYTE), 
	"CREATED" DATE, 
	"MODIFIED" DATE, 
	"MOP" VARCHAR2(120 BYTE)
   ) ;

   COMMENT ON COLUMN "CL_PRACTICE"."PRACTICE_CODE" IS 'production practice identification';
   COMMENT ON COLUMN "CL_PRACTICE"."DESCRIPTION" IS '';
