--------------------------------------------------------
--  DDL for Table P_DELAY
--------------------------------------------------------

  CREATE TABLE "P_DELAY" 
   (	"ID" NUMBER, 
	"S_HEAT_ID" NUMBER, 
	"PLANT_UNIT_ID" NUMBER, 
	"START_TIME" DATE, 
	"END_TIME" DATE, 
	"DELAY_CODE_ID" NUMBER, 
	"USER_DESCR" VARCHAR2(100 BYTE), 
	"USER_NAME" VARCHAR2(20 BYTE), 
	"L3_SENT" NUMBER DEFAULT 0, 
	"CREATED" DATE, 
	"MODIFIED" DATE, 
	"MOP" VARCHAR2(120 BYTE)
   ) ;

   COMMENT ON COLUMN "P_DELAY"."S_HEAT_ID" IS 'reference to P_HEAT table';
   COMMENT ON COLUMN "P_DELAY"."PLANT_UNIT_ID" IS 'plant unit identfication';
   COMMENT ON COLUMN "P_DELAY"."DELAY_CODE_ID" IS 'delay identification';
