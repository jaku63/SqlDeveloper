--------------------------------------------------------
--  DDL for Table CL_PRACT_ELECTRIC
--------------------------------------------------------

  CREATE TABLE "CL_PRACT_ELECTRIC" 
   (	"ID" NUMBER, 
	"CL_PRACTICE_PHASE_ID" NUMBER, 
	"CL_EL_POWER_ID" NUMBER, 
	"STEP_SEQ_NO" NUMBER, 
	"STEP_TYPE" NUMBER DEFAULT 0, 
	"DURATION" NUMBER, 
	"TEMPERATURE_DIFF" NUMBER, 
	"STEP_SPECIFIC_ENERGY" NUMBER(8,2), 
	"CREATED" DATE, 
	"MODIFIED" DATE, 
	"MOP" VARCHAR2(120 BYTE)
   ) ;

   COMMENT ON COLUMN "CL_PRACT_ELECTRIC"."CL_PRACTICE_PHASE_ID" IS 'Reference to CL_PRACTICE table';
   COMMENT ON COLUMN "CL_PRACT_ELECTRIC"."CL_EL_POWER_ID" IS 'Reference to CL_EL_POWER table';
   COMMENT ON COLUMN "CL_PRACT_ELECTRIC"."STEP_SEQ_NO" IS 'practice step identification';
   COMMENT ON COLUMN "CL_PRACT_ELECTRIC"."STEP_TYPE" IS '0 = fixed step, 1 = variable step';
   COMMENT ON COLUMN "CL_PRACT_ELECTRIC"."DURATION" IS 'Unit [s] : step duration';
   COMMENT ON COLUMN "CL_PRACT_ELECTRIC"."TEMPERATURE_DIFF" IS 'Unit [K] : Temperature difference to calc duration with respect to weight DURATION=WEIGHT*SPEC_HEAT*TEMPERATURE_DIFF/EL_POWER/EL_EFFICIENCY ';
   COMMENT ON COLUMN "CL_PRACT_ELECTRIC"."STEP_SPECIFIC_ENERGY" IS 'Unit [kWh/kg] : specific energy consumed in the step';
