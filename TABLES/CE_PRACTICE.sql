--------------------------------------------------------
--  DDL for Table CE_PRACTICE
--------------------------------------------------------

  CREATE TABLE "CE_PRACTICE" 
   (	"ID" NUMBER, 
	"PRACTICE_CODE" VARCHAR2(20 BYTE), 
	"DESCRIPTION" VARCHAR2(80 BYTE), 
	"NUM_OF_HOT_METAL" NUMBER, 
	"NUM_OF_BASKETS" NUMBER, 
	"CREATED" DATE, 
	"MODIFIED" DATE, 
	"MOP" VARCHAR2(120 BYTE)
   ) ;

   COMMENT ON COLUMN "CE_PRACTICE"."PRACTICE_CODE" IS 'production practice identification';
