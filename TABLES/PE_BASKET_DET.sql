--------------------------------------------------------
--  DDL for Table PE_BASKET_DET
--------------------------------------------------------

  CREATE TABLE "PE_BASKET_DET" 
   (	"ID" NUMBER, 
	"PE_BASKET_ID" NUMBER, 
	"LAYER_SEQ_NO" NUMBER, 
	"C_MATERIAL_ID" NUMBER, 
	"MAT_WEIGHT" NUMBER(8,0), 
	"MAT_TEMPERATURE" NUMBER(4,0), 
	"CREATED" DATE, 
	"MODIFIED" DATE, 
	"MOP" VARCHAR2(120 BYTE)
   ) ;

   COMMENT ON COLUMN "PE_BASKET_DET"."PE_BASKET_ID" IS ' basket identification';
   COMMENT ON COLUMN "PE_BASKET_DET"."LAYER_SEQ_NO" IS ' sequence number of basket layer';
   COMMENT ON COLUMN "PE_BASKET_DET"."C_MATERIAL_ID" IS 'material identification';
   COMMENT ON COLUMN "PE_BASKET_DET"."MAT_WEIGHT" IS 'Unit [kg] : weight of the material in the basket layer';
   COMMENT ON COLUMN "PE_BASKET_DET"."MAT_TEMPERATURE" IS 'Unit [°C] : temperature of the material in the basket layer';
