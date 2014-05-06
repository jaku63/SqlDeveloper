--------------------------------------------------------
--  DDL for Table CC_SPEED_LIMIT
--------------------------------------------------------

  CREATE TABLE "CC_SPEED_LIMIT" 
   (	"ID" NUMBER, 
	"CC_SH_LIM_DEF_ID" NUMBER, 
	"CC_SECTION_DEF_ID" NUMBER, 
	"CC_C_CONTENT_DEF_ID" NUMBER, 
	"MIN_SPEED" NUMBER, 
	"MAX_SPEED" NUMBER, 
	"DESCRIPTION" VARCHAR2(150 BYTE), 
	"CREATED" DATE, 
	"MODIFIED" DATE, 
	"MOP" VARCHAR2(120 BYTE)
   ) ;

   COMMENT ON COLUMN "CC_SPEED_LIMIT"."CC_SH_LIM_DEF_ID" IS 'reference to CC_SH_LIM_DEF';
   COMMENT ON COLUMN "CC_SPEED_LIMIT"."CC_SECTION_DEF_ID" IS 'reference to CC_SECTION_DEF table';
   COMMENT ON COLUMN "CC_SPEED_LIMIT"."CC_C_CONTENT_DEF_ID" IS 'reference to CC_C_CONTENT_DEF table';
   COMMENT ON COLUMN "CC_SPEED_LIMIT"."MIN_SPEED" IS 'casting minimal speed';
   COMMENT ON COLUMN "CC_SPEED_LIMIT"."MAX_SPEED" IS 'casting maximal speed';
   COMMENT ON TABLE "CC_SPEED_LIMIT"  IS 'cast speed limits - used for cast speed optimazation';
