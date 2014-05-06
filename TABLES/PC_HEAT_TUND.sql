--------------------------------------------------------
--  DDL for Table PC_HEAT_TUND
--------------------------------------------------------

  CREATE TABLE "PC_HEAT_TUND" 
   (	"ID" NUMBER, 
	"S_HEAT_ID" NUMBER, 
	"TUND_NO" NUMBER, 
	"SHROUD_TYPE" NUMBER, 
	"TUND_POWDER" NUMBER, 
	"TUND_LOT" NUMBER, 
	"TUND_WEIGHT" NUMBER, 
	"CAR_NO" NUMBER, 
	"PREHEATING_ON" DATE, 
	"PREHEATING_OFF" DATE, 
	"PREHEATING_TEMP" NUMBER, 
	"SEN_PREHEATING_ON" DATE, 
	"SEN_PREHEATING_OFF" DATE, 
	"SEN_PREHEATING_TEMP" NUMBER, 
	"DAM_TUNDISH" NUMBER, 
	"NOZZLE_TYPE" NUMBER, 
	"STOPPER_ROD_TYPE" NUMBER, 
	"TUNDISH_SKULL_WEIGHT" NUMBER, 
	"TUNDISH_OPENED" NUMBER, 
	"CREATED" DATE, 
	"MODIFIED" DATE, 
	"MOP" VARCHAR2(120 BYTE)
   ) ;

   COMMENT ON COLUMN "PC_HEAT_TUND"."S_HEAT_ID" IS 'heat identification';
   COMMENT ON COLUMN "PC_HEAT_TUND"."TUND_WEIGHT" IS 'Unit [kg] : ';
   COMMENT ON COLUMN "PC_HEAT_TUND"."PREHEATING_TEMP" IS 'Unit [°C] : Tundish preheating temperature information from  L1';
   COMMENT ON COLUMN "PC_HEAT_TUND"."SEN_PREHEATING_TEMP" IS 'Unit [°C] : SEN preheating temperature - manual input';
   COMMENT ON COLUMN "PC_HEAT_TUND"."DAM_TUNDISH" IS 'Dam and Weir used L2 HMI operator manual input- bool value';
   COMMENT ON COLUMN "PC_HEAT_TUND"."TUNDISH_SKULL_WEIGHT" IS 'Unit [kg] : ';
   COMMENT ON COLUMN "PC_HEAT_TUND"."TUNDISH_OPENED" IS 'flag if tundish is opened';
