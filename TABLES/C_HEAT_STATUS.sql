--------------------------------------------------------
--  DDL for Table C_HEAT_STATUS
--------------------------------------------------------

  CREATE TABLE "C_HEAT_STATUS" 
   (	"ID" NUMBER, 
	"HEAT_STATUS" NUMBER, 
	"HEAT_STATUS_DESC_ENG" VARCHAR2(30 BYTE), 
	"HEAT_STATUS_DESC_LOC" VARCHAR2(30 BYTE), 
	"CREATED" DATE, 
	"MODIFIED" DATE, 
	"MOP" VARCHAR2(120 BYTE)
   ) ;

   COMMENT ON COLUMN "C_HEAT_STATUS"."HEAT_STATUS" IS 'SCH = scheduled, ANN = annouced, PRO = processed, FIN = finished, …';
   COMMENT ON COLUMN "C_HEAT_STATUS"."HEAT_STATUS_DESC_ENG" IS 'english';
   COMMENT ON COLUMN "C_HEAT_STATUS"."HEAT_STATUS_DESC_LOC" IS 'local laguage';
