--------------------------------------------------------
--  DDL for Table C_SHIFT
--------------------------------------------------------

  CREATE TABLE "C_SHIFT" 
   (	"ID" NUMBER, 
	"PLANT_UNIT_CODE" VARCHAR2(6 BYTE), 
	"SHIFT_START" VARCHAR2(5 BYTE), 
	"SHIFT_END" VARCHAR2(5 BYTE), 
	"SHIFT_TYPE" VARCHAR2(10 BYTE), 
	"CREATED" DATE, 
	"MODIFIED" DATE, 
	"MOP" VARCHAR2(120 BYTE)
   ) ;

   COMMENT ON COLUMN "C_SHIFT"."PLANT_UNIT_CODE" IS 'plant unit identfication - EAF, LF';
   COMMENT ON COLUMN "C_SHIFT"."SHIFT_START" IS 'shift start date - format hh:mm';
   COMMENT ON COLUMN "C_SHIFT"."SHIFT_END" IS 'shift end date  - format hh:mm';
   COMMENT ON COLUMN "C_SHIFT"."SHIFT_TYPE" IS 'Shift type - morning M, afternoon A, night N';
