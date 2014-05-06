--------------------------------------------------------
--  DDL for Table ME_PRED_PHASE
--------------------------------------------------------

  CREATE TABLE "ME_PRED_PHASE" 
   (	"ID" NUMBER, 
	"S_HEAT_ID" NUMBER, 
	"PHASE_SEQ_NO" NUMBER, 
	"C_PHASE_ID" NUMBER, 
	"PRED_DURATION" NUMBER, 
	"CURR_DURATION" NUMBER, 
	"END_PHASE_ENERGY" NUMBER, 
	"C_MATERIAL_TAB_ID" NUMBER, 
	"PRED_STEEL_WEIGHT" NUMBER, 
	"PRED_SLAG_WEIGHT" NUMBER, 
	"CURR_STEEL_WEIGHT" NUMBER, 
	"CURR_SLAG_WEIGHT" NUMBER, 
	"CURR_CONTI_DRI" NUMBER, 
	"FEED_SPEED_DRI" NUMBER, 
	"PRED_CONTI_DRI" NUMBER, 
	"CURR_CONTI_LIME" NUMBER, 
	"FEED_SPEED_LIME" NUMBER, 
	"PRED_CONTI_LIME" NUMBER, 
	"CURR_CONTI_DOLOMITE" NUMBER, 
	"FEED_SPEED_DOLOMITE" NUMBER, 
	"PRED_CONTI_DOLOMITE" NUMBER, 
	"CURR_CONTI_SPEC" NUMBER, 
	"FEED_SPEED_SPEC" NUMBER, 
	"PRED_CONTI_SPEC" NUMBER, 
	"CURR_CARBON_BLOWN" NUMBER, 
	"PRED_CARBON_BLOWN" NUMBER, 
	"CURR_O2_BLOWN" NUMBER, 
	"PRED_O2_BLOWN" NUMBER, 
	"CURR_EL_ENERGY" NUMBER, 
	"PRED_EL_ENERGY" NUMBER, 
	"CURR_FUEL" NUMBER, 
	"PRED_FUEL" NUMBER, 
	"CREATED" DATE, 
	"MODIFIED" DATE, 
	"MOP" VARCHAR2(120 BYTE)
   ) ;

   COMMENT ON COLUMN "ME_PRED_PHASE"."S_HEAT_ID" IS 'Reference to S_HEAT table';
   COMMENT ON COLUMN "ME_PRED_PHASE"."C_PHASE_ID" IS 'process phase identification - see tab. C_PHASE';
   COMMENT ON COLUMN "ME_PRED_PHASE"."PRED_DURATION" IS 'Unit [s] : phase duration';
   COMMENT ON COLUMN "ME_PRED_PHASE"."CURR_DURATION" IS 'Unit [s] : phase duration';
   COMMENT ON COLUMN "ME_PRED_PHASE"."END_PHASE_ENERGY" IS 'Unit [kWh] : energy consumed up to the phase end';
   COMMENT ON COLUMN "ME_PRED_PHASE"."C_MATERIAL_TAB_ID" IS 'list of permitted materials for each step, i.e.materials to be considered by the charging and alloying';
   COMMENT ON COLUMN "ME_PRED_PHASE"."PRED_STEEL_WEIGHT" IS 'Unit [kg] : predicted weight of steel in EAF';
   COMMENT ON COLUMN "ME_PRED_PHASE"."PRED_SLAG_WEIGHT" IS 'Unit [kg] : predicted weight of slag in EAF';
   COMMENT ON COLUMN "ME_PRED_PHASE"."CURR_STEEL_WEIGHT" IS 'Unit [kg] : current weight of steel in EAF';
   COMMENT ON COLUMN "ME_PRED_PHASE"."CURR_SLAG_WEIGHT" IS 'Unit [kg] : current weight of slag in EAF';
   COMMENT ON COLUMN "ME_PRED_PHASE"."CURR_CONTI_DRI" IS 'Unit [kg] : current ammount of continuously charged DRI';
   COMMENT ON COLUMN "ME_PRED_PHASE"."FEED_SPEED_DRI" IS 'Unit [kg/s] : model prediction feed speed of continuously charged DRI';
   COMMENT ON COLUMN "ME_PRED_PHASE"."PRED_CONTI_DRI" IS 'Unit [kg] : current ammount of continuously charged DRI';
   COMMENT ON COLUMN "ME_PRED_PHASE"."CURR_CONTI_LIME" IS 'Unit [kg] : current ammount of continuously charged lime';
   COMMENT ON COLUMN "ME_PRED_PHASE"."FEED_SPEED_LIME" IS 'Unit [kg/s] : model prediction feed speed of continuously charged lime';
   COMMENT ON COLUMN "ME_PRED_PHASE"."PRED_CONTI_LIME" IS 'Unit [kg] : current ammount of continuously charged lime';
   COMMENT ON COLUMN "ME_PRED_PHASE"."CURR_CONTI_DOLOMITE" IS 'Unit [kg] : current ammount of continuously charged dolomite';
   COMMENT ON COLUMN "ME_PRED_PHASE"."FEED_SPEED_DOLOMITE" IS 'Unit [kg/s] : model prediction feed speed of continuously charged dolomite';
   COMMENT ON COLUMN "ME_PRED_PHASE"."PRED_CONTI_DOLOMITE" IS 'Unit [kg] : current ammount of continuously charged dolomite';
   COMMENT ON COLUMN "ME_PRED_PHASE"."CURR_CONTI_SPEC" IS 'Unit [kg] : current ammount of continuously charged special material';
   COMMENT ON COLUMN "ME_PRED_PHASE"."FEED_SPEED_SPEC" IS 'Unit [kg/s] : model prediction feed speed of continuously charged special material';
   COMMENT ON COLUMN "ME_PRED_PHASE"."PRED_CONTI_SPEC" IS 'Unit [kg] : current ammount of continuously charged special material';
   COMMENT ON COLUMN "ME_PRED_PHASE"."CURR_CARBON_BLOWN" IS 'Unit [kg] : current ammount of continuously charged carbon';
   COMMENT ON COLUMN "ME_PRED_PHASE"."CURR_O2_BLOWN" IS 'Unit [Nm3] : total blown amount of oxygen';
   COMMENT ON COLUMN "ME_PRED_PHASE"."PRED_O2_BLOWN" IS 'Unit [Nm3] : total blown amount of oxygen';
   COMMENT ON COLUMN "ME_PRED_PHASE"."CURR_EL_ENERGY" IS 'Unit [kWh] : electrical energy supplied to the process ';
   COMMENT ON COLUMN "ME_PRED_PHASE"."PRED_EL_ENERGY" IS 'Unit [kWh] : electrical energy supplied to the process ';
   COMMENT ON COLUMN "ME_PRED_PHASE"."CURR_FUEL" IS 'Unit [Nm3] : remaining fuel';
   COMMENT ON COLUMN "ME_PRED_PHASE"."PRED_FUEL" IS 'Unit [Nm3] : fuel supplied to the process ';
