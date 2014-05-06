--------------------------------------------------------
--  DDL for Table PC_HEAT
--------------------------------------------------------

  CREATE TABLE "PC_HEAT" 
   (	"ID" NUMBER, 
	"S_HEAT_ID" NUMBER, 
	"HEAT_SEQ_NO" NUMBER, 
	"POS_IN_SEQ" NUMBER, 
	"C_STEEL_GRADE_ID" NUMBER, 
	"C_EQUIPMENT_ID_LADLE" NUMBER, 
	"ARM_NO" NUMBER, 
	"STEEL_WEIGHT" NUMBER, 
	"ORDER_ID" VARCHAR2(20 BYTE), 
	"LADLE_ARRIVAL_TIME" DATE, 
	"LADLE_OPEN_TIME" DATE, 
	"LADLE_OPEN_WEIGHT" NUMBER, 
	"LADLE_OPEN_TUNDISH_WEIGHT" NUMBER, 
	"LADLE_CLOSE_TIME" DATE, 
	"LADLE_CLOSE_WEIGHT" NUMBER, 
	"LADLE_CLOSE_TUNDISH_WEIGHT" NUMBER, 
	"LADLE_TARE_WEIGHT" NUMBER, 
	"LADLE_SKULL_WEIGHT" NUMBER, 
	"SHROUD_TYPE" NUMBER, 
	"SHROUD_GAS" NUMBER, 
	"SHROUD_AMOUNT" NUMBER, 
	"LANCING" NUMBER, 
	"LIQ_TEMP" NUMBER, 
	"C_HEAT_STATUS_ID" NUMBER, 
	"STATUS_DATE" DATE, 
	"SHIFTID" NUMBER, 
	"FLYING_TUNDISH" NUMBER, 
	"CASTING_DURATION" NUMBER, 
	"AVG_CAST_SPEED" FLOAT(126), 
	"LADLE_COVER_USED" NUMBER, 
	"LAST_IN_CAST" NUMBER, 
	"LANCE_COUNT" NUMBER, 
	"CASTING_FIN_TIME" DATE, 
	"CREATED" DATE, 
	"MODIFIED" DATE, 
	"MOP" VARCHAR2(120 BYTE), 
	"VERIFIED" NUMBER(2,0), 
	"VER_COMMENT" VARCHAR2(512 BYTE)
   ) ;

   COMMENT ON COLUMN "PC_HEAT"."S_HEAT_ID" IS 'heat identification';
   COMMENT ON COLUMN "PC_HEAT"."POS_IN_SEQ" IS 'Position in sequence';
   COMMENT ON COLUMN "PC_HEAT"."C_STEEL_GRADE_ID" IS 'actual steel grade';
   COMMENT ON COLUMN "PC_HEAT"."STEEL_WEIGHT" IS 'Unit [kg] : Actual Heat weight';
   COMMENT ON COLUMN "PC_HEAT"."LADLE_OPEN_WEIGHT" IS 'Unit [kg] : ';
   COMMENT ON COLUMN "PC_HEAT"."LADLE_OPEN_TUNDISH_WEIGHT" IS 'Unit [kg] : ';
   COMMENT ON COLUMN "PC_HEAT"."LADLE_CLOSE_WEIGHT" IS 'Unit [kg] : ';
   COMMENT ON COLUMN "PC_HEAT"."LADLE_CLOSE_TUNDISH_WEIGHT" IS 'Unit [kg] : ';
   COMMENT ON COLUMN "PC_HEAT"."LADLE_TARE_WEIGHT" IS 'Unit [kg] : ';
   COMMENT ON COLUMN "PC_HEAT"."LADLE_SKULL_WEIGHT" IS 'Unit [kg] : ';
   COMMENT ON COLUMN "PC_HEAT"."SHROUD_AMOUNT" IS 'Unit [kg] : ';
   COMMENT ON COLUMN "PC_HEAT"."LIQ_TEMP" IS 'Unit [°C] : Actual calculated liquidus temperature';
   COMMENT ON COLUMN "PC_HEAT"."C_HEAT_STATUS_ID" IS 'current status identification, see C_HEAT_STATUS';
   COMMENT ON COLUMN "PC_HEAT"."STATUS_DATE" IS 'change status date and time';
   COMMENT ON COLUMN "PC_HEAT"."FLYING_TUNDISH" IS '1=flying tundish, 0=not fly –automatically detected from L1 Tundish data telegram';
   COMMENT ON COLUMN "PC_HEAT"."CASTING_DURATION" IS 'Unit [s] : Casting dureation from new heat in mold till cut of last slab';
   COMMENT ON COLUMN "PC_HEAT"."AVG_CAST_SPEED" IS 'Unit [m/s] : Avg cast speed';
   COMMENT ON COLUMN "PC_HEAT"."LADLE_COVER_USED" IS '0= False, 1=True Flag which defines if the ladle cover was used. information from  L1 Turret data telegram';
   COMMENT ON COLUMN "PC_HEAT"."LAST_IN_CAST" IS '0= False, 1=True Flag which describes if the heat is the last in the casting sequence. ';
   COMMENT ON COLUMN "PC_HEAT"."LANCE_COUNT" IS 'Lance count for gate open L2 HMI operator manual input';
   COMMENT ON COLUMN "PC_HEAT"."CASTING_FIN_TIME" IS 'time when ladle open of next heat or tail out start for this heat';
