--------------------------------------------------------
--  DDL for Table CC_PIECE_TYPE
--------------------------------------------------------

  CREATE TABLE "CC_PIECE_TYPE" 
   (	"ID" NUMBER, 
	"DESCRIPTION" VARCHAR2(40 BYTE), 
	"CREATED" DATE, 
	"MODIFIED" DATE, 
	"MOP" VARCHAR2(120 BYTE)
   ) ;

   COMMENT ON COLUMN "CC_PIECE_TYPE"."DESCRIPTION" IS 'Description of the zone';
