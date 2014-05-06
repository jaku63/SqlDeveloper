--------------------------------------------------------
--  DDL for Table P_LAB_MAT
--------------------------------------------------------

  CREATE TABLE "P_LAB_MAT" 
   (	"ID" NUMBER, 
	"C_MATERIAL_ID" NUMBER, 
	"SAMPLE_ID" VARCHAR2(20 BYTE), 
	"SAMPLE_TIME" DATE, 
	"CREATED" DATE, 
	"MODIFIED" DATE, 
	"MOP" VARCHAR2(120 BYTE), 
	"SUPPLIER_NAME" VARCHAR2(64 BYTE), 
	"DESCRIPTION" VARCHAR2(128 BYTE), 
	"REMARK" VARCHAR2(128 BYTE), 
	"SIZE_GM_MT" NUMBER, 
	"TRUCK_NO" VARCHAR2(64 BYTE)
   ) ;
