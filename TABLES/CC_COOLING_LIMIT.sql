--------------------------------------------------------
--  DDL for Table CC_COOLING_LIMIT
--------------------------------------------------------

  CREATE TABLE "CC_COOLING_LIMIT" 
   (	"ID" NUMBER, 
	"CURVE_NO" NUMBER, 
	"CC_SECTION_DEF_ID" NUMBER, 
	"CC_C_CONTENT_DEF_ID" NUMBER, 
	"MCW" NUMBER, 
	"SR" NUMBER, 
	"ZONE_1" NUMBER, 
	"ZONE_2" NUMBER, 
	"DESCRIPTION" VARCHAR2(150 BYTE), 
	"CREATED" DATE, 
	"MODIFIED" DATE, 
	"MOP" VARCHAR2(120 BYTE)
   ) ;

   COMMENT ON COLUMN "CC_COOLING_LIMIT"."CURVE_NO" IS 'number of the curve';
   COMMENT ON COLUMN "CC_COOLING_LIMIT"."CC_SECTION_DEF_ID" IS 'reference to CC_SECTION_DEF table';
   COMMENT ON COLUMN "CC_COOLING_LIMIT"."CC_C_CONTENT_DEF_ID" IS 'reference to CC_C_CONTENT_DEF table';
   COMMENT ON COLUMN "CC_COOLING_LIMIT"."MCW" IS 'mold cooling value';
   COMMENT ON COLUMN "CC_COOLING_LIMIT"."SR" IS 'SR cooling value';
   COMMENT ON COLUMN "CC_COOLING_LIMIT"."ZONE_1" IS 'Zone 1 cooling value';
   COMMENT ON COLUMN "CC_COOLING_LIMIT"."ZONE_2" IS 'Zone 2 cooling value';
   COMMENT ON TABLE "CC_COOLING_LIMIT"  IS 'cast cooling limits - used for cooling model';
