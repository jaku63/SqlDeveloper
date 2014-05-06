--------------------------------------------------------
--  DDL for Table CV_PRACTICE_PHASE
--------------------------------------------------------

  CREATE TABLE "CV_PRACTICE_PHASE" 
   (	"ID" NUMBER, 
	"CV_PRACTICE_ID" NUMBER, 
	"DESCRIPTION" VARCHAR2(120 BYTE), 
	"PHASE_SEQ_NO" NUMBER, 
	"C_PHASE_ID" NUMBER, 
	"C_MATERIAL_TAB_ID" NUMBER, 
	"DISABLED" NUMBER, 
	"DURATION" NUMBER, 
	"GAS" VARCHAR2(2 BYTE), 
	"GAS_FLOW" NUMBER(6,4), 
	"ALLOYING" NUMBER, 
	"CREATED" DATE, 
	"MODIFIED" DATE, 
	"MOP" VARCHAR2(120 BYTE)
   ) ;

   COMMENT ON COLUMN "CV_PRACTICE_PHASE"."CV_PRACTICE_ID" IS 'production practice identification';
   COMMENT ON COLUMN "CV_PRACTICE_PHASE"."PHASE_SEQ_NO" IS 'sequence number of a process phase';
   COMMENT ON COLUMN "CV_PRACTICE_PHASE"."C_PHASE_ID" IS 'process phase identification - see tab. C_PHASE';
   COMMENT ON COLUMN "CV_PRACTICE_PHASE"."C_MATERIAL_TAB_ID" IS 'list of permitted materials for each step, i.e.materials to be considered by the alloying';
   COMMENT ON COLUMN "CV_PRACTICE_PHASE"."DURATION" IS 'Unit [s] : phase duration';
   COMMENT ON COLUMN "CV_PRACTICE_PHASE"."GAS" IS 'Line 1';
   COMMENT ON COLUMN "CV_PRACTICE_PHASE"."GAS_FLOW" IS 'Unit [Nm3/s]';
