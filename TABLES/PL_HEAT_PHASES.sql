--------------------------------------------------------
--  DDL for Table PL_HEAT_PHASES
--------------------------------------------------------

  CREATE TABLE "PL_HEAT_PHASES" 
   (	"ID" NUMBER, 
	"PL_HEAT_ID" NUMBER, 
	"PHASE_TYPE_CURR" VARCHAR2(2 BYTE), 
	"PHASE_CNT" NUMBER DEFAULT 0, 
	"START_TIME" DATE, 
	"END_TIME" DATE, 
	"CREATED" DATE, 
	"MODIFIED" DATE, 
	"MOP" VARCHAR2(120 BYTE)
   ) ;

   COMMENT ON COLUMN "PL_HEAT_PHASES"."PL_HEAT_ID" IS 'heat identification';
   COMMENT ON COLUMN "PL_HEAT_PHASES"."PHASE_TYPE_CURR" IS 'process phase abbreviated name ( e.g. ST, PD, A1, …) - phase identification ';
