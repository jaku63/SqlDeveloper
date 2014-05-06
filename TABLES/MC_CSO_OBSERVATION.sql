--------------------------------------------------------
--  DDL for Table MC_CSO_OBSERVATION
--------------------------------------------------------

  CREATE TABLE "MC_CSO_OBSERVATION" 
   (	"ID" NUMBER, 
	"LIM_MIN_SPEED" NUMBER(14,11) DEFAULT 0, 
	"LIM_MAX_SPEED" NUMBER(14,11) DEFAULT 0, 
	"SH_TEMP_MIN_SPEED" NUMBER(14,11) DEFAULT 0, 
	"SH_TEMP_MAX_SPEED" NUMBER(14,11) DEFAULT 0, 
	"CP_MIN_SPEED" NUMBER(14,11) DEFAULT 0, 
	"CP_MAX_SPEED" NUMBER(14,11) DEFAULT 0, 
	"SULPHUR_CORRECTION" NUMBER(14,11) DEFAULT 0, 
	"MNS_RATIO_CORRECTION" NUMBER(14,11) DEFAULT 0, 
	"TW_CORRECTION" NUMBER(14,11) DEFAULT 0, 
	"METALLURGICAL_MIN_SPEED" NUMBER(14,11) DEFAULT 0, 
	"METALLURGICAL_MAX_SPEED" NUMBER(14,11) DEFAULT 0, 
	"BASIC_CAST_SPEED" NUMBER(14,11) DEFAULT 0, 
	"SEQUENCE_CAST_SPEED" NUMBER(14,11) DEFAULT 0, 
	"REMAINING_LADLE_TIME" NUMBER DEFAULT 0, 
	"REMAIN_LADLE_TIME_MAN" NUMBER DEFAULT 0, 
	"CALC_SPEED_MAN" NUMBER(14,11) DEFAULT 0, 
	"MODEL_MODE" NUMBER DEFAULT 0, 
	"ACT_LIQ_TEMP" NUMBER DEFAULT 0, 
	"ACT_SH" NUMBER DEFAULT 0, 
	"ACT_TUND_TEMP" NUMBER DEFAULT 0, 
	"CURRENT_GRADE" VARCHAR2(20 BYTE) DEFAULT '0', 
	"USED_TEMP_TAB" NUMBER DEFAULT 0, 
	"USED_TW_TAB" NUMBER DEFAULT 0, 
	"USED_S_TAB" NUMBER DEFAULT 0, 
	"USED_MNS_TAB" NUMBER DEFAULT 0, 
	"USED_LIM_TAB" NUMBER DEFAULT 0, 
	"USED_CP_TAB" NUMBER DEFAULT 0, 
	"CREATED" DATE, 
	"MODIFIED" DATE, 
	"MOP" VARCHAR2(120 BYTE)
   ) ;

   COMMENT ON COLUMN "MC_CSO_OBSERVATION"."LIM_MIN_SPEED" IS 'physical min speed';
   COMMENT ON COLUMN "MC_CSO_OBSERVATION"."LIM_MAX_SPEED" IS 'physical max speed';
   COMMENT ON COLUMN "MC_CSO_OBSERVATION"."SH_TEMP_MIN_SPEED" IS 'lower limit depending on superheat temperature ';
   COMMENT ON COLUMN "MC_CSO_OBSERVATION"."SH_TEMP_MAX_SPEED" IS 'upper limit depending on superheat temperature ';
   COMMENT ON COLUMN "MC_CSO_OBSERVATION"."CP_MIN_SPEED" IS 'carbon pretetic related lower limit of casting speed';
   COMMENT ON COLUMN "MC_CSO_OBSERVATION"."CP_MAX_SPEED" IS 'carbon pretetic related upper limit of casting speed';
   COMMENT ON COLUMN "MC_CSO_OBSERVATION"."SULPHUR_CORRECTION" IS 'speed reduction depending on sulphur content ';
   COMMENT ON COLUMN "MC_CSO_OBSERVATION"."MNS_RATIO_CORRECTION" IS 'speed correction depending on mn/s ratio';
   COMMENT ON COLUMN "MC_CSO_OBSERVATION"."TW_CORRECTION" IS 'speed correction depending on tundish weight';
   COMMENT ON COLUMN "MC_CSO_OBSERVATION"."METALLURGICAL_MIN_SPEED" IS 'metallurgical lower limit of casting speed';
   COMMENT ON COLUMN "MC_CSO_OBSERVATION"."METALLURGICAL_MAX_SPEED" IS 'metallurgical upper limit of casting speed';
   COMMENT ON COLUMN "MC_CSO_OBSERVATION"."BASIC_CAST_SPEED" IS 'basic (optimum) casting speed';
   COMMENT ON COLUMN "MC_CSO_OBSERVATION"."SEQUENCE_CAST_SPEED" IS 'speed to support sequence casting';
   COMMENT ON COLUMN "MC_CSO_OBSERVATION"."REMAINING_LADLE_TIME" IS 'Unit [s] : remaining ladle time when casting with current speed, taking into consideration also announced ladles';
   COMMENT ON COLUMN "MC_CSO_OBSERVATION"."REMAIN_LADLE_TIME_MAN" IS 'Unit [s] : remaining ladle time when casting with manually entered cast speed (through HMI), taking into consideration also announced ladles';
   COMMENT ON COLUMN "MC_CSO_OBSERVATION"."CALC_SPEED_MAN" IS 'Manually calculated speed to support sequence casting based on HMI entered expected next ladle arrival time';
   COMMENT ON COLUMN "MC_CSO_OBSERVATION"."MODEL_MODE" IS 'current model setpoint mode';
