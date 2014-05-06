--------------------------------------------------------
--  DDL for Table PE_RECORD
--------------------------------------------------------

  CREATE TABLE "PE_RECORD" 
   (	"ID" NUMBER, 
	"S_HEAT_ID" NUMBER, 
	"GROUP_NAME" VARCHAR2(30 BYTE), 
	"RECORD_TIME" DATE DEFAULT CURRENT_TIMESTAMP, 
	"DATA_INDX0" NUMBER(20,10), 
	"DATA_INDX1" NUMBER(20,10), 
	"DATA_INDX2" NUMBER(20,10), 
	"DATA_INDX3" NUMBER(20,10), 
	"DATA_INDX4" NUMBER(20,10), 
	"DATA_INDX5" NUMBER(20,10), 
	"DATA_INDX6" NUMBER(20,10), 
	"DATA_INDX7" NUMBER(20,10), 
	"DATA_INDX8" NUMBER(20,10), 
	"DATA_INDX9" NUMBER(20,10), 
	"DATA_INDX10" NUMBER(20,10), 
	"DATA_INDX11" NUMBER(20,10), 
	"DATA_INDX12" NUMBER(20,10), 
	"DATA_INDX13" NUMBER(20,10), 
	"DATA_INDX14" NUMBER(20,10), 
	"DATA_INDX15" NUMBER(20,10), 
	"DATA_INDX16" NUMBER(20,10), 
	"DATA_INDX17" NUMBER(20,10), 
	"DATA_INDX18" NUMBER(20,10), 
	"DATA_INDX19" NUMBER(20,10), 
	"DATA_INDX20" NUMBER(20,10), 
	"DATA_INDX21" NUMBER(20,10), 
	"DATA_INDX22" NUMBER(20,10), 
	"DATA_INDX23" NUMBER(20,10), 
	"DATA_INDX24" NUMBER(20,10), 
	"DATA_INDX25" NUMBER(20,10), 
	"DATA_INDX26" NUMBER(20,10), 
	"DATA_INDX27" NUMBER(20,10), 
	"DATA_INDX28" NUMBER(20,10), 
	"DATA_INDX29" NUMBER(20,10), 
	"DATA_INDX30" NUMBER(20,10), 
	"DATA_INDX31" NUMBER(20,10), 
	"DATA_INDX32" NUMBER(20,10), 
	"DATA_INDX33" NUMBER(20,10), 
	"DATA_INDX34" NUMBER(20,10), 
	"DATA_INDX35" NUMBER(20,10), 
	"DATA_INDX36" NUMBER(20,10), 
	"DATA_INDX37" NUMBER(20,10), 
	"DATA_INDX38" NUMBER(20,10), 
	"DATA_INDX39" NUMBER(20,10), 
	"CREATED" DATE, 
	"MODIFIED" DATE, 
	"MOP" VARCHAR2(120 BYTE)
   ) ;

   COMMENT ON COLUMN "PE_RECORD"."S_HEAT_ID" IS 'heat identification';
   COMMENT ON COLUMN "PE_RECORD"."GROUP_NAME" IS 'message group identification';
   COMMENT ON COLUMN "PE_RECORD"."DATA_INDX0" IS 'message data array';
   COMMENT ON COLUMN "PE_RECORD"."DATA_INDX1" IS 'message data array';
   COMMENT ON COLUMN "PE_RECORD"."DATA_INDX2" IS 'message data array';
   COMMENT ON COLUMN "PE_RECORD"."DATA_INDX3" IS 'message data array';
   COMMENT ON COLUMN "PE_RECORD"."DATA_INDX4" IS 'message data array';
   COMMENT ON COLUMN "PE_RECORD"."DATA_INDX5" IS 'message data array';
   COMMENT ON COLUMN "PE_RECORD"."DATA_INDX6" IS 'message data array';
   COMMENT ON COLUMN "PE_RECORD"."DATA_INDX7" IS 'message data array';
   COMMENT ON COLUMN "PE_RECORD"."DATA_INDX8" IS 'message data array';
   COMMENT ON COLUMN "PE_RECORD"."DATA_INDX9" IS 'message data array';
   COMMENT ON COLUMN "PE_RECORD"."DATA_INDX10" IS 'message data array';
   COMMENT ON COLUMN "PE_RECORD"."DATA_INDX11" IS 'message data array';
   COMMENT ON COLUMN "PE_RECORD"."DATA_INDX12" IS 'message data array';
   COMMENT ON COLUMN "PE_RECORD"."DATA_INDX13" IS 'message data array';
   COMMENT ON COLUMN "PE_RECORD"."DATA_INDX14" IS 'message data array';
   COMMENT ON COLUMN "PE_RECORD"."DATA_INDX15" IS 'message data array';
   COMMENT ON COLUMN "PE_RECORD"."DATA_INDX16" IS 'message data array';
   COMMENT ON COLUMN "PE_RECORD"."DATA_INDX17" IS 'message data array';
   COMMENT ON COLUMN "PE_RECORD"."DATA_INDX18" IS 'message data array';
   COMMENT ON COLUMN "PE_RECORD"."DATA_INDX19" IS 'message data array';
   COMMENT ON COLUMN "PE_RECORD"."DATA_INDX20" IS 'message data array';
   COMMENT ON COLUMN "PE_RECORD"."DATA_INDX21" IS 'message data array';
   COMMENT ON COLUMN "PE_RECORD"."DATA_INDX22" IS 'message data array';
   COMMENT ON COLUMN "PE_RECORD"."DATA_INDX23" IS 'message data array';
   COMMENT ON COLUMN "PE_RECORD"."DATA_INDX24" IS 'message data array';
   COMMENT ON COLUMN "PE_RECORD"."DATA_INDX25" IS 'message data array';
   COMMENT ON COLUMN "PE_RECORD"."DATA_INDX26" IS 'message data array';
   COMMENT ON COLUMN "PE_RECORD"."DATA_INDX27" IS 'message data array';
   COMMENT ON COLUMN "PE_RECORD"."DATA_INDX28" IS 'message data array';
   COMMENT ON COLUMN "PE_RECORD"."DATA_INDX29" IS 'message data array';
   COMMENT ON COLUMN "PE_RECORD"."DATA_INDX30" IS 'message data array';
   COMMENT ON COLUMN "PE_RECORD"."DATA_INDX31" IS 'message data array';
   COMMENT ON COLUMN "PE_RECORD"."DATA_INDX32" IS 'message data array';
   COMMENT ON COLUMN "PE_RECORD"."DATA_INDX33" IS 'message data array';
   COMMENT ON COLUMN "PE_RECORD"."DATA_INDX34" IS 'message data array';
   COMMENT ON COLUMN "PE_RECORD"."DATA_INDX35" IS 'message data array';
   COMMENT ON COLUMN "PE_RECORD"."DATA_INDX36" IS 'message data array';
   COMMENT ON COLUMN "PE_RECORD"."DATA_INDX37" IS 'message data array';
   COMMENT ON COLUMN "PE_RECORD"."DATA_INDX38" IS 'message data array';
   COMMENT ON COLUMN "PE_RECORD"."DATA_INDX39" IS 'message data array';
