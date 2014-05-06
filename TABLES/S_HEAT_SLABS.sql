--------------------------------------------------------
--  DDL for Table S_HEAT_SLABS
--------------------------------------------------------

  CREATE TABLE "S_HEAT_SLABS" 
   (	"ID" NUMBER, 
	"S_HEAT_ID" NUMBER, 
	"SLAB_GROUP_ID" VARCHAR2(6 BYTE), 
	"SLAB_COUNT" NUMBER, 
	"HEAD_WIDTH" NUMBER, 
	"HEAD_THICKNESS" NUMBER, 
	"MIN_LENGTH" FLOAT(126), 
	"AIM_LENGTH" FLOAT(126), 
	"MAX_LENGTH" FLOAT(126), 
	"STRAND_SPEC_ASSIGN" NUMBER, 
	"CREATED" DATE, 
	"MODIFIED" DATE, 
	"MOP" VARCHAR2(120 BYTE)
   ) ;

   COMMENT ON COLUMN "S_HEAT_SLABS"."S_HEAT_ID" IS 'Reference to S_HEAT table';
   COMMENT ON COLUMN "S_HEAT_SLABS"."SLAB_GROUP_ID" IS 'slab group identification';
   COMMENT ON COLUMN "S_HEAT_SLABS"."SLAB_COUNT" IS 'slab count to be produced';
   COMMENT ON COLUMN "S_HEAT_SLABS"."HEAD_WIDTH" IS 'Unit [mm] : head width';
   COMMENT ON COLUMN "S_HEAT_SLABS"."HEAD_THICKNESS" IS 'Unit [mm] : ';
   COMMENT ON COLUMN "S_HEAT_SLABS"."MIN_LENGTH" IS 'Unit [m] : ';
   COMMENT ON COLUMN "S_HEAT_SLABS"."AIM_LENGTH" IS 'Unit [m] : ';
   COMMENT ON COLUMN "S_HEAT_SLABS"."MAX_LENGTH" IS 'Unit [m] : ';
