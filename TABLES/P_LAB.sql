--------------------------------------------------------
--  DDL for Table P_LAB
--------------------------------------------------------

  CREATE TABLE "P_LAB" 
   (	"ID" NUMBER, 
	"S_HEAT_ID" NUMBER, 
	"SAMPLE_ID" NUMBER(2,0), 
	"C_SAMPLE_TYPE_ID" NUMBER(*,0), 
	"C_PLANT_UNIT_ID" NUMBER, 
	"C_PHASE_ID" NUMBER, 
	"TIME_ANNOUNCE" DATE DEFAULT SYSDATE, 
	"TIME_ANALYSE" DATE, 
	"CREATED" DATE, 
	"MODIFIED" DATE, 
	"MOP" VARCHAR2(120 BYTE)
   ) ;

   COMMENT ON COLUMN "P_LAB"."S_HEAT_ID" IS 'heat identification';
   COMMENT ON COLUMN "P_LAB"."SAMPLE_ID" IS 'steel sample identification';
