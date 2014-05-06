--------------------------------------------------------
--  DDL for Table ME_BASKET
--------------------------------------------------------

  CREATE TABLE "ME_BASKET" 
   (	"ID" NUMBER, 
	"S_HEAT_ID" NUMBER, 
	"BASKET_SEQ_NO" NUMBER, 
	"CREATED" DATE, 
	"MODIFIED" DATE, 
	"MOP" VARCHAR2(120 BYTE)
   ) ;

   COMMENT ON COLUMN "ME_BASKET"."S_HEAT_ID" IS 'Reference to S_HEAT table';
   COMMENT ON COLUMN "ME_BASKET"."BASKET_SEQ_NO" IS 'basket sequence number';
