--------------------------------------------------------
--  DDL for Table SE_SCRAP_DISCHARGE
--------------------------------------------------------

  CREATE TABLE "SE_SCRAP_DISCHARGE" 
   (	"ID" NUMBER, 
	"S_HEAT_ID" NUMBER, 
	"MATERIAL_ID" NUMBER, 
	"WEIGHT" NUMBER, 
	"TEMPERATURE" NUMBER DEFAULT 25, 
	"CREATED" DATE, 
	"MODIFIED" DATE, 
	"MOP" VARCHAR2(120 BYTE)
   ) ;

   COMMENT ON COLUMN "SE_SCRAP_DISCHARGE"."S_HEAT_ID" IS 'heat identification';
   COMMENT ON COLUMN "SE_SCRAP_DISCHARGE"."MATERIAL_ID" IS 'material identification';
   COMMENT ON COLUMN "SE_SCRAP_DISCHARGE"."WEIGHT" IS 'weight of scrap material';
   COMMENT ON COLUMN "SE_SCRAP_DISCHARGE"."TEMPERATURE" IS 'scrap temperature';
