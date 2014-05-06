--------------------------------------------------------
--  DDL for Table P_EQUIPMENT_TREE
--------------------------------------------------------

  CREATE TABLE "P_EQUIPMENT_TREE" 
   (	"ID" NUMBER, 
	"C_EQUIPMENT_ID" NUMBER, 
	"C_EQUIPMENT_ID_PARENT" NUMBER, 
	"ORDER_IN_LEVEL" NUMBER, 
	"CREATED" DATE, 
	"MODIFIED" DATE, 
	"MOP" VARCHAR2(120 BYTE)
   ) ;
