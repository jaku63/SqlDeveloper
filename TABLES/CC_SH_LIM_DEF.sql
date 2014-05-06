--------------------------------------------------------
--  DDL for Table CC_SH_LIM_DEF
--------------------------------------------------------

  CREATE TABLE "CC_SH_LIM_DEF" 
   (	"ID" NUMBER, 
	"MIN_LIM" NUMBER, 
	"MAX_LIM" NUMBER, 
	"DESCRIPTION" VARCHAR2(150 BYTE), 
	"CREATED" DATE, 
	"MODIFIED" DATE, 
	"MOP" VARCHAR2(120 BYTE)
   ) ;

   COMMENT ON COLUMN "CC_SH_LIM_DEF"."MIN_LIM" IS 'minimal limit';
   COMMENT ON COLUMN "CC_SH_LIM_DEF"."MAX_LIM" IS 'maxilam limit';
   COMMENT ON TABLE "CC_SH_LIM_DEF"  IS 'caster super heat limit definitions';
