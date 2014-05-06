--------------------------------------------------------
--  DDL for Procedure SEND_EAF_PDO
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "SEND_EAF_PDO" (p_s_heat_id NUMBER)
as
BEGIN DECLARE mTIME_ANALYSE VGH_LAB_ANA.TIME_ANALYSE%TYPE;
  BEGIN

     dbms_output.put_line('PROCEDURE "SEND_EAF_PDO" started');
    SELECT MAX(VGH_LAB_ANA.TIME_ANALYSE)
    INTO mTIME_ANALYSE
    FROM VGH_LAB_ANA
    WHERE VGH_LAB_ANA.S_HEAT_ID = p_s_heat_id
    AND VGH_LAB_ANA.SAMPLE_PLACE = (SELECT C_PLANT_UNIT_ID FROM PE_HEAT WHERE S_HEAT_ID=p_s_heat_id); -- just analysis from EAF


    --INSERT INTO SMS2SAP_EAF_PDO@gateway (
    INSERT
    INTO l2ms_sap.SMS2SAP_EAF_PDO
      (
        Processed,Processed_time,Row_state,Last_mod,Remark,HEAT_ID,EAF_NO,OPERATOR_CONFIRMED,CONFIRM_TIME,PROD_ORDER_NO,STEEL_GRADE,PRODUCED_DATE
        ,
        LADLE_NO,FIRST_POWER_ON_DATE,POWER_ON_TIME,TAPPING_END,HEAT_DURATION,TAPPING_WEIGHT,TAPPING_TEMPERATURE,
        SHIFT,OPERATOR_ID,SCRAP_BUCKET_NO,FIRST_SCRAP_BUCKET_NO,
        SHREDED,BUNDLE,INTERNAL_RETURN,SKULL,PIG_IRON,DRI_LUMP,DRI_FINES,HOT_METAL,DRI_LUMPS_FEED,DOLOLIME,LIME,OXYGEN,NITROGEN,
        MIX_GAS_LPG,COKE,NO_OF_SAMPLER_TIPS_USED,NO_OF_TEMPERATURE_TIPS_USED,NO_OF_CELOX_TIPS_USED,EBT_FILLING_MASS,AL_BAR,FE_MGN_HI_CARBON,ADDITION_LIME,
        FE_ALLOYS,ENERGY_CONSUMPTION,ANA_AL,ANA_AL_I,ANA_AL_S,ANA_AS,ANA_B,ANA_BI,ANA_C,ANA_CA,ANA_CE,ANA_CO,ANA_CR,ANA_CU,
        ANA_H,ANA_MG,ANA_MN,ANA_MO,ANA_N,ANA_NB,ANA_NI,ANA_O,ANA_P,ANA_PB,ANA_S,ANA_SB,ANA_SI,ANA_SN,ANA_TI,
        ANA_V,ANA_W,ANA_ZR
      )
    SELECT 0,
      NULL,
      0,
      0,
      v_man.ver_comment,
      v_man.heat_id,
      v_man.plant_unit_no,
      1,--Mean YES,
      sysdate, --DECODE(PE_HEAT.created,NULL,PE_HEAT.created,PE_HEAT.modified),
      (SELECT PROD_ORDER_NO
      FROM S_PROD_ORDER
      WHERE ID =
        (SELECT ORDER_ID FROM S_HEAT WHERE ID = PE_HEAT.S_HEAT_ID
        )
      ),
      v_man.steel_grade,
      sysdate,--v_man.tap_time,
      (SELECT EQUIPMENT_NO FROM C_EQUIPMENT WHERE ID = PE_HEAT.C_EQUIPMENT_ID_LADLE),
      sysdate, --v_man.power_on_time, -- in view it is first power on time (start + T1_time)
      PE_HEAT.power_on_time * 60, -- in table it is number of minutes when power was on.. In SAP they want to have seconds..
       sysdate, --PE_HEAT.tap_end,
      round((PE_HEAT."END_TIME" - PE_HEAT."START_TIME")*24*60), -- minutes
      round(v_man.liquid_metal_tap/1000,2),
      PE_HEAT.TAP_TEMPERATURE,
      v_man.shift,
      v_man.operator_name,
      v_man.NUM_OF_BASKETS, -- basket count
      (SELECT EQUIPMENT_NO FROM C_EQUIPMENT WHERE ID = (SELECT distinct FIRST_VALUE(C_EQUIPMENT_ID_BASKET) OVER (ORDER BY DISCHARGE_TIME ASC ) FROM PE_BASKET PE_B WHERE PE_B.S_HEAT_ID=v_man.S_HEAT_ID)), -- first basket no
      decode(v_man.SHREDED_B1,null,0, v_man.SHREDED_B1) + decode(v_man.SHREDED_B2,null,0, v_man.SHREDED_B2),
      decode(v_man.BUNDLE_B1,null,0, v_man.BUNDLE_B1) + decode(v_man.BUNDLE_B2,null,0, v_man.BUNDLE_B2),
      decode(v_man.INT_RET_B1,null,0, v_man.INT_RET_B1) + decode(v_man.INT_RET_B2,null,0, v_man.INT_RET_B2),
      decode(v_man.SKULL_B1,null,0, v_man.SKULL_B1) + decode(v_man.SKULL_B2,null,0, v_man.SKULL_B2),
      decode(v_man.PIG_IRON_B1,null,0, v_man.PIG_IRON_B1) + decode(v_man.PIG_IRON_B2,null,0, v_man.PIG_IRON_B2),
      decode(v_man.DRI_LUMP_B1,null,0, v_man.DRI_LUMP_B1) + decode(v_man.DRI_LUMP_B2,null,0, v_man.DRI_LUMP_B2),
      decode(v_man.DRI_FINES_B1,null,0, v_man.DRI_FINES_B1) + decode(v_man.DRI_FINES_B2,null,0, v_man.DRI_FINES_B2),
      v_man.HOT_METAL,
      v_man.RETURN_LM,
      PE_HEAT.DOLO_WEIGHT,
      PE_HEAT.LIME_WEIGHT,
      PE_HEAT.OXYGEN_CONS,
      PE_HEAT.NITROGEN_CONS,
      PE_HEAT.MIX_GAS_CONS,
      PE_HEAT.COKE_CONS,
      v_man.SAMPLER,
      v_man.TEMP_TIPS,
      v_man.TEMP_TIPS,
      v_man.EBT_FILLING_MASS,
      v_man.AL_BAR,
      v_man.FE_MGN_HI_CARBON,
      v_man.B_LIME_FEED,
      v_man.FE_ALLOYS,
      v_man.ENERGY_TOTAL,
      "Al",
      NULL,
      NULL ,
      "As",
      "B",
      "Bi",
      "C",
      "Ca",
      "Ce",
      "Co",
      "Cr",
      "Cu",
      "H",
      "Mg",
      "Mn",
      "Mo",
      "N",
      "Nb",
      "Ni",
      "O",
      "P",
      "Pb",
      "S",
      "Sb",
      "Si",
      "Sn",
      "Ti",
      "V",
      "W",
      "Zr"
    FROM VGH_LAB_ANA, PE_HEAT, VEH_HEAT_CONFIRMATION_MAN V_MAN
    WHERE PE_HEAT.S_HEAT_ID          = VGH_LAB_ANA.S_HEAT_ID (+)
    AND PE_HEAT.S_HEAT_ID          = V_MAN.S_HEAT_ID
    AND PE_HEAT.C_PLANT_UNIT_ID = VGH_LAB_ANA.SAMPLE_PLACE (+)
    AND mTIME_ANALYSE        = VGH_LAB_ANA.TIME_ANALYSE (+)
    AND PE_HEAT.S_HEAT_ID            = p_s_heat_id;
  EXCEPTION
  WHEN OTHERS THEN
    NULL;
    dbms_output.put_line((SUBSTR(SQLERRM(SQLCODE),1,200)));
    add_fail_log('UI_PE_HEAT_VERIFIED', (SUBSTR(SQLERRM(SQLCODE),1,200)));
    --good := 0;
  END;
END;

/
