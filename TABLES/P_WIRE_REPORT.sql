--------------------------------------------------------
--  DDL for Table P_WIRE_REPORT
--------------------------------------------------------

  CREATE TABLE "P_WIRE_REPORT" 
   (	"ID" NUMBER, 
	"C_PLANT_UNIT_ID" NUMBER, 
	"S_HEAT_ID" NUMBER, 
	"TREAT_NO" NUMBER DEFAULT 0, 
	"START_TIME" DATE, 
	"STOP_TIME" DATE, 
	"SUPPLIER" VARCHAR2(12 BYTE), 
	"C_MATERIAL_ID" NUMBER, 
	"FILL_RATIO" NUMBER(4,1), 
	"LEGTH_CONSUMED" NUMBER(12,1), 
	"WEIGHT_CONSUMED" NUMBER(10,1), 
	"CREATED" DATE, 
	"MODIFIED" DATE, 
	"MOP" VARCHAR2(120 BYTE), 
	"C_WIRE_STRAND_ID" NUMBER
   ) ;

   COMMENT ON COLUMN "P_WIRE_REPORT"."C_PLANT_UNIT_ID" IS 'Unit number 1 or 2';
   COMMENT ON COLUMN "P_WIRE_REPORT"."S_HEAT_ID" IS 'heat identification';
   COMMENT ON COLUMN "P_WIRE_REPORT"."TREAT_NO" IS 'additional heat identification at LF (if heat re-treatment occures)';
   COMMENT ON COLUMN "P_WIRE_REPORT"."START_TIME" IS 'Date';
   COMMENT ON COLUMN "P_WIRE_REPORT"."STOP_TIME" IS 'Date';
   COMMENT ON COLUMN "P_WIRE_REPORT"."C_MATERIAL_ID" IS 'Material code';
