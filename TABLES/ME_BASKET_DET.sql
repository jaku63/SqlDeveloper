--------------------------------------------------------
--  DDL for Table ME_BASKET_DET
--------------------------------------------------------

  CREATE TABLE "ME_BASKET_DET" 
   (	"ID" NUMBER, 
	"ME_BASKET_ID" NUMBER, 
	"C_MATERIAL_ID" NUMBER, 
	"MAT_SEQ_NO" NUMBER, 
	"MAT_WEIGHT" NUMBER, 
	"CREATED" DATE, 
	"MODIFIED" DATE, 
	"MOP" VARCHAR2(120 BYTE)
   ) ;

   COMMENT ON COLUMN "ME_BASKET_DET"."ME_BASKET_ID" IS 'Reference to ME_BASKET table';
   COMMENT ON COLUMN "ME_BASKET_DET"."C_MATERIAL_ID" IS 'material identification';
   COMMENT ON COLUMN "ME_BASKET_DET"."MAT_SEQ_NO" IS 'sequence number of a material';
   COMMENT ON COLUMN "ME_BASKET_DET"."MAT_WEIGHT" IS 'Unit [kg] : weight of the material in the basket layer';
