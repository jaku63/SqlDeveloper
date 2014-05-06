--------------------------------------------------------
--  DDL for Table ML_PRED_PHASE
--------------------------------------------------------

  CREATE TABLE "ML_PRED_PHASE" 
   (	"ID" NUMBER, 
	"S_HEAT_ID" NUMBER, 
	"ML_HEAT_ID" NUMBER, 
	"PHASE_SEQ_NO" NUMBER, 
	"C_PHASE_ID" NUMBER, 
	"DESCRIPTION" VARCHAR2(120 BYTE), 
	"DURATION" NUMBER(8,0), 
	"END_PHASE_ENERGY" NUMBER(12,1), 
	"STEEL_WEIGHT" NUMBER(8,0), 
	"SLAG_WEIGHT" NUMBER(8,0), 
	"STEEL_TEMPERATURE" NUMBER(4,0), 
	"GAS1" VARCHAR2(2 BYTE), 
	"GAS_FLOW1" NUMBER(6,4), 
	"GAS2" VARCHAR2(2 BYTE), 
	"GAS_FLOW2" NUMBER(6,4), 
	"CREATED" DATE, 
	"MODIFIED" DATE, 
	"MOP" VARCHAR2(120 BYTE)
   ) ;

   COMMENT ON COLUMN "ML_PRED_PHASE"."S_HEAT_ID" IS 'heat identification';
   COMMENT ON COLUMN "ML_PRED_PHASE"."ML_HEAT_ID" IS 'reference to ML_HEAT table';
   COMMENT ON COLUMN "ML_PRED_PHASE"."DURATION" IS 'Unit [s] : phase duration';
   COMMENT ON COLUMN "ML_PRED_PHASE"."END_PHASE_ENERGY" IS 'Unit [kWh] : energy consumed up to the phase end';
   COMMENT ON COLUMN "ML_PRED_PHASE"."STEEL_WEIGHT" IS 'Unit [kg] : predicted weight of steel in LF';
   COMMENT ON COLUMN "ML_PRED_PHASE"."SLAG_WEIGHT" IS 'Unit [kg] : predicted weight of slag in LF';
   COMMENT ON COLUMN "ML_PRED_PHASE"."STEEL_TEMPERATURE" IS 'Unit [°C] : steel temperature in the ladle';
   COMMENT ON COLUMN "ML_PRED_PHASE"."GAS_FLOW1" IS 'Unit [Nm3/s] : ';
   COMMENT ON COLUMN "ML_PRED_PHASE"."GAS_FLOW2" IS 'Unit [Nm3/s] : ';
