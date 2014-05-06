--------------------------------------------------------
--  DDL for Table C_PLANT_UNIT
--------------------------------------------------------

  CREATE TABLE "C_PLANT_UNIT" 
   (	"ID" NUMBER, 
	"PLANT_UNIT_CODE" VARCHAR2(20 BYTE), 
	"PLANT_UNIT_NO" NUMBER, 
	"CREATED" DATE, 
	"MODIFIED" DATE, 
	"MOP" VARCHAR2(120 BYTE), 
	"PLANT_UNIT_DESC" VARCHAR2(20 BYTE)
   ) ;

   COMMENT ON COLUMN "C_PLANT_UNIT"."PLANT_UNIT_CODE" IS 'plant unit code (EAF, LF, ..)';
   COMMENT ON COLUMN "C_PLANT_UNIT"."PLANT_UNIT_NO" IS 'plant unit number';
