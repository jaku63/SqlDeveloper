--------------------------------------------------------
--  DDL for Table C_PHASE
--------------------------------------------------------

  CREATE TABLE "C_PHASE" 
   (	"ID" NUMBER, 
	"PHASE_TYPE" VARCHAR2(20 BYTE), 
	"PLANT_UNIT_CODE" VARCHAR2(6 BYTE), 
	"PHASE_TEXT_ENG" VARCHAR2(30 BYTE), 
	"PHASE_TEXT_LOC" VARCHAR2(30 BYTE), 
	"MANDATORY" NUMBER, 
	"FIELD_INDX0" VARCHAR2(30 BYTE), 
	"FIELD_INDX1" VARCHAR2(30 BYTE), 
	"FIELD_INDX2" VARCHAR2(30 BYTE), 
	"FIELD_INDX3" VARCHAR2(30 BYTE), 
	"FIELD_INDX4" VARCHAR2(30 BYTE), 
	"FIELD_INDX5" VARCHAR2(30 BYTE), 
	"FIELD_INDX6" VARCHAR2(30 BYTE), 
	"FIELD_INDX7" VARCHAR2(30 BYTE), 
	"FIELD_INDX8" VARCHAR2(30 BYTE), 
	"FIELD_INDX9" VARCHAR2(30 BYTE), 
	"FIELD_INDX10" VARCHAR2(30 BYTE), 
	"FIELD_INDX11" VARCHAR2(30 BYTE), 
	"FIELD_INDX12" VARCHAR2(30 BYTE), 
	"FIELD_INDX13" VARCHAR2(30 BYTE), 
	"FIELD_INDX14" VARCHAR2(30 BYTE), 
	"FIELD_INDX15" VARCHAR2(30 BYTE), 
	"FIELD_INDX16" VARCHAR2(30 BYTE), 
	"FIELD_INDX17" VARCHAR2(30 BYTE), 
	"FIELD_INDX18" VARCHAR2(30 BYTE), 
	"FIELD_INDX19" VARCHAR2(30 BYTE), 
	"CREATED" DATE, 
	"MODIFIED" DATE, 
	"MOP" VARCHAR2(120 BYTE)
   ) ;

   COMMENT ON COLUMN "C_PHASE"."PHASE_TYPE" IS 'process phase abbreviated name (e.g. ST, PD, A1, …) - phase identification';
   COMMENT ON COLUMN "C_PHASE"."PHASE_TEXT_ENG" IS 'process phase name - english';
   COMMENT ON COLUMN "C_PHASE"."PHASE_TEXT_LOC" IS 'process phase name - local language';
   COMMENT ON COLUMN "C_PHASE"."MANDATORY" IS '0,1 - 1 = mandatory, operator cannot check out the phase';
   COMMENT ON COLUMN "C_PHASE"."FIELD_INDX0" IS 'field names in a phase for HMI';
   COMMENT ON COLUMN "C_PHASE"."FIELD_INDX1" IS 'field names in a phase for HMI';
   COMMENT ON COLUMN "C_PHASE"."FIELD_INDX2" IS 'field names in a phase for HMI';
   COMMENT ON COLUMN "C_PHASE"."FIELD_INDX3" IS 'field names in a phase for HMI';
   COMMENT ON COLUMN "C_PHASE"."FIELD_INDX4" IS 'field names in a phase for HMI';
   COMMENT ON COLUMN "C_PHASE"."FIELD_INDX5" IS 'field names in a phase for HMI';
   COMMENT ON COLUMN "C_PHASE"."FIELD_INDX6" IS 'field names in a phase for HMI';
   COMMENT ON COLUMN "C_PHASE"."FIELD_INDX7" IS 'field names in a phase for HMI';
   COMMENT ON COLUMN "C_PHASE"."FIELD_INDX8" IS 'field names in a phase for HMI';
   COMMENT ON COLUMN "C_PHASE"."FIELD_INDX9" IS 'field names in a phase for HMI';
   COMMENT ON COLUMN "C_PHASE"."FIELD_INDX10" IS 'field names in a phase for HMI';
   COMMENT ON COLUMN "C_PHASE"."FIELD_INDX11" IS 'field names in a phase for HMI';
   COMMENT ON COLUMN "C_PHASE"."FIELD_INDX12" IS 'field names in a phase for HMI';
   COMMENT ON COLUMN "C_PHASE"."FIELD_INDX13" IS 'field names in a phase for HMI';
   COMMENT ON COLUMN "C_PHASE"."FIELD_INDX14" IS 'field names in a phase for HMI';
   COMMENT ON COLUMN "C_PHASE"."FIELD_INDX15" IS 'field names in a phase for HMI';
   COMMENT ON COLUMN "C_PHASE"."FIELD_INDX16" IS 'field names in a phase for HMI';
   COMMENT ON COLUMN "C_PHASE"."FIELD_INDX17" IS 'field names in a phase for HMI';
   COMMENT ON COLUMN "C_PHASE"."FIELD_INDX18" IS 'field names in a phase for HMI';
   COMMENT ON COLUMN "C_PHASE"."FIELD_INDX19" IS 'field names in a phase for HMI';
