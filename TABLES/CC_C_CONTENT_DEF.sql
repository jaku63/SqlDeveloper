--------------------------------------------------------
--  DDL for Table CC_C_CONTENT_DEF
--------------------------------------------------------

  CREATE TABLE "CC_C_CONTENT_DEF" 
   (	"ID" NUMBER, 
	"MIN_LIM" NUMBER, 
	"MAX_LIM" NUMBER, 
	"DESCRIPTION" VARCHAR2(150 BYTE), 
	"CREATED" DATE, 
	"MODIFIED" DATE, 
	"MOP" VARCHAR2(120 BYTE)
   ) ;

   COMMENT ON COLUMN "CC_C_CONTENT_DEF"."MIN_LIM" IS 'min limit of C';
   COMMENT ON COLUMN "CC_C_CONTENT_DEF"."MAX_LIM" IS 'max limit of C';
   COMMENT ON TABLE "CC_C_CONTENT_DEF"  IS 'carbon content - used for cast speed optimazation';
