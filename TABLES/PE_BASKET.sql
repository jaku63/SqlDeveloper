--------------------------------------------------------
--  DDL for Table PE_BASKET
--------------------------------------------------------

  CREATE TABLE "PE_BASKET" 
   (	"ID" NUMBER, 
	"C_EQUIPMENT_ID_BASKET" NUMBER, 
	"S_HEAT_ID" NUMBER, 
	"DISCHARGE_TIME" DATE, 
	"BASKET_SEQ_NO" NUMBER, 
	"VERIFIED" NUMBER(1,0) DEFAULT 0, 
	"VER_COMMENT" VARCHAR2(512 BYTE), 
	"CREATED" DATE, 
	"MODIFIED" DATE, 
	"MOP" VARCHAR2(120 BYTE)
   ) ;

   COMMENT ON COLUMN "PE_BASKET"."C_EQUIPMENT_ID_BASKET" IS 'basket identification';
   COMMENT ON COLUMN "PE_BASKET"."S_HEAT_ID" IS 'heat identification';
   COMMENT ON COLUMN "PE_BASKET"."DISCHARGE_TIME" IS 'basket discharge time';
   COMMENT ON COLUMN "PE_BASKET"."BASKET_SEQ_NO" IS 'basket sequence number within heat';
   COMMENT ON COLUMN "PE_BASKET"."VERIFIED" IS 'Flag verified by OP 0=NO, 1=YES';
   COMMENT ON COLUMN "PE_BASKET"."VER_COMMENT" IS 'Verification comment';
