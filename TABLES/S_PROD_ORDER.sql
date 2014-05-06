--------------------------------------------------------
--  DDL for Table S_PROD_ORDER
--------------------------------------------------------

  CREATE TABLE "S_PROD_ORDER" 
   (	"ID" NUMBER, 
	"CREATE_DATE" DATE, 
	"REMARK" VARCHAR2(200 BYTE), 
	"PROD_ORDER_NO" VARCHAR2(20 BYTE), 
	"STEEL_GRADE" VARCHAR2(20 BYTE), 
	"ROUTE" VARCHAR2(3 BYTE), 
	"NUMBER_OF_HEATS" NUMBER, 
	"SALES_DATE" DATE, 
	"TARGET_CCM" NUMBER(1,0), 
	"TARGET_PIECE_LEN" NUMBER(6,3), 
	"TARGET_PIECE_WIDTH" NUMBER(4,0), 
	"TARGET_PIECE_THICK" NUMBER(4,0)
   ) ;

   COMMENT ON COLUMN "S_PROD_ORDER"."ID" IS 'sequence number ';
   COMMENT ON COLUMN "S_PROD_ORDER"."CREATE_DATE" IS 'Record creation ';
   COMMENT ON COLUMN "S_PROD_ORDER"."REMARK" IS 'String description ';
   COMMENT ON COLUMN "S_PROD_ORDER"."PROD_ORDER_NO" IS 'Production Order Number ';
   COMMENT ON COLUMN "S_PROD_ORDER"."STEEL_GRADE" IS 'Steel Grade ';
   COMMENT ON COLUMN "S_PROD_ORDER"."ROUTE" IS 'VD/NVD ';
   COMMENT ON COLUMN "S_PROD_ORDER"."NUMBER_OF_HEATS" IS 'Number of heats to be produced ';
   COMMENT ON COLUMN "S_PROD_ORDER"."SALES_DATE" IS 'Sales Order Date  ';
   COMMENT ON COLUMN "S_PROD_ORDER"."TARGET_CCM" IS '0=slab caster, 1=billet caster ';
   COMMENT ON COLUMN "S_PROD_ORDER"."TARGET_PIECE_LEN" IS 'Target piece length in meters ';
   COMMENT ON COLUMN "S_PROD_ORDER"."TARGET_PIECE_WIDTH" IS 'Target piece width in mm ';
   COMMENT ON COLUMN "S_PROD_ORDER"."TARGET_PIECE_THICK" IS 'Target piece thickness in mm ';
