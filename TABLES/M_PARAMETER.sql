--------------------------------------------------------
--  DDL for Table M_PARAMETER
--------------------------------------------------------

  CREATE TABLE "M_PARAMETER" 
   (	"ID" NUMBER, 
	"PAR_NAME" VARCHAR2(40 BYTE), 
	"STEEL_GRADE" VARCHAR2(20 BYTE) DEFAULT 'DEFAULT', 
	"PAR_GROUP" VARCHAR2(20 BYTE), 
	"DESCRIPTION_ENG" VARCHAR2(80 BYTE), 
	"DESCRIPTION_LOC" VARCHAR2(80 BYTE), 
	"VALUE" NUMBER(20,10), 
	"UNIT" VARCHAR2(20 BYTE), 
	"VALUE_STR" VARCHAR2(80 BYTE), 
	"CREATED" DATE, 
	"MODIFIED" DATE, 
	"MOP" VARCHAR2(120 BYTE)
   ) ;

   COMMENT ON COLUMN "M_PARAMETER"."PAR_NAME" IS 'Name of parameter inside the model (parameter identifier)';
   COMMENT ON COLUMN "M_PARAMETER"."STEEL_GRADE" IS 'Steelgrade or steelgrade group the parameter is valid for (default: empty)';
   COMMENT ON COLUMN "M_PARAMETER"."DESCRIPTION_ENG" IS 'English description';
   COMMENT ON COLUMN "M_PARAMETER"."DESCRIPTION_LOC" IS 'Local language description';
   COMMENT ON COLUMN "M_PARAMETER"."VALUE" IS 'Value of parameter';
   COMMENT ON COLUMN "M_PARAMETER"."UNIT" IS 'Unit of parameter';
   COMMENT ON COLUMN "M_PARAMETER"."VALUE_STR" IS 'String value of parameter';
