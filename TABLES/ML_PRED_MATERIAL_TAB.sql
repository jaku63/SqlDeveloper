--------------------------------------------------------
--  DDL for Table ML_PRED_MATERIAL_TAB
--------------------------------------------------------

  CREATE TABLE "ML_PRED_MATERIAL_TAB" 
   (	"ID" NUMBER, 
	"PRED_PHASE_ID" NUMBER, 
	"ADD_SEQUENCE_NO" NUMBER, 
	"C_MATERIAL_ID" NUMBER, 
	"RELATIVE_ADD" NUMBER(14,11), 
	"PERCENT_ADD" NUMBER(4,1) DEFAULT 100, 
	"MULTIPLE_ADD" NUMBER DEFAULT 1, 
	"ABSOLUTE_ADD" NUMBER, 
	"VARIABLE_ADD" NUMBER, 
	"CREATED" DATE, 
	"MODIFIED" DATE, 
	"MOP" VARCHAR2(120 BYTE)
   ) ;
