--------------------------------------------------------
--  DDL for Table PC_HEAT_MOULD
--------------------------------------------------------

  CREATE TABLE "PC_HEAT_MOULD" 
   (	"ID" NUMBER, 
	"S_HEAT_ID" NUMBER, 
	"STRAND_NO" NUMBER, 
	"MOULD_NO" NUMBER, 
	"WIDTH" NUMBER, 
	"THICKNESS" NUMBER, 
	"MOLD_LEVEL" NUMBER, 
	"AUTO_PERC" NUMBER, 
	"ZERO_SEGMENT_NO" NUMBER, 
	"NOZZLE_DEPTH" FLOAT(126), 
	"POWDER_CONSUMPTION" FLOAT(126), 
	"OSCI_FREQ_L1" FLOAT(126), 
	"NOZZLE_TYPE" NUMBER, 
	"CREATED" DATE, 
	"MODIFIED" DATE, 
	"MOP" VARCHAR2(120 BYTE)
   ) ;

   COMMENT ON COLUMN "PC_HEAT_MOULD"."S_HEAT_ID" IS 'heat identification';
   COMMENT ON COLUMN "PC_HEAT_MOULD"."WIDTH" IS 'Unit [mm] : ';
   COMMENT ON COLUMN "PC_HEAT_MOULD"."THICKNESS" IS 'Unit [mm] : ';
   COMMENT ON COLUMN "PC_HEAT_MOULD"."MOLD_LEVEL" IS 'Unit [mm] : ';
   COMMENT ON COLUMN "PC_HEAT_MOULD"."AUTO_PERC" IS 'Unit [%] : Mould level auto mode - send to L3';
   COMMENT ON COLUMN "PC_HEAT_MOULD"."ZERO_SEGMENT_NO" IS 'zero segment number';
   COMMENT ON COLUMN "PC_HEAT_MOULD"."NOZZLE_DEPTH" IS 'nozzle depth';
   COMMENT ON COLUMN "PC_HEAT_MOULD"."POWDER_CONSUMPTION" IS 'Unit [kg/min] : Powder consumption';
   COMMENT ON COLUMN "PC_HEAT_MOULD"."OSCI_FREQ_L1" IS 'Unit [1/sec] : oscilation frequency';
   COMMENT ON COLUMN "PC_HEAT_MOULD"."NOZZLE_TYPE" IS 'nozzle type';
