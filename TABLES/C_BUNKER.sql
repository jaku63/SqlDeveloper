--------------------------------------------------------
--  DDL for Table C_BUNKER
--------------------------------------------------------

  CREATE TABLE "C_BUNKER" 
   (	"ID" NUMBER, 
	"C_PLANT_UNIT_ID" NUMBER, 
	"BUNKER_NO" NUMBER, 
	"C_MATERIAL_ID" NUMBER, 
	"MAT_AVAILABLE_L1" NUMBER DEFAULT 1, 
	"MAT_AVAILABLE_L2" NUMBER DEFAULT 1, 
	"MAT_AMOUNT" NUMBER DEFAULT -1, 
	"CURR_TEMPERATURE" NUMBER, 
	"CONTI_FEED_USAGE" NUMBER DEFAULT 0, 
	"MAX_FEED_RATE" FLOAT(126), 
	"MIN_FEED_RATE" FLOAT(126), 
	"CREATED" DATE, 
	"MODIFIED" DATE, 
	"MOP" VARCHAR2(120 BYTE)
   ) ;

   COMMENT ON COLUMN "C_BUNKER"."BUNKER_NO" IS 'bunkers and strands of wire injections';
   COMMENT ON COLUMN "C_BUNKER"."C_MATERIAL_ID" IS 'material identification, see C_MATERIAL';
   COMMENT ON COLUMN "C_BUNKER"."MAT_AVAILABLE_L1" IS '1=available, 0 not available or blocked by L1';
   COMMENT ON COLUMN "C_BUNKER"."MAT_AVAILABLE_L2" IS '1=available, 0 not available or blocked by L2';
   COMMENT ON COLUMN "C_BUNKER"."MAT_AMOUNT" IS 'Unit [kg] : available amount (in case wire strands only)';
   COMMENT ON COLUMN "C_BUNKER"."CURR_TEMPERATURE" IS 'Unit [°C] : current temperature';
   COMMENT ON COLUMN "C_BUNKER"."MAX_FEED_RATE" IS 'Unit [kg/s] : minimal feed rate for bin [kg/s] or [m/s] for wires';
   COMMENT ON COLUMN "C_BUNKER"."MIN_FEED_RATE" IS 'Unit [kg/s] : maximal feed rate for bin [kg/s] or [m/s] for wires';
