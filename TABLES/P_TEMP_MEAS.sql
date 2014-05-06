--------------------------------------------------------
--  DDL for Table P_TEMP_MEAS
--------------------------------------------------------

  CREATE TABLE "P_TEMP_MEAS" 
   (	"ID" NUMBER, 
	"PLANT_UNIT" VARCHAR2(20 BYTE), 
	"PLANT_UNIT_NO" NUMBER, 
	"S_HEAT_ID" NUMBER, 
	"TREAT_NO" NUMBER DEFAULT 0, 
	"MEAS_TIME" DATE, 
	"TEMPERATURE" NUMBER, 
	"EQUIPMENT" VARCHAR2(10 BYTE), 
	"CREATED" DATE, 
	"MODIFIED" DATE, 
	"MOP" VARCHAR2(120 BYTE), 
	"C_CONTENT" NUMBER(7,4), 
	"O2_CONTENT" NUMBER(7,4), 
	"FLAG_MANUAL" NUMBER(1,0), 
	"POWER_CONS" NUMBER
   ) ;

   COMMENT ON COLUMN "P_TEMP_MEAS"."PLANT_UNIT" IS 'plant unit';
   COMMENT ON COLUMN "P_TEMP_MEAS"."PLANT_UNIT_NO" IS 'plant unit number';
   COMMENT ON COLUMN "P_TEMP_MEAS"."S_HEAT_ID" IS 'heat identification';
   COMMENT ON COLUMN "P_TEMP_MEAS"."TREAT_NO" IS 'additional heat identification at LF (if heat re-treatment occures)';
   COMMENT ON COLUMN "P_TEMP_MEAS"."MEAS_TIME" IS 'Measurement time';
   COMMENT ON COLUMN "P_TEMP_MEAS"."TEMPERATURE" IS 'Measured temperature';
   COMMENT ON COLUMN "P_TEMP_MEAS"."EQUIPMENT" IS 'Equipment where tempearture was taken (TUNDISH,LADLE)';
