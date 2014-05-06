--------------------------------------------------------
--  DDL for Table S_HEAT_STRAND
--------------------------------------------------------

  CREATE TABLE "S_HEAT_STRAND" 
   (	"ID" NUMBER, 
	"S_HEAT_ID" NUMBER, 
	"STRAND_NO" NUMBER, 
	"INIT_WIDTH" NUMBER, 
	"INIT_THICKNESS" NUMBER, 
	"NUMBER_OF_B_TEST" NUMBER, 
	"CREATED" DATE, 
	"MODIFIED" DATE, 
	"MOP" VARCHAR2(120 BYTE)
   ) ;

   COMMENT ON COLUMN "S_HEAT_STRAND"."S_HEAT_ID" IS 'Reference to S_HEAT table';
   COMMENT ON COLUMN "S_HEAT_STRAND"."STRAND_NO" IS 'sequence of heat in plant production ';
   COMMENT ON COLUMN "S_HEAT_STRAND"."INIT_WIDTH" IS 'Unit [mm] : Strand 1 init width';
   COMMENT ON COLUMN "S_HEAT_STRAND"."INIT_THICKNESS" IS 'Unit [mm] : Init thickness';
   COMMENT ON COLUMN "S_HEAT_STRAND"."NUMBER_OF_B_TEST" IS 'L3 info';
