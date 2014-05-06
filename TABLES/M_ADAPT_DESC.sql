--------------------------------------------------------
--  DDL for Table M_ADAPT_DESC
--------------------------------------------------------

  CREATE TABLE "M_ADAPT_DESC" 
   (	"ID" NUMBER, 
	"PLANT_UNIT_ID" NUMBER, 
	"ENERGY_IDX" NUMBER, 
	"PARAM_NAME" VARCHAR2(40 BYTE), 
	"HMI_NAME" VARCHAR2(40 BYTE), 
	"TABLE_NAME" VARCHAR2(40 BYTE), 
	"COLUMN_NAME" VARCHAR2(40 BYTE), 
	"CREATED" DATE, 
	"MODIFIED" DATE, 
	"MOP" VARCHAR2(120 BYTE)
   ) ;

   COMMENT ON COLUMN "M_ADAPT_DESC"."PLANT_UNIT_ID" IS 'plant unit number - 1,2';
   COMMENT ON COLUMN "M_ADAPT_DESC"."ENERGY_IDX" IS 'index to M_ADAPTATION  table to energy columns';
   COMMENT ON COLUMN "M_ADAPT_DESC"."PARAM_NAME" IS 'parametern name';
   COMMENT ON COLUMN "M_ADAPT_DESC"."HMI_NAME" IS 'parameter name for HMI';
   COMMENT ON COLUMN "M_ADAPT_DESC"."TABLE_NAME" IS 'table name where the parameter is stored';
   COMMENT ON COLUMN "M_ADAPT_DESC"."COLUMN_NAME" IS 'colmun name in the table where the parameter is stored';
