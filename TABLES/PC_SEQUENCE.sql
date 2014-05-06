--------------------------------------------------------
--  DDL for Table PC_SEQUENCE
--------------------------------------------------------

  CREATE TABLE "PC_SEQUENCE" 
   (	"ID" NUMBER, 
	"SEQ_NO" NUMBER, 
	"CAST_START" DATE, 
	"FIRST_LADLE_OPEN" DATE, 
	"LAST_LADLE_CLOSE" DATE, 
	"CAST_END" DATE, 
	"TOTAL_CAST_WEIGHT" NUMBER, 
	"TOTAL_SLAB_WEIGHT" NUMBER, 
	"PREPERATION_START" DATE, 
	"PREPERATION_END" DATE, 
	"IDLE_START" DATE, 
	"CREATED" DATE, 
	"MODIFIED" DATE, 
	"MOP" VARCHAR2(120 BYTE)
   ) ;

   COMMENT ON COLUMN "PC_SEQUENCE"."SEQ_NO" IS 'Sequence number';
   COMMENT ON COLUMN "PC_SEQUENCE"."CAST_START" IS 'Cast start time (Tundish Stopper Rod, fist heat in seq. Cast start on any strand)';
   COMMENT ON COLUMN "PC_SEQUENCE"."FIRST_LADLE_OPEN" IS 'First ladle open time';
   COMMENT ON COLUMN "PC_SEQUENCE"."LAST_LADLE_CLOSE" IS 'Last ladle close time';
   COMMENT ON COLUMN "PC_SEQUENCE"."CAST_END" IS 'Last cut done';
   COMMENT ON COLUMN "PC_SEQUENCE"."TOTAL_CAST_WEIGHT" IS 'Unit [kg] : Total cast steel weight including scraps etc.';
   COMMENT ON COLUMN "PC_SEQUENCE"."TOTAL_SLAB_WEIGHT" IS 'Unit [kg] : Total weight of produced slabs with good quality';
   COMMENT ON COLUMN "PC_SEQUENCE"."PREPERATION_START" IS 'Dummy bar insert start – information  from L1 Strand data telegram';
   COMMENT ON COLUMN "PC_SEQUENCE"."PREPERATION_END" IS 'Ready to cast – information from  L1Strand data telegram';
   COMMENT ON COLUMN "PC_SEQUENCE"."IDLE_START" IS 'Tail out end on last strand for previous sequence';
