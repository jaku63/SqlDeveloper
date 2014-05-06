--------------------------------------------------------
--  DDL for Table S_HEAT_ROUTE
--------------------------------------------------------

  CREATE TABLE "S_HEAT_ROUTE" 
   (	"ID" NUMBER, 
	"S_HEAT_ID" NUMBER, 
	"PLANT_UNIT_ID" NUMBER, 
	"START_TIME" DATE, 
	"END_TIME" DATE, 
	"CREATED" DATE, 
	"MODIFIED" DATE, 
	"MOP" VARCHAR2(120 BYTE)
   ) ;

   COMMENT ON COLUMN "S_HEAT_ROUTE"."S_HEAT_ID" IS 'Reference to S_HEAT table';
   COMMENT ON COLUMN "S_HEAT_ROUTE"."PLANT_UNIT_ID" IS 'plant unit identification';
