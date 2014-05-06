--------------------------------------------------------
--  DDL for Table PE_RS_REPORT
--------------------------------------------------------

  CREATE TABLE "PE_RS_REPORT" 
   (	"ID" NUMBER, 
	"PLANT_UNIT_ID" NUMBER, 
	"PE_HEAT_ID" NUMBER, 
	"RETURNED_HEAT_ID" VARCHAR2(20 BYTE), 
	"LADLE_ID" VARCHAR2(5 BYTE), 
	"MAT_WEIGHT" NUMBER(8,0), 
	"DISCHARGED_DATE" DATE, 
	"CREATED" DATE, 
	"MODIFIED" DATE, 
	"MOP" VARCHAR2(120 BYTE)
   ) ;

   COMMENT ON COLUMN "PE_RS_REPORT"."PE_HEAT_ID" IS 'heat identification';
   COMMENT ON COLUMN "PE_RS_REPORT"."RETURNED_HEAT_ID" IS 'Returned heat id';
   COMMENT ON COLUMN "PE_RS_REPORT"."LADLE_ID" IS 'Liquid Iron Ladle Number';
   COMMENT ON COLUMN "PE_RS_REPORT"."MAT_WEIGHT" IS 'Unit [kg] : weight of the material ';
   COMMENT ON COLUMN "PE_RS_REPORT"."DISCHARGED_DATE" IS 'time of discharged';
