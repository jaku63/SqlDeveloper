--------------------------------------------------------
--  DDL for Table ML_HEAT
--------------------------------------------------------

  CREATE TABLE "ML_HEAT" 
   (	"ID" NUMBER, 
	"S_HEAT_ID" NUMBER, 
	"PL_HEAT_ID" NUMBER, 
	"C_PLANT_UNIT_ID" NUMBER, 
	"STEEL_WEIGHT" NUMBER(8,0), 
	"SLAG_WEIGHT" NUMBER(8,0), 
	"STEEL_TEMPERATURE" NUMBER(6,2), 
	"ENERGY_SUPPLIED" NUMBER, 
	"ENERGY_LOSS_SUM" NUMBER, 
	"PHASE_NO" NUMBER, 
	"ENERGY_STEP_NO" NUMBER, 
	"ALLOYING_RESULT" NUMBER, 
	"ALLOYING_MSG" VARCHAR2(512 BYTE), 
	"CREATED" DATE, 
	"MODIFIED" DATE, 
	"MOP" VARCHAR2(120 BYTE)
   ) ;

   COMMENT ON COLUMN "ML_HEAT"."S_HEAT_ID" IS 'heat identification';
   COMMENT ON COLUMN "ML_HEAT"."PL_HEAT_ID" IS 'PL_HEAT reference';
   COMMENT ON COLUMN "ML_HEAT"."C_PLANT_UNIT_ID" IS 'Plant unit reference';
   COMMENT ON COLUMN "ML_HEAT"."STEEL_WEIGHT" IS 'Unit [kg] : actual weight of steel in LF';
   COMMENT ON COLUMN "ML_HEAT"."SLAG_WEIGHT" IS 'Unit [kg] : actual weight of slag in LF';
   COMMENT ON COLUMN "ML_HEAT"."STEEL_TEMPERATURE" IS 'Unit [°C] : steel temperature in the ladle';
   COMMENT ON COLUMN "ML_HEAT"."ENERGY_LOSS_SUM" IS 'Summary of energy losses';
   COMMENT ON COLUMN "ML_HEAT"."ALLOYING_RESULT" IS 'Result of alloying ( 0 - alloying failed, 1 - alloying ok )';
   COMMENT ON COLUMN "ML_HEAT"."ALLOYING_MSG" IS 'Alloying message';
