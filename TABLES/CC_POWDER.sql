--------------------------------------------------------
--  DDL for Table CC_POWDER
--------------------------------------------------------

  CREATE TABLE "CC_POWDER" 
   (	"ID" NUMBER, 
	"NAME" VARCHAR2(50 BYTE), 
	"TYPE" VARCHAR2(10 BYTE), 
	"T_LIKVIDUS" NUMBER(12,4), 
	"T_SOLIDUS" NUMBER(12,4), 
	"DENSITY" NUMBER(12,4), 
	"VISCOSITY" NUMBER(12,4), 
	"CONDUCTIVITY" NUMBER(12,4), 
	"CAPACITY" NUMBER(12,4), 
	"LATENTHEAT" NUMBER(12,4), 
	"CREATED" DATE, 
	"MODIFIED" DATE, 
	"MOP" VARCHAR2(120 BYTE)
   ) ;

   COMMENT ON COLUMN "CC_POWDER"."NAME" IS 'Name of the casting powder';
   COMMENT ON COLUMN "CC_POWDER"."T_LIKVIDUS" IS 'Temperature of liqudus [°C]';
   COMMENT ON COLUMN "CC_POWDER"."T_SOLIDUS" IS 'Temperature of solidus [°C]';
   COMMENT ON COLUMN "CC_POWDER"."DENSITY" IS 'Density of powder [kg/m3]';
   COMMENT ON COLUMN "CC_POWDER"."VISCOSITY" IS 'Dynamic viscosity of powder ';
   COMMENT ON COLUMN "CC_POWDER"."CONDUCTIVITY" IS 'Conductivity of powder [W/mK]';
   COMMENT ON COLUMN "CC_POWDER"."CAPACITY" IS 'Heat capacity of powder [J/kgK]';
   COMMENT ON COLUMN "CC_POWDER"."LATENTHEAT" IS 'Latent heat of powder [J/kg]';
