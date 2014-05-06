--------------------------------------------------------
--  DDL for Table P_SHIFT
--------------------------------------------------------

  CREATE TABLE "P_SHIFT" 
   (	"ID" NUMBER, 
	"PLANT_UNIT_CODE" VARCHAR2(6 BYTE), 
	"SHIFT_START" DATE, 
	"SHIFT_END" DATE, 
	"CREW" VARCHAR2(10 BYTE), 
	"SHIFT_TYPE" VARCHAR2(10 BYTE), 
	"CREATED" DATE, 
	"MODIFIED" DATE, 
	"MOP" VARCHAR2(120 BYTE)
   ) ;

   COMMENT ON COLUMN "P_SHIFT"."PLANT_UNIT_CODE" IS 'plant unit identfication - EAF, LF';
   COMMENT ON COLUMN "P_SHIFT"."SHIFT_END" IS 'plant unit identfication';
   COMMENT ON COLUMN "P_SHIFT"."CREW" IS 'Crew identification';
   COMMENT ON COLUMN "P_SHIFT"."SHIFT_TYPE" IS 'Shift definition M, A, N';
