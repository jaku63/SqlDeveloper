--------------------------------------------------------
--  DDL for Table ME_HEAT
--------------------------------------------------------

  CREATE TABLE "ME_HEAT" 
   (	"ID" NUMBER, 
	"S_HEAT_ID" NUMBER, 
	"CHARGE_WEIGHT" NUMBER(8,0), 
	"STEEL_WEIGHT" NUMBER(8,0), 
	"SLAG_WEIGHT" NUMBER(8,0), 
	"CURR_PHASE_SEQ_NO" NUMBER, 
	"CURR_PHASE_TYPE_ID" NUMBER, 
	"CHARGE_MAT_ENERGY" NUMBER(12,1), 
	"SPECIFIC_ENERGY" NUMBER(12,1), 
	"ENERGY_LOSS_SUMM" NUMBER(12,1), 
	"CALCUL_TEMPERATURE" NUMBER(4,0), 
	"ENTHALPY" NUMBER, 
	"LANCE_C" NUMBER, 
	"DRI_WEIGHT" NUMBER, 
	"LIME_WEIGHT" NUMBER, 
	"DOLO_WEIGHT" NUMBER, 
	"SPEC_WEIGHT" NUMBER, 
	"LANCE_O_EBT" NUMBER, 
	"LANCE_C_EBT" NUMBER, 
	"COOLING_LOSS" NUMBER(12,4), 
	"ROOF_COOLING_LOSS" NUMBER(12,4), 
	"GENERAL_LOSS" NUMBER(12,4), 
	"ROOF_LOSS" NUMBER(12,4), 
	"EXOTHERM_ENERGY" NUMBER(12,4), 
	"ENDOTHERM_ENERGY" NUMBER(12,4), 
	"DURATION" NUMBER(6,0), 
	"CREATED" DATE, 
	"MODIFIED" DATE, 
	"MOP" VARCHAR2(120 BYTE)
   ) ;

   COMMENT ON COLUMN "ME_HEAT"."S_HEAT_ID" IS 'heat identification';
   COMMENT ON COLUMN "ME_HEAT"."CHARGE_WEIGHT" IS 'Unit [kg] : summ weight of materials charged';
   COMMENT ON COLUMN "ME_HEAT"."STEEL_WEIGHT" IS 'Unit [kg] : weight of steel in EAF';
   COMMENT ON COLUMN "ME_HEAT"."SLAG_WEIGHT" IS 'Unit [kg] :  weight of slag in EAF';
   COMMENT ON COLUMN "ME_HEAT"."CURR_PHASE_SEQ_NO" IS 'current sequence number of a process phase';
   COMMENT ON COLUMN "ME_HEAT"."CURR_PHASE_TYPE_ID" IS 'current process phase identification - see tab. C_PHASE';
   COMMENT ON COLUMN "ME_HEAT"."CHARGE_MAT_ENERGY" IS 'Unit [kWh] : energy of charged materials';
   COMMENT ON COLUMN "ME_HEAT"."ENERGY_LOSS_SUMM" IS 'Unit [kWh] : summ of energy loss';
   COMMENT ON COLUMN "ME_HEAT"."CALCUL_TEMPERATURE" IS 'Unit [°C] : calculated temperature of the heat';
   COMMENT ON COLUMN "ME_HEAT"."COOLING_LOSS" IS 'Unit [kWh] : cooling loss';
   COMMENT ON COLUMN "ME_HEAT"."ROOF_COOLING_LOSS" IS 'Unit [kWh] : roof cooling loss';
   COMMENT ON COLUMN "ME_HEAT"."GENERAL_LOSS" IS 'Unit [kWh] : general loss';
   COMMENT ON COLUMN "ME_HEAT"."ROOF_LOSS" IS 'Unit [kWh] : roof loss';
   COMMENT ON COLUMN "ME_HEAT"."EXOTHERM_ENERGY" IS 'Unit [kWh] : exotherm energy';
   COMMENT ON COLUMN "ME_HEAT"."ENDOTHERM_ENERGY" IS 'Unit [kWh] : endotherm energy';
   COMMENT ON COLUMN "ME_HEAT"."DURATION" IS '[s]';
