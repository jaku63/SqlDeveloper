--------------------------------------------------------
--  DDL for Table C_HMI_MENU
--------------------------------------------------------

  CREATE TABLE "C_HMI_MENU" 
   (	"ID" NUMBER, 
	"C_HMI_DIALOG_ID" NUMBER, 
	"C_HMI_MENU_ID_PARENT" NUMBER, 
	"MENU_ITEM_NAME" VARCHAR2(30 BYTE), 
	"PLANT_UNIT" VARCHAR2(5 BYTE), 
	"PLANT_UNIT_NO" NUMBER, 
	"CREATED" DATE, 
	"MODIFIED" DATE, 
	"MOP" VARCHAR2(120 BYTE), 
	"IMG_INDEX" NUMBER, 
	"ORDER_IN_TREE" NUMBER
   ) ;
