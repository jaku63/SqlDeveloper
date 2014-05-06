--------------------------------------------------------
--  DDL for View VEH_PM_BASKET_DISCH
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "VEH_PM_BASKET_DISCH" ("C_EQUIPMENT_ID_BASKET", "BASKET_NO", "LAYER_SEQ_NO", "C_MATERIAL_ID", "MAT_CODE", "MAT_WEIGHT", "MAT_TEMPERATURE") AS 
  SELECT
  pb.C_EQUIPMENT_ID_BASKET,
 (SELECT EQUIPMENT_NAME FROM C_EQUIPMENT c WHERE c.ID=pb.C_EQUIPMENT_ID_BASKET) BASKET_NO,
  "LAYER_SEQ_NO" ,
	"C_MATERIAL_ID" ,
	(SELECT MAT_CODE FROM C_MATERIAL M WHERE M.ID=C_MATERIAL_ID) MAT_CODE,
  "MAT_WEIGHT" ,
	"MAT_TEMPERATURE"
FROM (SELECT * FROM PE_BASKET pe,PE_BASKET_DET ped WHERE pe.ID=ped.PE_BASKET_ID) pb
WHERE pb.S_HEAT_ID is null;
