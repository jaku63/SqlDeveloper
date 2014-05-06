--------------------------------------------------------
--  DDL for Table PE_BLOW_REPORT
--------------------------------------------------------

  CREATE TABLE "PE_BLOW_REPORT" 
   (	"ID" NUMBER, 
	"C_EQUIP_ID" NUMBER, 
	"BLOWN_MATERIAL" VARCHAR2(20 BYTE), 
	"MAT_FLOW" NUMBER, 
	"MAT_AMOUNT" NUMBER(8,0), 
	"C_PLANT_UNIT_ID" NUMBER, 
	"S_HEAT_ID" NUMBER, 
	"CREATED" DATE, 
	"MODIFIED" DATE, 
	"MOP" VARCHAR2(120 BYTE)
   ) ;
