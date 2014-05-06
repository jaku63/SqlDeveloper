--------------------------------------------------------
--  DDL for Table ME_PREDICTION
--------------------------------------------------------

  CREATE TABLE "ME_PREDICTION" 
   (	"ID" NUMBER, 
	"S_HEAT_ID" NUMBER, 
	"CHARGE_WEIGHT" NUMBER(8,0), 
	"STEEL_WEIGHT" NUMBER(8,0), 
	"SLAG_WEIGHT" NUMBER(8,0), 
	"TEMPERATURE" NUMBER(4,0), 
	"DRI_WEIGHT" NUMBER(8,0), 
	"LIME_WEIGHT" NUMBER(8,0), 
	"DOLOMITE_WEIGHT" NUMBER(8,0), 
	"DRI_FEED_RATE" NUMBER(8,0), 
	"LIME_FEED_RATE" NUMBER(8,0), 
	"DOLOMITE_FEED_RATE" NUMBER(8,0), 
	"O2_DEMAND" NUMBER(12,1), 
	"ENERGY_DEMAND" NUMBER(12,1), 
	"EL_ENERGY_DEMAND" NUMBER(12,1), 
	"DURATION" NUMBER(8,0), 
	"MAX_HM_WEIGHT" NUMBER(8,0), 
	"CREATED" DATE, 
	"MODIFIED" DATE, 
	"MOP" VARCHAR2(120 BYTE)
   ) ;

   COMMENT ON COLUMN "ME_PREDICTION"."S_HEAT_ID" IS 'heat identification';
   COMMENT ON COLUMN "ME_PREDICTION"."CHARGE_WEIGHT" IS 'Unit [kg] : summ weight of materials to charge';
   COMMENT ON COLUMN "ME_PREDICTION"."STEEL_WEIGHT" IS 'Unit [kg] : predicted weight of steel in EAF';
   COMMENT ON COLUMN "ME_PREDICTION"."SLAG_WEIGHT" IS 'Unit [kg] : predicted weight of slag in EAF';
   COMMENT ON COLUMN "ME_PREDICTION"."DRI_WEIGHT" IS 'Unit [kg] : predicted weight of DRI to add';
   COMMENT ON COLUMN "ME_PREDICTION"."LIME_WEIGHT" IS 'Unit [kg] : predicted weight of Lime to add';
   COMMENT ON COLUMN "ME_PREDICTION"."DOLOMITE_WEIGHT" IS 'Unit [kg] : predicted weight of Dolomite to add';
   COMMENT ON COLUMN "ME_PREDICTION"."DRI_FEED_RATE" IS 'Unit [kg/min] : predicted feed rate of DRI';
   COMMENT ON COLUMN "ME_PREDICTION"."LIME_FEED_RATE" IS 'Unit [kg/min] : predicted feed rate of Lime';
   COMMENT ON COLUMN "ME_PREDICTION"."DOLOMITE_FEED_RATE" IS 'Unit [kg/min] : predicted feed rate of Dolomite';
   COMMENT ON COLUMN "ME_PREDICTION"."O2_DEMAND" IS 'Unit [Nm3] : predicted total amount of oxygen for oxidation';
   COMMENT ON COLUMN "ME_PREDICTION"."ENERGY_DEMAND" IS 'Unit [kWh] : predicted total energy for the process ';
   COMMENT ON COLUMN "ME_PREDICTION"."EL_ENERGY_DEMAND" IS 'Unit [kWh] : predicted electric energy for the process ';
   COMMENT ON COLUMN "ME_PREDICTION"."DURATION" IS 'Unit [s] : predicted total treatment duration';
