--------------------------------------------------------
--  DDL for Table CE_PRACT_ELECTRIC
--------------------------------------------------------

  CREATE TABLE "CE_PRACT_ELECTRIC" 
   (	"ID" NUMBER, 
	"CE_PRACTICE_PHASE_ID" NUMBER, 
	"STEP_SEQ_NO" NUMBER, 
	"CE_EL_POWER_ID" NUMBER, 
	"STEP_TYPE" NUMBER DEFAULT 0, 
	"DURATION" NUMBER, 
	"STEP_SPECIFIC_ENERGY" NUMBER(12,1), 
	"STEP_ENERGY" NUMBER(12,1), 
	"CREATED" DATE, 
	"MODIFIED" DATE, 
	"MOP" VARCHAR2(120 BYTE)
   ) ;

   COMMENT ON COLUMN "CE_PRACT_ELECTRIC"."CE_PRACTICE_PHASE_ID" IS 'Reference to CE_PRACTICE table';
   COMMENT ON COLUMN "CE_PRACT_ELECTRIC"."STEP_SEQ_NO" IS 'practice step identification';
   COMMENT ON COLUMN "CE_PRACT_ELECTRIC"."CE_EL_POWER_ID" IS 'reactor tap No of reactor';
   COMMENT ON COLUMN "CE_PRACT_ELECTRIC"."STEP_TYPE" IS '0 = fixed step, 1 = variable step';
   COMMENT ON COLUMN "CE_PRACT_ELECTRIC"."DURATION" IS 'Unit [s] : step duration';
   COMMENT ON COLUMN "CE_PRACT_ELECTRIC"."STEP_SPECIFIC_ENERGY" IS 'Unit [kWh/kg] : specific energy consumed in the step';
   COMMENT ON COLUMN "CE_PRACT_ELECTRIC"."STEP_ENERGY" IS 'step el. energy [kWh]';
