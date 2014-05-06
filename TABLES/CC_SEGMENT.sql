--------------------------------------------------------
--  DDL for Table CC_SEGMENT
--------------------------------------------------------

  CREATE TABLE "CC_SEGMENT" 
   (	"ID" NUMBER, 
	"STRAND_NO" NUMBER, 
	"SEGMENT_NO" NUMBER, 
	"SEGMENT_NAME" VARCHAR2(50 BYTE), 
	"LENGTH_START" NUMBER(12,4), 
	"LENGTH_END" NUMBER(12,4), 
	"WIDTH_START" NUMBER(12,4), 
	"WIDTH_END" NUMBER(12,4), 
	"DESCRIPTION" VARCHAR2(80 BYTE), 
	"CREATED" DATE, 
	"MODIFIED" DATE, 
	"MOP" VARCHAR2(120 BYTE)
   ) ;

   COMMENT ON COLUMN "CC_SEGMENT"."STRAND_NO" IS 'Strand number';
   COMMENT ON COLUMN "CC_SEGMENT"."SEGMENT_NO" IS 'Segment number';
   COMMENT ON COLUMN "CC_SEGMENT"."SEGMENT_NAME" IS 'Name of the segment';
   COMMENT ON COLUMN "CC_SEGMENT"."LENGTH_START" IS 'Z coordinate of start of segment from the top edge of the mold';
   COMMENT ON COLUMN "CC_SEGMENT"."LENGTH_END" IS 'Z coordinate of end of segment from the top edge of the mold';
   COMMENT ON COLUMN "CC_SEGMENT"."WIDTH_START" IS 'Width profile at start of segment';
   COMMENT ON COLUMN "CC_SEGMENT"."WIDTH_END" IS 'Width profile at end of segment';
   COMMENT ON COLUMN "CC_SEGMENT"."DESCRIPTION" IS 'Comment';
