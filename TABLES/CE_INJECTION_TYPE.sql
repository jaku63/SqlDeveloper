--------------------------------------------------------
--  DDL for Table CE_INJECTION_TYPE
--------------------------------------------------------

  CREATE TABLE "CE_INJECTION_TYPE" 
   (	"ID" NUMBER, 
	"DEVICE_NAME" VARCHAR2(20 BYTE), 
	"DESCRIPTION" VARCHAR2(50 BYTE), 
	"MAX_FLOW" FLOAT(126), 
	"MIN_FLOW" FLOAT(126), 
	"CREATED" DATE, 
	"MODIFIED" DATE, 
	"MOP" VARCHAR2(120 BYTE)
   ) ;

   COMMENT ON COLUMN "CE_INJECTION_TYPE"."MAX_FLOW" IS 'Unit [Nm3/s] : ';
   COMMENT ON COLUMN "CE_INJECTION_TYPE"."MIN_FLOW" IS 'Unit [Nm3/s] : ';
