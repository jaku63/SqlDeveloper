--------------------------------------------------------
--  DDL for Table MV_PRED_PHASE
--------------------------------------------------------

  CREATE TABLE "MV_PRED_PHASE" 
   (	"ID" NUMBER, 
	"S_HEAT_ID" NUMBER, 
	"MV_HEAT_ID" NUMBER, 
	"PHASE_SEQ_NO" NUMBER, 
	"C_PHASE_ID" NUMBER, 
	"C_MATERIAL_TAB_ID" NUMBER, 
	"DURATION" NUMBER(8,0), 
	"STEEL_WEIGHT" NUMBER(8,0), 
	"SLAG_WEIGHT" NUMBER(8,0), 
	"STEEL_TEMPERATURE" NUMBER(4,0), 
	"PRESSURE" NUMBER, 
	"PUMP_DOWN" NUMBER, 
	"DEGASSING" NUMBER, 
	"GAS1" VARCHAR2(2 BYTE), 
	"GAS_FLOW1" NUMBER(6,4), 
	"GAS2" VARCHAR2(2 BYTE), 
	"GAS_FLOW2" NUMBER(6,4), 
	"CREATED" DATE, 
	"MODIFIED" DATE, 
	"MOP" VARCHAR2(120 BYTE)
   ) ;

   COMMENT ON COLUMN "MV_PRED_PHASE"."S_HEAT_ID" IS 'heat identification';
   COMMENT ON COLUMN "MV_PRED_PHASE"."DURATION" IS 'Unit [s] : phase duration';
   COMMENT ON COLUMN "MV_PRED_PHASE"."STEEL_WEIGHT" IS 'Unit [kg] : predicted weight of steel in VD';
   COMMENT ON COLUMN "MV_PRED_PHASE"."SLAG_WEIGHT" IS 'Unit [kg] : predicted weight of slag in VD';
   COMMENT ON COLUMN "MV_PRED_PHASE"."STEEL_TEMPERATURE" IS 'Unit [°C] : steel temperature in the ladle';
   COMMENT ON COLUMN "MV_PRED_PHASE"."GAS_FLOW1" IS 'Unit [Nm3/s] : ';
   COMMENT ON COLUMN "MV_PRED_PHASE"."GAS_FLOW2" IS 'Unit [Nm3/s] : ';
