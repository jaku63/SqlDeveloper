--------------------------------------------------------
--  DDL for Table PE_MAT_REPORT
--------------------------------------------------------

  CREATE TABLE "PE_MAT_REPORT" 
   (	"ID" NUMBER, 
	"PE_HEAT_ID" NUMBER, 
	"BUNKER_NO_ID" NUMBER, 
	"MAT_CODE_ID" NUMBER, 
	"TARGET_CODE" NUMBER, 
	"MAT_WEIGHT" NUMBER(8,0), 
	"CREATED" DATE, 
	"MODIFIED" DATE, 
	"MOP" VARCHAR2(120 BYTE)
   ) ;

   COMMENT ON COLUMN "PE_MAT_REPORT"."PE_HEAT_ID" IS 'heat identification';
   COMMENT ON COLUMN "PE_MAT_REPORT"."BUNKER_NO_ID" IS 'bunkere number';
   COMMENT ON COLUMN "PE_MAT_REPORT"."MAT_CODE_ID" IS 'material identification';
   COMMENT ON COLUMN "PE_MAT_REPORT"."TARGET_CODE" IS '1 = EAF hopper, 2 = fifth hole, 3 = ladle at EAF';
   COMMENT ON COLUMN "PE_MAT_REPORT"."MAT_WEIGHT" IS 'Unit [kg] : weight of the material ';
