--------------------------------------------------------
--  DDL for Table M_ADAPTATION_HIST
--------------------------------------------------------

  CREATE TABLE "M_ADAPTATION_HIST" 
   (	"ID" NUMBER, 
	"CALCULATION_TIME" DATE, 
	"STEEL_GRADE_ID" NUMBER, 
	"PAR_NAME" VARCHAR2(40 BYTE), 
	"VALUE" NUMBER(8,4), 
	"TABLE_NAME" VARCHAR2(40 BYTE), 
	"COLUMN_NAME" VARCHAR2(40 BYTE), 
	"PLANT_UNIT" VARCHAR2(20 BYTE), 
	"CREATED" DATE, 
	"MODIFIED" DATE, 
	"MOP" VARCHAR2(120 BYTE)
   ) ;

   COMMENT ON COLUMN "M_ADAPTATION_HIST"."CALCULATION_TIME" IS 'time of the calculation';
   COMMENT ON COLUMN "M_ADAPTATION_HIST"."STEEL_GRADE_ID" IS 'steel grade';
   COMMENT ON COLUMN "M_ADAPTATION_HIST"."PAR_NAME" IS 'material code';
   COMMENT ON COLUMN "M_ADAPTATION_HIST"."VALUE" IS 'parameter value';
   COMMENT ON COLUMN "M_ADAPTATION_HIST"."TABLE_NAME" IS 'table name where the parameter is stored';
   COMMENT ON COLUMN "M_ADAPTATION_HIST"."COLUMN_NAME" IS 'colmun name in the table where the parameter is stored';
   COMMENT ON COLUMN "M_ADAPTATION_HIST"."PLANT_UNIT" IS 'plant unit';
