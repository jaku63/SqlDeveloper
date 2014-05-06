--------------------------------------------------------
--  DDL for Table ME_MATERIAL_RECIPE
--------------------------------------------------------

  CREATE TABLE "ME_MATERIAL_RECIPE" 
   (	"ID" NUMBER, 
	"ME_PRED_PHASE_ID" NUMBER, 
	"C_BUNKER_ID" NUMBER, 
	"C_MATERIAL_ID" NUMBER, 
	"MAT_WEIGHT" NUMBER(6,0), 
	"MULTIPLE_ADD" NUMBER DEFAULT 1, 
	"ADD_SEQUENCE_NO" NUMBER, 
	"CREATED" DATE, 
	"MODIFIED" DATE, 
	"MOP" VARCHAR2(120 BYTE)
   ) ;

   COMMENT ON COLUMN "ME_MATERIAL_RECIPE"."ME_PRED_PHASE_ID" IS 'reference to ME_PRED_PHASE table';
   COMMENT ON COLUMN "ME_MATERIAL_RECIPE"."C_BUNKER_ID" IS 'bunker with material for alloying';
   COMMENT ON COLUMN "ME_MATERIAL_RECIPE"."C_MATERIAL_ID" IS 'material identification';
   COMMENT ON COLUMN "ME_MATERIAL_RECIPE"."MAT_WEIGHT" IS 'Unit [kg] : weightt of material - setpoint';
   COMMENT ON COLUMN "ME_MATERIAL_RECIPE"."MULTIPLE_ADD" IS 'material multiple addition: 1=yes, 0=no';
   COMMENT ON COLUMN "ME_MATERIAL_RECIPE"."ADD_SEQUENCE_NO" IS 'sequence of material addition: 0,1,…  see C_MATERIAL_TAB';
