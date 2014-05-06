--------------------------------------------------------
--  DDL for Table MV_HEAT_HIST
--------------------------------------------------------

  CREATE TABLE "MV_HEAT_HIST" 
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

   COMMENT ON COLUMN "MV_HEAT_HIST"."S_HEAT_ID" IS 'heat identification';
   COMMENT ON COLUMN "MV_HEAT_HIST"."STEEL_WEIGHT" IS 'Unit [kg] : weight of steel in VD';
   COMMENT ON COLUMN "MV_HEAT_HIST"."SLAG_WEIGHT" IS 'Unit [kg] :  weight of slag in VD';
   COMMENT ON COLUMN "MV_HEAT_HIST"."STEEL_TEMPERATURE" IS 'Unit [°C] : calculated temperature of the heat';
   COMMENT ON COLUMN "MV_HEAT_HIST"."ENERGY_LOSS_SUM" IS 'Unit [kWh] : summ of energy loss';
   COMMENT ON COLUMN "MV_HEAT_HIST"."PHASE_NO" IS 'current sequence number of a process phase';
