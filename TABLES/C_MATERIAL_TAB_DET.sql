--------------------------------------------------------
--  DDL for Table C_MATERIAL_TAB_DET
--------------------------------------------------------

  CREATE TABLE "C_MATERIAL_TAB_DET" 
   (	"ID" NUMBER, 
	"C_MATERIAL_TAB_ID" NUMBER, 
	"ADD_SEQUENCE_NO" NUMBER, 
	"C_MATERIAL_ID" NUMBER, 
	"C_MATERIAL_USAGE_ID" NUMBER, 
	"MAT_TYPE" VARCHAR2(20 BYTE), 
	"RELATIVE_ADD" NUMBER(14,11), 
	"PERCENT_ADD" NUMBER(4,1) DEFAULT 100, 
	"MULTIPLE_ADD" NUMBER DEFAULT 1, 
	"ABSOLUTE_ADD" NUMBER, 
	"VARIABLE_ADD" NUMBER, 
	"CREATED" DATE, 
	"MODIFIED" DATE, 
	"MOP" VARCHAR2(120 BYTE)
   ) ;

   COMMENT ON COLUMN "C_MATERIAL_TAB_DET"."C_MATERIAL_TAB_ID" IS 'list of permitted materials for each step, i.e. selection of alloys to be considered by the alloying mode';
   COMMENT ON COLUMN "C_MATERIAL_TAB_DET"."ADD_SEQUENCE_NO" IS 'sequence of material addition: 0,1,…  ';
   COMMENT ON COLUMN "C_MATERIAL_TAB_DET"."C_MATERIAL_ID" IS 'material identification, see C_MATERIAL';
   COMMENT ON COLUMN "C_MATERIAL_TAB_DET"."RELATIVE_ADD" IS 'Unit [kg/kg] : relative fixed addition: if this value is specified, the added weight = RELATIVE_ADD * total steel weight in furnace';
   COMMENT ON COLUMN "C_MATERIAL_TAB_DET"."PERCENT_ADD" IS 'Unit [%] : percentage addition: if desired not to 100%-adjust the aim amount of an aloy s main element (pre-alloying) e.g. if this value is 90%  an aim is reduced by 10%';
   COMMENT ON COLUMN "C_MATERIAL_TAB_DET"."MULTIPLE_ADD" IS '1=yes - it can be weighed/charged together with other materials, 0=no';
   COMMENT ON COLUMN "C_MATERIAL_TAB_DET"."ABSOLUTE_ADD" IS 'Unit [kg] : absolute fixed addition.';
   COMMENT ON COLUMN "C_MATERIAL_TAB_DET"."VARIABLE_ADD" IS 'Unit [kg] : variable maximum addition that can be used for calculating alloying, etc.';
