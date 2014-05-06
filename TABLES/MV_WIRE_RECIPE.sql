--------------------------------------------------------
--  DDL for Table MV_WIRE_RECIPE
--------------------------------------------------------

  CREATE TABLE "MV_WIRE_RECIPE" 
   (	"ID" NUMBER, 
	"MV_PRED_PHASE_ID" NUMBER, 
	"C_WIRE_STRAND_ID" NUMBER, 
	"C_MATERIAL_ID" NUMBER, 
	"MAT_WEIGHT" NUMBER, 
	"MAT_LENGHT" NUMBER, 
	"ADD_SEQ_NO" NUMBER, 
	"SAMPLE_NO" NUMBER, 
	"CREATED" DATE, 
	"MODIFIED" DATE, 
	"MOP" VARCHAR2(120 BYTE)
   ) ;

   COMMENT ON COLUMN "MV_WIRE_RECIPE"."MV_PRED_PHASE_ID" IS 'phase identification';
   COMMENT ON COLUMN "MV_WIRE_RECIPE"."C_WIRE_STRAND_ID" IS 'bunker with material for alloying';
   COMMENT ON COLUMN "MV_WIRE_RECIPE"."C_MATERIAL_ID" IS 'material identification';
   COMMENT ON COLUMN "MV_WIRE_RECIPE"."MAT_WEIGHT" IS 'Unit [kg] : weightt of material - setpoint';
   COMMENT ON COLUMN "MV_WIRE_RECIPE"."ADD_SEQ_NO" IS 'sequence of addition (ascending)';
   COMMENT ON COLUMN "MV_WIRE_RECIPE"."SAMPLE_NO" IS 'identification of the steel sample the calculation was based on - see tab. P_LAB_ANA';
