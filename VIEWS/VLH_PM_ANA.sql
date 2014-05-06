--------------------------------------------------------
--  DDL for View VLH_PM_ANA
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "VLH_PM_ANA" ("PLANT_UNIT_NO", "ELE_SYMBOL", "HMI_ORDER", "LAST_ANALYSIS", "MIN_GRADE", "MAX_GRADE", "AIM_GRADE", "MODEL_ANA") AS 
  SELECT
  1 as PLANT_UNIT_NO,
  ELE_SYMBOL,
  HMI_ORDER,
  (SELECT ELE_AMOUNT FROM P_LAB_ANA ANA WHERE ANA.C_ELEMENT_ID=CEL.ID AND ANA.P_LAB_ID=(SELECT max(ID) FROM P_LAB WHERE S_HEAT_ID = (SELECT S_HEAT_ID FROM VLH_PM_MAIN where PLANT_UNIT_NO=1  AND S_HEAT_ID is not null) )) LAST_ANALYSIS,
  (SELECT ELE_LF_MIN*100 FROM C_STEEL_GRADE_ANA ANA WHERE ANA.C_ELEMENT_ID=CEL.ID AND ANA.C_STEEL_GRADE_ID=(SELECT C_STEEL_GRADE_ID FROM VLH_PM_MAIN where PLANT_UNIT_NO=1 AND C_STEEL_GRADE_ID is not null)) MIN_GRADE,
  (SELECT ELE_LF_MAX*100 FROM C_STEEL_GRADE_ANA ANA WHERE ANA.C_ELEMENT_ID=CEL.ID AND ANA.C_STEEL_GRADE_ID=(SELECT C_STEEL_GRADE_ID FROM VLH_PM_MAIN where PLANT_UNIT_NO=1 AND C_STEEL_GRADE_ID is not null)) MAX_GRADE,
  (SELECT ELE_LF_AIM*100 FROM C_STEEL_GRADE_ANA ANA WHERE ANA.C_ELEMENT_ID=CEL.ID AND ANA.C_STEEL_GRADE_ID=(SELECT C_STEEL_GRADE_ID FROM VLH_PM_MAIN where PLANT_UNIT_NO=1 AND C_STEEL_GRADE_ID is not null)) AIM_GRADE,
  (SELECT ELE_AMOUNT*100.00 FROM ML_HEAT_ANA ANA WHERE ANA.C_ELEMENT_ID=CEL.ID AND ANA.ML_HEAT_ID=(SELECT ID FROM ML_HEAT WHERE PL_HEAT_ID = (SELECT ID FROM PL_HEAT pl WHERE C_HEAT_STATUS_ID=GET_HEAT_STATUS_ID(30) AND pl.c_plant_unit_id=5) )) MODEL_ANA
from C_ELEMENT CEL, C_HMI_ELEMENT ch
  where cel.id = ch.c_element_id
UNION
 SELECT
  2 as PLANT_UNIT_NO,
  ELE_SYMBOL,
  HMI_ORDER,
  (SELECT ELE_AMOUNT FROM P_LAB_ANA ANA WHERE ANA.C_ELEMENT_ID=CEL.ID AND ANA.P_LAB_ID=(SELECT max(ID) FROM P_LAB WHERE S_HEAT_ID = (SELECT S_HEAT_ID FROM VLH_PM_MAIN where PLANT_UNIT_NO=2  AND S_HEAT_ID is not null) )) LAST_ANALYSIS,
  (SELECT ELE_LF_MIN*100 FROM C_STEEL_GRADE_ANA ANA WHERE ANA.C_ELEMENT_ID=CEL.ID AND ANA.C_STEEL_GRADE_ID= (SELECT C_STEEL_GRADE_ID FROM VLH_PM_MAIN where PLANT_UNIT_NO=2 AND C_STEEL_GRADE_ID is not null) ) MIN_GRADE,
  (SELECT ELE_LF_MAX*100 FROM C_STEEL_GRADE_ANA ANA WHERE ANA.C_ELEMENT_ID=CEL.ID AND ANA.C_STEEL_GRADE_ID= (SELECT C_STEEL_GRADE_ID FROM VLH_PM_MAIN where PLANT_UNIT_NO=2 AND C_STEEL_GRADE_ID is not null) ) MAX_GRADE,
  (SELECT ELE_LF_AIM*100 FROM C_STEEL_GRADE_ANA ANA WHERE ANA.C_ELEMENT_ID=CEL.ID AND ANA.C_STEEL_GRADE_ID= (SELECT C_STEEL_GRADE_ID FROM VLH_PM_MAIN where PLANT_UNIT_NO=2 AND C_STEEL_GRADE_ID is not null) ) AIM_GRADE,
  (SELECT ELE_AMOUNT*100 FROM ML_HEAT_ANA ANA WHERE ANA.C_ELEMENT_ID=CEL.ID AND ANA.ML_HEAT_ID=(SELECT ID FROM ML_HEAT WHERE PL_HEAT_ID = (SELECT ID FROM PL_HEAT pl WHERE C_HEAT_STATUS_ID=GET_HEAT_STATUS_ID(30) AND pl.c_plant_unit_id=6) )) MODEL_ANA
