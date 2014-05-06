--------------------------------------------------------
--  DDL for Table ME_PRED_OXYGEN
--------------------------------------------------------

  CREATE TABLE "ME_PRED_OXYGEN" 
   (	"ID" NUMBER, 
	"ME_PRED_PHASE_ID" NUMBER, 
	"STEP_SEQ_NO" NUMBER, 
	"CE_INJECTION_TYPE_ID" NUMBER, 
	"GAS_FLOW" NUMBER(10,6), 
	"GAS_AMOUNT" NUMBER(10,6), 
	"DURATION" NUMBER, 
	"START_ENERGY" NUMBER(12,1), 
	"CREATED" DATE, 
	"MODIFIED" DATE, 
	"MOP" VARCHAR2(120 BYTE)
   ) ;

   COMMENT ON COLUMN "ME_PRED_OXYGEN"."ME_PRED_PHASE_ID" IS 'phase identification';
   COMMENT ON COLUMN "ME_PRED_OXYGEN"."STEP_SEQ_NO" IS 'practice step identification';
   COMMENT ON COLUMN "ME_PRED_OXYGEN"."CE_INJECTION_TYPE_ID" IS 'blowing device id';
   COMMENT ON COLUMN "ME_PRED_OXYGEN"."GAS_FLOW" IS 'Unit [Nm3/s] : oxygen flow';
   COMMENT ON COLUMN "ME_PRED_OXYGEN"."GAS_AMOUNT" IS 'Unit [Nm3] : oxygen amount';
   COMMENT ON COLUMN "ME_PRED_OXYGEN"."DURATION" IS 'Unit [s] : step duration';
   COMMENT ON COLUMN "ME_PRED_OXYGEN"."START_ENERGY" IS 'Unit [kWh] : energy consumed up to the step start';
