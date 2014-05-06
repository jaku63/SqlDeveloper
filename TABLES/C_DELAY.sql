--------------------------------------------------------
--  DDL for Table C_DELAY
--------------------------------------------------------

  CREATE TABLE "C_DELAY" 
   (	"ID" NUMBER, 
	"DELAY_CODE" VARCHAR2(10 BYTE), 
	"PLANT_UNIT_CODE" VARCHAR2(6 BYTE), 
	"DELAY_DESC_ENG" VARCHAR2(50 BYTE), 
	"DELAY_DESC_LOC" VARCHAR2(50 BYTE), 
	"PLANT_EQUIP_NO" NUMBER, 
	"CREATED" DATE, 
	"MODIFIED" DATE, 
	"MOP" VARCHAR2(120 BYTE)
   ) ;

   COMMENT ON COLUMN "C_DELAY"."DELAY_CODE" IS 'delay identification';
   COMMENT ON COLUMN "C_DELAY"."PLANT_UNIT_CODE" IS 'EAF, LF, …';
   COMMENT ON COLUMN "C_DELAY"."PLANT_EQUIP_NO" IS 'plant equipment identification, see C_PLANT_EQUIPMENT';
