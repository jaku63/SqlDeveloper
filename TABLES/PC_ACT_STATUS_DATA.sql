--------------------------------------------------------
--  DDL for Table PC_ACT_STATUS_DATA
--------------------------------------------------------

  CREATE TABLE "PC_ACT_STATUS_DATA" 
   (	"ID" NUMBER, 
	"STRAND_NO" NUMBER, 
	"STATUS_COMPONENT" VARCHAR2(40 BYTE), 
	"ACT_STATUS" NUMBER(8,4), 
	"CREATED" DATE, 
	"MODIFIED" DATE, 
	"MOP" VARCHAR2(120 BYTE)
   ) ;

   COMMENT ON COLUMN "PC_ACT_STATUS_DATA"."STRAND_NO" IS 'Strand no, 0 if not strand related';
   COMMENT ON COLUMN "PC_ACT_STATUS_DATA"."STATUS_COMPONENT" IS 'Name of monitored component';
   COMMENT ON COLUMN "PC_ACT_STATUS_DATA"."ACT_STATUS" IS 'Actual status';
