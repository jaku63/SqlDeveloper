--------------------------------------------------------
--  DDL for View VREP_FINAL_BLOOM
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "VREP_FINAL_BLOOM" ("HEAT_NO", "CASTER", "SIZEMM", "GRADE", "C", "Mn", "S", "P", "Si", "Cr", "Ni", "Mo", "Cu", "Ca", "Al", "V", "Ti", "Pb", "N", "O", "H", "SECTION_SIZE", "STEEL_GRADE", "REMARKS", "DATE_PRODUCED") AS 
  SELECT
  vc.HEAT_ID AS HEAT_NO,
  'BILLET' AS CASTER,
 vc.SECTION_SIZE AS SIZEMM,
  vc.STEEL_GRADE AS GRADE,
  "C",
    "Mn",
    "S",
    "P",
    "Si",
    "Cr",
    "Ni",
    "Mo",
    "Cu",
    "Ca",
    "Al",
    "V",
    "Ti",
    "Pb",
    N,
    "O",
    "H",
    "SECTION_SIZE",
    "STEEL_GRADE",
    vc.VER_COMMENT AS REMARKS,
     DATE_PRODUCED
  FROM VBH_HEAT_CONFIRMATION_MAN vc,
    VGH_LAB_ANA vl
  WHERE vc.S_HEAT_ID=vl.S_HEAT_ID
  AND -- vazba pres S_HEAT_ID
    SAMPLE_PLACE=
    (SELECT ID FROM C_PLANT_UNIT WHERE PLANT_UNIT_CODE='CCM_Billet'
    )
  AND -- podminka chceveme analyzu z casteru
    vl.TIME_ANNOUNCE=
    (SELECT MAX(TIME_ANNOUNCE)
    FROM VGH_LAB_ANA vlm
    WHERE vlm.S_HEAT_ID=vc.S_HEAT_ID
    );
