--------------------------------------------------------
--  DDL for Table C_ELEMENT
--------------------------------------------------------

  CREATE TABLE "C_ELEMENT" 
   (	"ID" NUMBER, 
	"ELE_SYMBOL" VARCHAR2(10 BYTE), 
	"CHEM_TYPE" NUMBER, 
	"ELE_ARRAY_IDX" NUMBER, 
	"ELE_FACTOR" NUMBER(10,2) DEFAULT 100, 
	"MOL_WEIGHT" NUMBER(8,4) DEFAULT 0, 
	"O2_STOICHIO" NUMBER(8,4), 
	"OXIDATION" NUMBER DEFAULT 0, 
	"ELE_OX_EAF_MIN" NUMBER(14,11) DEFAULT 0, 
	"ENE_OXIDATION" NUMBER(14,11) DEFAULT 0, 
	"FREE_ENE_A" NUMBER(12,2) DEFAULT 0, 
	"FREE_ENE_C" NUMBER(8,2) DEFAULT 0, 
	"KINET_FACTOR" NUMBER(12,2) DEFAULT 0, 
	"ELE_DESC" VARCHAR2(50 BYTE), 
	"LOW_LIMIT" NUMBER(14,11), 
	"HIGH_LIMIT" NUMBER(14,11), 
	"CREATED" DATE, 
	"MODIFIED" DATE, 
	"MOP" VARCHAR2(120 BYTE)
   ) ;

   COMMENT ON COLUMN "C_ELEMENT"."ELE_SYMBOL" IS 'chemical symbol of an element or a compound';
   COMMENT ON COLUMN "C_ELEMENT"."CHEM_TYPE" IS 'element or compound (1 or 2)';
   COMMENT ON COLUMN "C_ELEMENT"."ELE_ARRAY_IDX" IS 'index for arrays of chemical analysis: indexes 0…39 elements, 40…49 elements variety, 50…69 compounds';
   COMMENT ON COLUMN "C_ELEMENT"."ELE_FACTOR" IS 'conversion factor for displaying element amouint - e.g. for % = 100, for ppm = 1e6';
   COMMENT ON COLUMN "C_ELEMENT"."MOL_WEIGHT" IS 'Unit [kg/kmol] : molar weight';
   COMMENT ON COLUMN "C_ELEMENT"."O2_STOICHIO" IS 'Unit [Nm3/kmol] : Stoichiometric coefficient for oxidation of element';
   COMMENT ON COLUMN "C_ELEMENT"."OXIDATION" IS 'element oxidation: 1 = yes / 0 = no';
   COMMENT ON COLUMN "C_ELEMENT"."ELE_OX_EAF_MIN" IS 'Unit [kg/kg] : min relative amount value in EAF after oxidation';
   COMMENT ON COLUMN "C_ELEMENT"."ENE_OXIDATION" IS 'Unit [kWh/kg] : Energy of  element oxidation, for C simple oxidation into CO';
   COMMENT ON COLUMN "C_ELEMENT"."FREE_ENE_A" IS 'Gibbs free energy coeff. A';
   COMMENT ON COLUMN "C_ELEMENT"."FREE_ENE_C" IS 'Gibbs free energy coeff. C';
   COMMENT ON COLUMN "C_ELEMENT"."KINET_FACTOR" IS 'kinetic factor';
   COMMENT ON COLUMN "C_ELEMENT"."ELE_DESC" IS 'Description of element';
   COMMENT ON COLUMN "C_ELEMENT"."LOW_LIMIT" IS 'Low limit (from L3)';
   COMMENT ON COLUMN "C_ELEMENT"."HIGH_LIMIT" IS 'High limit (from L3)';
