--------------------------------------------------------
--  DDL for Table CV_PRACT_VACUUM
--------------------------------------------------------

  CREATE TABLE "CV_PRACT_VACUUM" 
   (	"ID" NUMBER, 
	"CV_PRACTICE_PHASE_ID" NUMBER, 
	"STEP_SEQ_NO" NUMBER, 
	"STEP_TYPE" NUMBER DEFAULT 0, 
	"PRESSURE" NUMBER, 
	"DURATION" NUMBER, 
	"CREATED" DATE, 
	"MODIFIED" DATE, 
	"MOP" VARCHAR2(120 BYTE)
   ) ;

   COMMENT ON COLUMN "CV_PRACT_VACUUM"."CV_PRACTICE_PHASE_ID" IS 'Reference to CL_PRACTICE table';
   COMMENT ON COLUMN "CV_PRACT_VACUUM"."STEP_SEQ_NO" IS 'practice step identification';
   COMMENT ON COLUMN "CV_PRACT_VACUUM"."STEP_TYPE" IS '0 = fixed step, 1 = variable step';
   COMMENT ON COLUMN "CV_PRACT_VACUUM"."PRESSURE" IS 'Pressure in [mBar]';
   COMMENT ON COLUMN "CV_PRACT_VACUUM"."DURATION" IS 'Unit [s] : step duration';
