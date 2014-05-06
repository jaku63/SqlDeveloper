--------------------------------------------------------
--  DDL for Table ML_PRED_ELECTRIC
--------------------------------------------------------

  CREATE TABLE "ML_PRED_ELECTRIC" 
   (	"ID" NUMBER, 
	"PRED_PHASE_ID" NUMBER, 
	"STEP_SEQ_NO" NUMBER, 
	"CL_EL_POWER_ID" NUMBER, 
	"TYPE" NUMBER, 
	"DURATION" NUMBER, 
	"TEMPERATURE_DIFF" NUMBER, 
	"END_ENERGY" NUMBER(12,1), 
	"CREATED" DATE, 
	"MODIFIED" DATE, 
	"MOP" VARCHAR2(120 BYTE)
   ) ;
