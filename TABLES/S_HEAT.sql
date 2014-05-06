--------------------------------------------------------
--  DDL for Table S_HEAT
--------------------------------------------------------

  CREATE TABLE "S_HEAT" 
   (	"ID" NUMBER, 
	"HEAT_NO" VARCHAR2(20 BYTE), 
	"HEAT_SEQ_NO" NUMBER, 
	"HEAT_POS_IN_SEQ" NUMBER, 
	"C_STEEL_GRADE_ID" NUMBER, 
	"LADLE_NO" NUMBER, 
	"CE_PRACTICE_ID" NUMBER, 
	"STEEL_WEIGHT" NUMBER(8,0), 
	"STEEL_WEIGHT_MAX" NUMBER(8,0), 
	"HOT_HEEL_WEIGHT" NUMBER(8,0), 
	"ROUTE_CODE" VARCHAR2(4 BYTE), 
	"PRACTICE_CODE_CC" VARCHAR2(10 BYTE), 
	"ORDER_ID" VARCHAR2(20 BYTE), 
	"NUMBER_OF_HEATS" NUMBER, 
	"OPEN_TIME_CALC" DATE, 
	"CASTING_DURATION" NUMBER, 
	"LADLE_TEMPERATURE" NUMBER, 
	"LADLE_TEMPERATURE_TIME" DATE, 
	"FLYING_TUNDISH" NUMBER, 
	"LADLE_TARE_WEIGHT" NUMBER, 
	"LADLE_GROSS_WEIGHT" NUMBER, 
	"SLAG_THICKNESS" NUMBER, 
	"LADLE_LIFE" NUMBER, 
	"LADLE_REFRACTORY" VARCHAR2(50 BYTE), 
	"SLAG_DETECTOR" NUMBER, 
	"BUBBLING_REQUIRED" NUMBER, 
	"PREV_PU" VARCHAR2(4 BYTE), 
	"PREV_PU_NO" NUMBER, 
	"PREV_PU_START_PLAN" DATE, 
	"PREV_PU_START_ACT" DATE, 
	"PREV_PU_END_PLAN" DATE, 
	"PREV_PU_END_ACT" DATE, 
	"LSGO_PLAN" DATE, 
	"LSGO_ACT" DATE, 
	"TUND_PREH_START_PLAN" DATE, 
	"L3_STATUS" NUMBER, 
	"CREATED" DATE, 
	"MODIFIED" DATE, 
	"MOP" VARCHAR2(120 BYTE)
   ) ;

   COMMENT ON COLUMN "S_HEAT"."HEAT_NO" IS 'heat identification';
   COMMENT ON COLUMN "S_HEAT"."HEAT_SEQ_NO" IS 'sequence of heat in plant production ';
   COMMENT ON COLUMN "S_HEAT"."HEAT_POS_IN_SEQ" IS 'CC position in sequence';
   COMMENT ON COLUMN "S_HEAT"."C_STEEL_GRADE_ID" IS 'Steel grade code ID';
   COMMENT ON COLUMN "S_HEAT"."CE_PRACTICE_ID" IS 'EAF practice code ID';
   COMMENT ON COLUMN "S_HEAT"."STEEL_WEIGHT" IS 'Unit [kg] : aim steel weight of jheat';
   COMMENT ON COLUMN "S_HEAT"."STEEL_WEIGHT_MAX" IS 'Unit [kg] : maximum steel weight of jheat';
   COMMENT ON COLUMN "S_HEAT"."HOT_HEEL_WEIGHT" IS 'Unit [kg] : required remnant steel weight in EAF after tapping';
   COMMENT ON COLUMN "S_HEAT"."ROUTE_CODE" IS 'Route code';
   COMMENT ON COLUMN "S_HEAT"."PRACTICE_CODE_CC" IS 'CC production practice';
   COMMENT ON COLUMN "S_HEAT"."ORDER_ID" IS 'production order identification';
   COMMENT ON COLUMN "S_HEAT"."NUMBER_OF_HEATS" IS 'L3 info';
   COMMENT ON COLUMN "S_HEAT"."OPEN_TIME_CALC" IS 'L3 info';
   COMMENT ON COLUMN "S_HEAT"."CASTING_DURATION" IS 'L3 info';
   COMMENT ON COLUMN "S_HEAT"."LADLE_TEMPERATURE" IS 'L3 info';
   COMMENT ON COLUMN "S_HEAT"."LADLE_TEMPERATURE_TIME" IS 'L3 info';
   COMMENT ON COLUMN "S_HEAT"."FLYING_TUNDISH" IS 'flying tundish exchange request: 0 = no, 1 = yes';
   COMMENT ON COLUMN "S_HEAT"."LADLE_TARE_WEIGHT" IS 'Unit [kg] : ladle tare weight';
   COMMENT ON COLUMN "S_HEAT"."LADLE_GROSS_WEIGHT" IS 'L3 info';
   COMMENT ON COLUMN "S_HEAT"."SLAG_THICKNESS" IS 'L3 info';
   COMMENT ON COLUMN "S_HEAT"."LADLE_LIFE" IS 'L3 info';
   COMMENT ON COLUMN "S_HEAT"."LADLE_REFRACTORY" IS 'L3 info';
   COMMENT ON COLUMN "S_HEAT"."SLAG_DETECTOR" IS 'L3 info';
   COMMENT ON COLUMN "S_HEAT"."BUBBLING_REQUIRED" IS 'L3 info';
   COMMENT ON COLUMN "S_HEAT"."PREV_PU" IS 'L3 info';
   COMMENT ON COLUMN "S_HEAT"."PREV_PU_NO" IS 'L3 info';
   COMMENT ON COLUMN "S_HEAT"."PREV_PU_START_PLAN" IS 'L3 info';
   COMMENT ON COLUMN "S_HEAT"."PREV_PU_START_ACT" IS 'L3 info';
   COMMENT ON COLUMN "S_HEAT"."PREV_PU_END_PLAN" IS 'L3 info';
   COMMENT ON COLUMN "S_HEAT"."PREV_PU_END_ACT" IS 'L3 info';
   COMMENT ON COLUMN "S_HEAT"."LSGO_PLAN" IS 'L3 info';
   COMMENT ON COLUMN "S_HEAT"."LSGO_ACT" IS 'L3 info';
   COMMENT ON COLUMN "S_HEAT"."TUND_PREH_START_PLAN" IS 'L3 info';
   COMMENT ON COLUMN "S_HEAT"."L3_STATUS" IS 'L3 info';
