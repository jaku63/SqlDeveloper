--------------------------------------------------------
--  DDL for Table CL_EL_POWER
--------------------------------------------------------

  CREATE TABLE "CL_EL_POWER" 
   (	"ID" NUMBER, 
	"VOLTAGE_TAP" NUMBER, 
	"ELECTRODE_CONTROL" NUMBER, 
	"ELECTRIC_POWER" NUMBER, 
	"CREATED" DATE, 
	"MODIFIED" DATE, 
	"MOP" VARCHAR2(120 BYTE)
   ) ;

   COMMENT ON COLUMN "CL_EL_POWER"."VOLTAGE_TAP" IS 'voltage tap No of transformer';
   COMMENT ON COLUMN "CL_EL_POWER"."ELECTRODE_CONTROL" IS 'electrode control value';
   COMMENT ON COLUMN "CL_EL_POWER"."ELECTRIC_POWER" IS 'Unit [kW] : elelectric power';
