--------------------------------------------------------
--  DDL for Table CC_STRAND
--------------------------------------------------------

  CREATE TABLE "CC_STRAND" 
   (	"ID" NUMBER, 
	"STRAND_NO" NUMBER, 
	"NAME" VARCHAR2(50 BYTE), 
	"CASTER_ID" NUMBER, 
	"LENGTH_MOLD" NUMBER(12,4), 
	"LENGTH_TOP_MOLD" NUMBER(12,4), 
	"RADIUS" NUMBER(12,4), 
	"ANGLE" NUMBER(12,4), 
	"CURVE_PART" NUMBER(12,4), 
	"STRAIGHT_PART" NUMBER(12,4), 
	"BURNING_PART" NUMBER(12,4), 
	"LENGTH" NUMBER(12,4), 
	"NUMBEROFSEGMENTS" NUMBER, 
	"NUMBEROFCIRCUITS" NUMBER, 
	"NUMBEROFNOZZLES_SR" NUMBER, 
	"NUMBEROFNOZZLES_LR" NUMBER, 
	"NUMBEROFNOZZLES_SIDE" NUMBER, 
	"NUMBEROFROLLERS_SR" NUMBER, 
	"NUMBEROFROLLERS_LR" NUMBER, 
	"NUMBEROFROLLERS_SIDE" NUMBER, 
	"CREATED" DATE, 
	"MODIFIED" DATE, 
	"MOP" VARCHAR2(120 BYTE)
   ) ;

   COMMENT ON COLUMN "CC_STRAND"."STRAND_NO" IS 'Strand number';
   COMMENT ON COLUMN "CC_STRAND"."NAME" IS 'Name of the caster';
   COMMENT ON COLUMN "CC_STRAND"."CASTER_ID" IS 'Machine identification (1,2,4)';
   COMMENT ON COLUMN "CC_STRAND"."LENGTH_MOLD" IS 'Lenght of mold';
   COMMENT ON COLUMN "CC_STRAND"."LENGTH_TOP_MOLD" IS 'Height of top of the mold on the center of the radius';
   COMMENT ON COLUMN "CC_STRAND"."RADIUS" IS 'Caster radius measured on the axis';
   COMMENT ON COLUMN "CC_STRAND"."ANGLE" IS 'Angle in degrees of arc';
   COMMENT ON COLUMN "CC_STRAND"."CURVE_PART" IS 'The expansion length of the curve';
   COMMENT ON COLUMN "CC_STRAND"."STRAIGHT_PART" IS 'Length between the end of the curvature of the cage and the end';
   COMMENT ON COLUMN "CC_STRAND"."BURNING_PART" IS 'Length between the end of the cage and cutting torch';
   COMMENT ON COLUMN "CC_STRAND"."LENGTH" IS 'Length';
   COMMENT ON COLUMN "CC_STRAND"."NUMBEROFSEGMENTS" IS 'Number of segments';
   COMMENT ON COLUMN "CC_STRAND"."NUMBEROFCIRCUITS" IS 'Number of cooling loops';
   COMMENT ON COLUMN "CC_STRAND"."NUMBEROFNOZZLES_SR" IS 'Number of nozzles small radius';
   COMMENT ON COLUMN "CC_STRAND"."NUMBEROFNOZZLES_LR" IS 'Number of nozzles large radius';
   COMMENT ON COLUMN "CC_STRAND"."NUMBEROFNOZZLES_SIDE" IS 'Number of nozzles side';
   COMMENT ON COLUMN "CC_STRAND"."NUMBEROFROLLERS_SR" IS 'Number of rollers small radius';
   COMMENT ON COLUMN "CC_STRAND"."NUMBEROFROLLERS_LR" IS 'Number of rollers large radius';
   COMMENT ON COLUMN "CC_STRAND"."NUMBEROFROLLERS_SIDE" IS 'Number of rollers side';
