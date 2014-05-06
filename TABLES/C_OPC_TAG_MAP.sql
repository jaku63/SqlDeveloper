--------------------------------------------------------
--  DDL for Table C_OPC_TAG_MAP
--------------------------------------------------------

  CREATE TABLE "C_OPC_TAG_MAP" 
   (	"ID" NUMBER, 
	"OPC_TAG_L1" VARCHAR2(200 BYTE), 
	"OPC_TAG_SIM" VARCHAR2(200 BYTE), 
	"L2_TAG" VARCHAR2(200 BYTE), 
	"OPC_DATA_TYPE" VARCHAR2(20 BYTE), 
	"OPC_TAG_L1_ASSIGNED" NUMBER DEFAULT 0
   ) ;
