--------------------------------------------------------
--  DDL for Table P_LADLE
--------------------------------------------------------

  CREATE TABLE "P_LADLE" 
   (	"ID" NUMBER, 
	"LADLE_ID" VARCHAR2(5 BYTE), 
	"LADLE_LOC" NUMBER, 
	"LAST_PLANT_UNIT_ID" NUMBER, 
	"LAST_S_HEAT_ID" NUMBER, 
	"NO_HEATS" NUMBER DEFAULT 0, 
	"LADLE_LIFE" NUMBER DEFAULT 0, 
	"ACTUAL_WEIGHT" NUMBER(8,0) DEFAULT 0, 
	"TOTAL_WEIGHT" NUMBER(8,0) DEFAULT 0, 
	"REBUILD_DATE" DATE, 
	"REBUILD_MAT" VARCHAR2(40 BYTE), 
	"REBUILD_TYPE" VARCHAR2(40 BYTE), 
	"EMPTY_LADLE_WEIGHT" NUMBER, 
	"CREATED" DATE, 
	"MODIFIED" DATE, 
	"MOP" VARCHAR2(120 BYTE)
   ) ;

   COMMENT ON COLUMN "P_LADLE"."LADLE_LOC" IS 'location id';
   COMMENT ON COLUMN "P_LADLE"."LAST_S_HEAT_ID" IS 'last heat id';
   COMMENT ON COLUMN "P_LADLE"."NO_HEATS" IS 'Number heats processed';
   COMMENT ON COLUMN "P_LADLE"."LADLE_LIFE" IS 'Unit [s] : Ladle life (time of usage)';
   COMMENT ON COLUMN "P_LADLE"."ACTUAL_WEIGHT" IS 'Unit [kg] : Actual processed weight';
   COMMENT ON COLUMN "P_LADLE"."TOTAL_WEIGHT" IS 'Unit [kg] : Total processed weight';
   COMMENT ON COLUMN "P_LADLE"."REBUILD_DATE" IS 'Date of last rebuild';
   COMMENT ON COLUMN "P_LADLE"."REBUILD_MAT" IS 'Material used for rebuild';
   COMMENT ON COLUMN "P_LADLE"."REBUILD_TYPE" IS 'Type of rebuild (FULL, PARTIAL, …)';
   COMMENT ON COLUMN "P_LADLE"."EMPTY_LADLE_WEIGHT" IS 'Empty ladle weight';
