--------------------------------------------------------
--  DDL for Table C_MATERIAL
--------------------------------------------------------

  CREATE TABLE "C_MATERIAL" 
   (	"ID" NUMBER, 
	"MAT_CODE" VARCHAR2(8 BYTE), 
	"MAT_TYPE" VARCHAR2(20 BYTE), 
	"DESCRIPTION_ENG" VARCHAR2(50 BYTE), 
	"DESCRIPTION_LOC" VARCHAR2(40 BYTE), 
	"MATERIAL_USAGE" NUMBER DEFAULT 0, 
	"MAT_YIELD" NUMBER(5,2) DEFAULT 100, 
	"STEEL_YIELD" NUMBER(5,2) DEFAULT 100, 
	"PRICE" NUMBER(8,2), 
	"ENTHALPY" NUMBER(4,2), 
	"COOL_FACTOR" NUMBER(6,3), 
	"REFERENCE_TEMPERATURE" NUMBER(4,0), 
	"SPECIFIC_HEAT" NUMBER(10,6), 
	"DENSITY" NUMBER(10,2), 
	"SMALLEST_CHARGEABLE" NUMBER(6,0) DEFAULT 0, 
	"UNIT_OF_MEASURE" VARCHAR2(3 BYTE), 
	"PRICE_UNIT" NUMBER(6,2), 
	"STOCK_QUANTITY" NUMBER(8,2), 
	"STOCK_DATE" DATE, 
	"FILL_RATIO" NUMBER(12,4), 
	"CREATED" DATE, 
	"MODIFIED" DATE, 
	"MOP" VARCHAR2(120 BYTE), 
	"REPORT_GROUP" VARCHAR2(20 BYTE)
   ) ;

   COMMENT ON COLUMN "C_MATERIAL"."MAT_CODE" IS 'material identification';
   COMMENT ON COLUMN "C_MATERIAL"."MAT_TYPE" IS 'material type =>"FLUX", "ALLOY", "WIRE", "METALLIC", "SCRAP"';
   COMMENT ON COLUMN "C_MATERIAL"."DESCRIPTION_ENG" IS 'english description';
   COMMENT ON COLUMN "C_MATERIAL"."DESCRIPTION_LOC" IS 'local language description';
   COMMENT ON COLUMN "C_MATERIAL"."MATERIAL_USAGE" IS '1 = DRI, 2 = lime, 3 = dolomite, 4 = carbon';
   COMMENT ON COLUMN "C_MATERIAL"."MAT_YIELD" IS 'effective portion of material contained in steel or|and in slag (the rest portion is lost)';
   COMMENT ON COLUMN "C_MATERIAL"."STEEL_YIELD" IS 'effective portion of material contained in steel (the rest portion is lost)';
   COMMENT ON COLUMN "C_MATERIAL"."PRICE" IS 'Unit [currency/kg] : price per kg of material ';
   COMMENT ON COLUMN "C_MATERIAL"."ENTHALPY" IS 'Unit [kWh/kg] : material enthalpy';
   COMMENT ON COLUMN "C_MATERIAL"."COOL_FACTOR" IS 'Cooling factor for material addition';
   COMMENT ON COLUMN "C_MATERIAL"."REFERENCE_TEMPERATURE" IS 'Unit [°C] : reference temperature of enthalpy';
   COMMENT ON COLUMN "C_MATERIAL"."SPECIFIC_HEAT" IS 'Unit [kWh/kg/°C] : specific heat';
   COMMENT ON COLUMN "C_MATERIAL"."DENSITY" IS 'Unit [kg/m] : density of wire material';
   COMMENT ON COLUMN "C_MATERIAL"."SMALLEST_CHARGEABLE" IS 'Unit [kg] : smallest chargeable amount of material. ';
   COMMENT ON COLUMN "C_MATERIAL"."UNIT_OF_MEASURE" IS 'Unit of Measure';
   COMMENT ON COLUMN "C_MATERIAL"."PRICE_UNIT" IS 'Price unit';
   COMMENT ON COLUMN "C_MATERIAL"."STOCK_QUANTITY" IS 'Stock quantity according to SAP';
   COMMENT ON COLUMN "C_MATERIAL"."STOCK_DATE" IS 'stack date';
   COMMENT ON COLUMN "C_MATERIAL"."FILL_RATIO" IS 'Unit [kg/m] : Ratio for wires';
