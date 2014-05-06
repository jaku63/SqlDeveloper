--------------------------------------------------------
--  DDL for Table ME_PRED_CONTI_MAT
--------------------------------------------------------

  CREATE TABLE "ME_PRED_CONTI_MAT" 
   (	"ID" NUMBER, 
	"ME_PRED_PHASE_ID" NUMBER, 
	"STEP_SEQ_NO" NUMBER, 
	"C_BUNKER_ID" NUMBER, 
	"C_MATERIAL_ID" NUMBER, 
	"FEED_SPEED" NUMBER(6,2), 
	"DURATION" NUMBER, 
	"MAT_AMOUNT" NUMBER(6,0), 
	"START_ENERGY" NUMBER(12,1), 
	"CREATED" DATE, 
	"MODIFIED" DATE, 
	"MOP" VARCHAR2(120 BYTE)
   ) ;

   COMMENT ON COLUMN "ME_PRED_CONTI_MAT"."ME_PRED_PHASE_ID" IS 'phase identification';
   COMMENT ON COLUMN "ME_PRED_CONTI_MAT"."STEP_SEQ_NO" IS 'practice step identification';
   COMMENT ON COLUMN "ME_PRED_CONTI_MAT"."C_BUNKER_ID" IS 'bunker identification';
   COMMENT ON COLUMN "ME_PRED_CONTI_MAT"."C_MATERIAL_ID" IS 'material identification';
   COMMENT ON COLUMN "ME_PRED_CONTI_MAT"."FEED_SPEED" IS 'Unit [kg/s] : speed of material continuous feeding';
   COMMENT ON COLUMN "ME_PRED_CONTI_MAT"."DURATION" IS 'Unit [s] : step duration';
   COMMENT ON COLUMN "ME_PRED_CONTI_MAT"."MAT_AMOUNT" IS 'Unit [kg] : material amount';
   COMMENT ON COLUMN "ME_PRED_CONTI_MAT"."START_ENERGY" IS 'Unit [kWh] : energy consumed up to the step start';
