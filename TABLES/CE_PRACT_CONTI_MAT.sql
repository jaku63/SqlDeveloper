--------------------------------------------------------
--  DDL for Table CE_PRACT_CONTI_MAT
--------------------------------------------------------

  CREATE TABLE "CE_PRACT_CONTI_MAT" 
   (	"ID" NUMBER, 
	"CE_PRACTICE_PHASE_ID" NUMBER, 
	"STEP_SEQ_NO" NUMBER, 
	"C_BUNKER_ID" NUMBER, 
	"C_MATERIAL_ID" NUMBER, 
	"SCHED_FEED_RATE" NUMBER(8,2), 
	"MIN_FEED_RATE" NUMBER(8,2), 
	"STEP_TYPE" NUMBER DEFAULT 0, 
	"MATERIAL_AMOUNT" NUMBER(8,0), 
	"DURATION" NUMBER, 
	"START_SPECIFIC_ENERGY" NUMBER(8,2), 
	"START_ENERGY" NUMBER, 
	"MASTER_MATERIAL" NUMBER, 
	"CREATED" DATE, 
	"MODIFIED" DATE, 
	"MOP" VARCHAR2(120 BYTE)
   ) ;

   COMMENT ON COLUMN "CE_PRACT_CONTI_MAT"."CE_PRACTICE_PHASE_ID" IS 'Reference to CE_PRACTICE table';
   COMMENT ON COLUMN "CE_PRACT_CONTI_MAT"."STEP_SEQ_NO" IS 'practice step identification';
   COMMENT ON COLUMN "CE_PRACT_CONTI_MAT"."C_BUNKER_ID" IS 'bunker identification';
   COMMENT ON COLUMN "CE_PRACT_CONTI_MAT"."C_MATERIAL_ID" IS 'material identification';
   COMMENT ON COLUMN "CE_PRACT_CONTI_MAT"."SCHED_FEED_RATE" IS 'Unit [kg/s] : speed of material continuous feeding';
   COMMENT ON COLUMN "CE_PRACT_CONTI_MAT"."MIN_FEED_RATE" IS 'Unit [kg/s] : minimal feed speed';
   COMMENT ON COLUMN "CE_PRACT_CONTI_MAT"."STEP_TYPE" IS '0 = fixed step, 1 = variable step';
   COMMENT ON COLUMN "CE_PRACT_CONTI_MAT"."MATERIAL_AMOUNT" IS 'fixed amount in step';
   COMMENT ON COLUMN "CE_PRACT_CONTI_MAT"."DURATION" IS 'Unit [s] : step duration';
   COMMENT ON COLUMN "CE_PRACT_CONTI_MAT"."START_SPECIFIC_ENERGY" IS 'Unit [kWh/kg] : specific energy consumed up to step start';
   COMMENT ON COLUMN "CE_PRACT_CONTI_MAT"."START_ENERGY" IS 'Start step energy [kWh]';
