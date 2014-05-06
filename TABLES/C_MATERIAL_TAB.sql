--------------------------------------------------------
--  DDL for Table C_MATERIAL_TAB
--------------------------------------------------------

  CREATE TABLE "C_MATERIAL_TAB" 
   (	"ID" NUMBER, 
	"MAT_TAB_NAME" VARCHAR2(10 BYTE), 
	"DESCRIPTION" VARCHAR2(80 BYTE), 
	"CREATED" DATE, 
	"MODIFIED" DATE, 
	"MOP" VARCHAR2(120 BYTE)
   ) ;

   COMMENT ON COLUMN "C_MATERIAL_TAB"."MAT_TAB_NAME" IS 'list of permitted materials for each step, i.e. selection of alloys to be considered by the alloying mode';
