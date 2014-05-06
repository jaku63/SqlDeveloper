--------------------------------------------------------
--  DDL for Procedure SEND_LF_PDO
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "SEND_LF_PDO" (p_s_heat_id NUMBER)
as
BEGIN DECLARE mTIME_ANALYSE VGH_LAB_ANA.TIME_ANALYSE%TYPE;
  BEGIN

    dbms_output.put_line('PROCEDURE "SEND_LF_PDO" started');
    SELECT MAX(VGH_LAB_ANA.TIME_ANALYSE)
    INTO mTIME_ANALYSE
    FROM VGH_LAB_ANA
    WHERE VGH_LAB_ANA.S_HEAT_ID = p_s_heat_id
    AND VGH_LAB_ANA.SAMPLE_PLACE in (SELECT C_PLANT_UNIT_ID FROM PL_HEAT WHERE S_HEAT_ID=p_s_heat_id); -- just analysis from LF


    --INSERT INTO SMS2SAP_LF_PDO@gateway (
    INSERT
        INTO l2ms_sap.SMS2SAP_LF_PDO ( PROCESSED,PROCESSED_TIME,
        ROW_STATE,LAST_MOD,
        REMARK,
        PRODUCTION_ORDER,HEAT_ID,OPERATOR_CONFIRMED,CONFIRM_TIME,LRF_NO,LRF_START_DATE,LRF_FINISH_DATE,
    HEAT_DURATION,SHIFT,OPERATOR_ID,LADLE_NO,WEIGHT,LADLE_LIFE,PLUG_LIFE,TOTAL_LIQUID_METAL_WEIGHT,ROUTE,LIME,SYNTHETIC_SLAG,ALUMINIUM,SIMN,
    FEMNHC,FESI,FESI_FINE,FEMNLC,FEMNMC,FECRLC,MN_METAL,FEMO,FEV,FENB,FETI,NICKEL,AL_WIRE,FEB,CPC,RADEX,NO_OF_SAMPLER_TIPS_USED,
    NO_OF_TEMPERATURE_TIPS_USED,NO_OF_CELOX_TIPS_USED,LIFTING_TEMP,ANA_AL,ANA_AL_I,ANA_AL_S,
    ANA_AS, ANA_B, ANA_BI, ANA_C, ANA_CA, ANA_CE, ANA_CO, ANA_CR, ANA_CU, ANA_H, ANA_MG, ANA_MN, ANA_MO, ANA_N,
    ANA_NB, ANA_NI, ANA_O, ANA_P, ANA_PB,
    ANA_S, ANA_SB, ANA_SI, ANA_SN, ANA_TI, ANA_V, ANA_W, ANA_ZR
    )
        select
      0, --Processed
      NULL, --Processed_time
      0, --Row_state
      0, --Last_mod
      v_man.ver_comment, --Remark
      -1, -- PRODUCTION_ORDER
      V_MAN.HEAT_ID,-- HEAT_ID
      1, --Mean YES,OPERATOR_CONFIRMED
      sysdate, -- CONFIRM_TIME
      v_man.plant_unit_no, -- LRF_NO
      sysdate, --v_man.start_time,
      sysdate, --v_man.end_time,
      0,--round((PL_HEAT."END_TIME" - PL_HEAT."START_TIME")*24*60), -- HEAT_DURATION
      v_man.shift, -- SHIFT
      v_man.operator_name, -- OPERATOR_ID
      v_man.ladle_id, -- LADLE_NO
      v_man.steel_weight/1000, -- WEIGHT
      v_man.ladle_life, -- LADLE_LIFE
      v_man.plug_life, -- PLUG_LIFE
      v_man.liquid_metal/1000, -- TOTAL_LIQUID_METAL_WEIGHT   STEEL_WEIGHT?????????????
      v_man.vd_route, -- ROUTE
      (SELECT SUM(LIME) FROM pl_heat_rep_activity WHERE S_HEAT_ID=p_s_heat_id), -- LIME
      (SELECT SUM(syn_slag) FROM pl_heat_rep_activity WHERE S_HEAT_ID=p_s_heat_id), -- SYNTHETIC_SLAG
      (SELECT SUM(al) FROM pl_heat_rep_activity WHERE S_HEAT_ID=p_s_heat_id), -- ALUMINIUM
      (SELECT SUM(SLMN) FROM pl_heat_rep_activity WHERE S_HEAT_ID=p_s_heat_id), -- SIMN
      (SELECT SUM(femnhc) FROM pl_heat_rep_activity WHERE S_HEAT_ID=p_s_heat_id), -- FEMNHC
      (SELECT SUM(FESI) FROM pl_heat_rep_activity WHERE S_HEAT_ID=p_s_heat_id), -- FESI
      (SELECT SUM(FESIFINE) FROM pl_heat_rep_activity WHERE S_HEAT_ID=p_s_heat_id), -- FESI_FINE
      (SELECT SUM(FEMNLC) FROM pl_heat_rep_activity WHERE S_HEAT_ID=p_s_heat_id), -- FEMNLC
      (SELECT SUM(FEMNMC) FROM pl_heat_rep_activity WHERE S_HEAT_ID=p_s_heat_id), -- FEMNMC
      (SELECT SUM(FECRLC) FROM pl_heat_rep_activity WHERE S_HEAT_ID=p_s_heat_id), -- FECRLC
      (SELECT SUM(MNMETAL) FROM pl_heat_rep_activity WHERE S_HEAT_ID=p_s_heat_id), -- MN_METAL
      (SELECT SUM(FEMO) FROM pl_heat_rep_activity WHERE S_HEAT_ID=p_s_heat_id), -- FEMO
      (SELECT SUM(FEV) FROM pl_heat_rep_activity WHERE S_HEAT_ID=p_s_heat_id), -- FEV
      (SELECT SUM(FENB) FROM pl_heat_rep_activity WHERE S_HEAT_ID=p_s_heat_id), -- FENB
      (SELECT SUM(FETI) FROM pl_heat_rep_activity WHERE S_HEAT_ID=p_s_heat_id), -- FETI
      (SELECT SUM(NICKEL) FROM pl_heat_rep_activity WHERE S_HEAT_ID=p_s_heat_id), -- NICKEL
      (SELECT SUM(ALWIRE) FROM pl_heat_rep_activity WHERE S_HEAT_ID=p_s_heat_id), -- AL_WIRE
      (SELECT SUM(FEB) FROM pl_heat_rep_activity WHERE S_HEAT_ID=p_s_heat_id), -- FEB
      (SELECT SUM(CPC) FROM pl_heat_rep_activity WHERE S_HEAT_ID=p_s_heat_id), -- CPC
      (SELECT SUM(RADEX) FROM pl_heat_rep_activity WHERE S_HEAT_ID=p_s_heat_id), -- RADEX
      v_man.sampler, -- NO_OF_SAMPLER_TIPS_USED
      v_man.temp_tips, -- NO_OF_TEMPERATURE_TIPS_USED
      v_man.temp_tips, -- NO_OF_CELOX_TIPS_USED
      V_MAN.LIFTING_TEMP, -- LIFTING_TEMP
      "Al",
      NULL, --?????? ANA_AL_I
      NULL, --?????? ANA_AL_S
      "As", "B", "Bi", "C", "Ca", "Ce", "Co", "Cr", "Cu", "H", "Mg", "Mn", "Mo", "N", "Nb", "Ni", "O", "P", "Pb",
      "S", "Sb", "Si", "Sn", "Ti", "V", "W", "Zr"
        FROM PL_HEAT, VLH_HEAT_CONFIRMATION_MAN V_MAN, VGH_LAB_ANA
    WHERE PL_HEAT.S_HEAT_ID    = VGH_LAB_ANA.S_HEAT_ID (+)
    AND PL_HEAT.S_HEAT_ID    = V_MAN.S_HEAT_ID
    AND PL_HEAT.C_PLANT_UNIT_ID = VGH_LAB_ANA.SAMPLE_PLACE (+)
    AND mTIME_ANALYSE  = VGH_LAB_ANA.TIME_ANALYSE (+)
    AND PL_HEAT.S_HEAT_ID= p_s_heat_id;

  EXCEPTION
  WHEN OTHERS THEN
    NULL;
    dbms_output.put_line((SUBSTR(SQLERRM(SQLCODE),1,200)));
    add_fail_log('SEND_LF_PDO', (SUBSTR(SQLERRM(SQLCODE),1,200)));
    --good := 0;
  END;
END;

/
