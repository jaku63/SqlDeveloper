--------------------------------------------------------
--  DDL for Table P_ALERT_MESSAGES
--------------------------------------------------------

  CREATE TABLE "P_ALERT_MESSAGES" 
   (	"ID" NUMBER, 
	"MSG_TIME" DATE DEFAULT CURRENT_TIMESTAMP, 
	"S_HEAT_ID" NUMBER, 
	"MSG_SEVERITY" VARCHAR2(10 BYTE), 
	"MSG_SOURCE" VARCHAR2(20 BYTE), 
	"MSG_TEXT" VARCHAR2(200 BYTE), 
	"CREATED" DATE, 
	"MODIFIED" DATE, 
	"MOP" VARCHAR2(120 BYTE), 
	"MSG_TARGET_PLANT" VARCHAR2(20 BYTE), 
	"MSG_TARGET_PLANT_NO" NUMBER
   ) ;

   COMMENT ON COLUMN "P_ALERT_MESSAGES"."S_HEAT_ID" IS 'heat identification';
