--------------------------------------------------------
--  DDL for Table ML_HEAT_HIST
--------------------------------------------------------

  CREATE TABLE "ML_HEAT_HIST" 
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

   COMMENT ON COLUMN "ML_HEAT_HIST"."S_HEAT_ID" IS 'heat identification';
   COMMENT ON COLUMN "ML_HEAT_HIST"."STEEL_WEIGHT" IS 'Unit [kg] : weight of steel in EAF';
   COMMENT ON COLUMN "ML_HEAT_HIST"."SLAG_WEIGHT" IS 'Unit [kg] :  weight of slag in EAF';
   COMMENT ON COLUMN "ML_HEAT_HIST"."STEEL_TEMPERATURE" IS 'Unit [°C] : calculated temperature of the heat';
   COMMENT ON COLUMN "ML_HEAT_HIST"."ENERGY_LOSS_SUM" IS 'Unit [kWh] : summ of energy loss';
   COMMENT ON COLUMN "ML_HEAT_HIST"."PHASE_NO" IS 'current sequence number of a process phase';
