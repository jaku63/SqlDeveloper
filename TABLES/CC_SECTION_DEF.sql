--------------------------------------------------------
--  DDL for Table CC_SECTION_DEF
--------------------------------------------------------

  CREATE TABLE "CC_SECTION_DEF" 
   (	"ID" NUMBER, 
	"WIDTH" NUMBER, 
	"THICKNESS" NUMBER, 
	"DESCRIPTION" VARCHAR2(150 BYTE), 
	"CREATED" DATE, 
	"MODIFIED" DATE, 
	"MOP" VARCHAR2(120 BYTE)
   ) ;

   COMMENT ON COLUMN "CC_SECTION_DEF"."WIDTH" IS 'width of section';
   COMMENT ON COLUMN "CC_SECTION_DEF"."THICKNESS" IS 't5hickness of section';
   COMMENT ON TABLE "CC_SECTION_DEF"  IS 'caster section definitions';
