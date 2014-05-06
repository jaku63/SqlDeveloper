--------------------------------------------------------
--  DDL for Table MV_HEAT
--------------------------------------------------------

  CREATE TABLE "MV_HEAT" 
   (	"ID" NUMBER, 
	"S_HEAT_ID" NUMBER, 
	"PV_HEAT_ID" NUMBER, 
	"C_PLANT_UNIT_ID" NUMBER, 
	"C_PHASE_ID" NUMBER, 
	"STEEL_WEIGHT" NUMBER(8,0), 
	"SLAG_WEIGHT" NUMBER(8,0), 
	"STEEL_TEMPERATURE" NUMBER(6,2), 
	"MIN_VAC_DURATION" NUMBER, 
	"ENERGY_LOSS_SUM" NUMBER, 
	"PHASE_NO" NUMBER, 
	"ALLOYING_RESULT" NUMBER, 
	"ALLOYING_MSG" VARCHAR2(512 BYTE), 
	"CREATED" DATE, 
	"MODIFIED" DATE, 
	"MOP" VARCHAR2(120 BYTE)
   ) ;

   COMMENT ON COLUMN "MV_HEAT"."S_HEAT_ID" IS 'heat identification';
   COMMENT ON COLUMN "MV_HEAT"."PV_HEAT_ID" IS 'PV_HEAT reference';
   COMMENT ON COLUMN "MV_HEAT"."C_PLANT_UNIT_ID" IS 'Plant unit reference';
   COMMENT ON COLUMN "MV_HEAT"."C_PHASE_ID" IS 'Current phase id - C_PHASE table';
   COMMENT ON COLUMN "MV_HEAT"."STEEL_WEIGHT" IS 'Unit [kg] : actual weight of steel in VD';
   COMMENT ON COLUMN "MV_HEAT"."SLAG_WEIGHT" IS 'Unit [kg] : actual weight of slag in VD';
   COMMENT ON COLUMN "MV_HEAT"."STEEL_TEMPERATURE" IS 'Unit [°C] : steel temperature in the ladle';
   COMMENT ON COLUMN "MV_HEAT"."ENERGY_LOSS_SUM" IS 'Summary of energy losses';
   COMMENT ON COLUMN "MV_HEAT"."ALLOYING_RESULT" IS 'Result of alloying ( 0 - alloying failed, 1 - alloying ok )';
   COMMENT ON COLUMN "MV_HEAT"."ALLOYING_MSG" IS 'Alloying message';
