--------------------------------------------------------
--  DDL for Table C_STEEL_GRADE_ANA
--------------------------------------------------------

  CREATE TABLE "C_STEEL_GRADE_ANA" 
   (	"ID" NUMBER, 
	"C_STEEL_GRADE_ID" NUMBER, 
	"C_ELEMENT_ID" NUMBER, 
	"ELE_EAF_MIN" NUMBER(14,11), 
	"ELE_EAF_AIM" NUMBER(14,11), 
	"ELE_EAF_MAX" NUMBER(14,11), 
	"ELE_LF_MIN" NUMBER(14,11), 
	"ELE_LF_AIM" NUMBER(14,11), 
	"ELE_LF_MAX" NUMBER(14,11), 
	"ELE_VD_MIN" NUMBER(14,11), 
	"ELE_VD_AIM" NUMBER(14,11), 
	"ELE_VD_MAX" NUMBER(14,11), 
	"ELE_CC_MIN" NUMBER(14,11), 
	"ELE_CC_AIM" NUMBER(14,11), 
	"ELE_CC_MAX" NUMBER(14,11), 
	"CREATED" DATE, 
	"MODIFIED" DATE, 
	"MOP" VARCHAR2(120 BYTE)
   ) ;

   COMMENT ON COLUMN "C_STEEL_GRADE_ANA"."C_STEEL_GRADE_ID" IS 'steel grade identification';
   COMMENT ON COLUMN "C_STEEL_GRADE_ANA"."C_ELEMENT_ID" IS 'symbol of a chemical element';
   COMMENT ON COLUMN "C_STEEL_GRADE_ANA"."ELE_EAF_MIN" IS 'Unit [kg/kg] : min relative amount value in  EAF';
   COMMENT ON COLUMN "C_STEEL_GRADE_ANA"."ELE_EAF_AIM" IS 'Unit [kg/kg] : aim relative amount value in EAF';
   COMMENT ON COLUMN "C_STEEL_GRADE_ANA"."ELE_EAF_MAX" IS 'Unit [kg/kg] : max relative amount value in EAF';
   COMMENT ON COLUMN "C_STEEL_GRADE_ANA"."ELE_LF_MIN" IS 'Unit [kg/kg] : min relative amount value in  LF';
   COMMENT ON COLUMN "C_STEEL_GRADE_ANA"."ELE_LF_AIM" IS 'Unit [kg/kg] : aim relative amount value in LF';
   COMMENT ON COLUMN "C_STEEL_GRADE_ANA"."ELE_LF_MAX" IS 'Unit [kg/kg] : max relative amount value in LF';
   COMMENT ON COLUMN "C_STEEL_GRADE_ANA"."ELE_VD_MIN" IS 'Unit [kg/kg] : min relative amount value in  VD';
   COMMENT ON COLUMN "C_STEEL_GRADE_ANA"."ELE_VD_AIM" IS 'Unit [kg/kg] : aim relative amount value in VD';
   COMMENT ON COLUMN "C_STEEL_GRADE_ANA"."ELE_VD_MAX" IS 'Unit [kg/kg] : max relative amount value in VD';
   COMMENT ON COLUMN "C_STEEL_GRADE_ANA"."ELE_CC_MIN" IS 'Unit [kg/kg] : min relative amount value in CC';
   COMMENT ON COLUMN "C_STEEL_GRADE_ANA"."ELE_CC_AIM" IS 'Unit [kg/kg] : aim relative amount value in CC';
   COMMENT ON COLUMN "C_STEEL_GRADE_ANA"."ELE_CC_MAX" IS 'Unit [kg/kg] : max relative amount value in CC';
