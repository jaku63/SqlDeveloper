--------------------------------------------------------
--  DDL for Table ME_PRED_ELECTRIC
--------------------------------------------------------

  CREATE TABLE "ME_PRED_ELECTRIC" 
   (	"ID" NUMBER, 
	"ME_PRED_PHASE_ID" NUMBER, 
	"STEP_SEQ_NO" NUMBER, 
	"CE_EL_POWER_ID" NUMBER, 
	"DURATION" NUMBER, 
	"END_ENERGY" NUMBER(12,1), 
	"CREATED" DATE, 
	"MODIFIED" DATE, 
	"MOP" VARCHAR2(120 BYTE)
   ) ;

   COMMENT ON COLUMN "ME_PRED_ELECTRIC"."ME_PRED_PHASE_ID" IS 'phase identification';
   COMMENT ON COLUMN "ME_PRED_ELECTRIC"."STEP_SEQ_NO" IS 'practice step identification';
   COMMENT ON COLUMN "ME_PRED_ELECTRIC"."CE_EL_POWER_ID" IS 'Definition of el power for the step';
   COMMENT ON COLUMN "ME_PRED_ELECTRIC"."DURATION" IS 'Unit [s] : step duration';
   COMMENT ON COLUMN "ME_PRED_ELECTRIC"."END_ENERGY" IS 'Unit [kWh] : energy consumed up to the step end';