from C_ELEMENT CEL, C_HMI_ELEMENT ch
  where cel.id = ch.c_element_id
UNION
 SELECT
  3 as PLANT_UNIT_NO,
  ELE_SYMBOL,
  HMI_ORDER,
  (SELECT ELE_AMOUNT FROM P_LAB_ANA ANA WHERE ANA.C_ELEMENT_ID=CEL.ID AND ANA.P_LAB_ID=(SELECT max(ID) FROM P_LAB WHERE S_HEAT_ID = (SELECT S_HEAT_ID FROM VLH_PM_MAIN where PLANT_UNIT_NO=3  AND S_HEAT_ID is not null) )) LAST_ANALYSIS,
  (SELECT ELE_LF_MIN*100 FROM C_STEEL_GRADE_ANA ANA WHERE ANA.C_ELEMENT_ID=CEL.ID AND ANA.C_STEEL_GRADE_ID= (SELECT C_STEEL_GRADE_ID FROM VLH_PM_MAIN where PLANT_UNIT_NO=3 AND C_STEEL_GRADE_ID is not null) ) MIN_GRADE,
  (SELECT ELE_LF_MAX*100 FROM C_STEEL_GRADE_ANA ANA WHERE ANA.C_ELEMENT_ID=CEL.ID AND ANA.C_STEEL_GRADE_ID= (SELECT C_STEEL_GRADE_ID FROM VLH_PM_MAIN where PLANT_UNIT_NO=3 AND C_STEEL_GRADE_ID is not null) ) MAX_GRADE,
  (SELECT ELE_LF_AIM*100 FROM C_STEEL_GRADE_ANA ANA WHERE ANA.C_ELEMENT_ID=CEL.ID AND ANA.C_STEEL_GRADE_ID= (SELECT C_STEEL_GRADE_ID FROM VLH_PM_MAIN where PLANT_UNIT_NO=3 AND C_STEEL_GRADE_ID is not null) ) AIM_GRADE,
  (SELECT ELE_AMOUNT*100 FROM ML_HEAT_ANA ANA WHERE ANA.C_ELEMENT_ID=CEL.ID AND ANA.ML_HEAT_ID=(SELECT ID FROM ML_HEAT WHERE PL_HEAT_ID = (SELECT ID FROM PL_HEAT pl WHERE C_HEAT_STATUS_ID=GET_HEAT_STATUS_ID(30) AND pl.c_plant_unit_id=7) )) MODEL_ANA
from C_ELEMENT CEL, C_HMI_ELEMENT ch
  where cel.id = ch.c_element_id
UNION
SELECT
  4 as PLANT_UNIT_NO,
  ELE_SYMBOL,
  HMI_ORDER,
  (SELECT ELE_AMOUNT FROM P_LAB_ANA ANA WHERE ANA.C_ELEMENT_ID=CEL.ID AND ANA.P_LAB_ID=(SELECT max(ID) FROM P_LAB WHERE S_HEAT_ID = (SELECT S_HEAT_ID FROM VLH_PM_MAIN where PLANT_UNIT_NO=4  AND S_HEAT_ID is not null) )) LAST_ANALYSIS,
  (SELECT ELE_LF_MIN*100 FROM C_STEEL_GRADE_ANA ANA WHERE ANA.C_ELEMENT_ID=CEL.ID AND ANA.C_STEEL_GRADE_ID= (SELECT C_STEEL_GRADE_ID FROM VLH_PM_MAIN where PLANT_UNIT_NO=4 AND C_STEEL_GRADE_ID is not null) ) MIN_GRADE,
  (SELECT ELE_LF_MAX*100 FROM C_STEEL_GRADE_ANA ANA WHERE ANA.C_ELEMENT_ID=CEL.ID AND ANA.C_STEEL_GRADE_ID= (SELECT C_STEEL_GRADE_ID FROM VLH_PM_MAIN where PLANT_UNIT_NO=4 AND C_STEEL_GRADE_ID is not null) ) MAX_GRADE,
  (SELECT ELE_LF_AIM*100 FROM C_STEEL_GRADE_ANA ANA WHERE ANA.C_ELEMENT_ID=CEL.ID AND ANA.C_STEEL_GRADE_ID= (SELECT C_STEEL_GRADE_ID FROM VLH_PM_MAIN where PLANT_UNIT_NO=4 AND C_STEEL_GRADE_ID is not null) ) AIM_GRADE,
  (SELECT ELE_AMOUNT*100 FROM ML_HEAT_ANA ANA WHERE ANA.C_ELEMENT_ID=CEL.ID AND ANA.ML_HEAT_ID=(SELECT ID FROM ML_HEAT WHERE PL_HEAT_ID = (SELECT ID FROM PL_HEAT pl WHERE C_HEAT_STATUS_ID=GET_HEAT_STATUS_ID(30) AND pl.c_plant_unit_id=8) )) MODEL_ANA
from C_ELEMENT CEL, C_HMI_ELEMENT ch
  where cel.id = ch.c_element_id;
