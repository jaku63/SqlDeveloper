--------------------------------------------------------
--  DDL for View VBH_HEAT_CONFIRMATION
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "VBH_HEAT_CONFIRMATION" ("ID", "S_HEAT_ID", "HEAT_ID", "STEEL_GRADE", "SHIFT", "DATE_PRODUCED", "CAST_TYPE_CLOSE", "CAST_TYPE_OPEN", "CAST_TYPE_LEAD", "CAST_TYPE_SEQ", "LADLE_NO", "SG_PLATE_LIFE", "LIFT_TEMP", "LADLE_OPENING", "FREE", "LADLE_RECEIVING_AT_TURRET", "LADLE_OPEN_TIME", "LADLE_CLOSE_TIME", "FREE_LANCE", "NO_OF_PIPE", "LADLE_SHROUD_LIFE", "MBS_LIFE", "SEN_LIFE", "SPRAY_MASS_LIFE", "TUNDISH_TROLLY_NO", "TUNDISH_NUMBER", "HEATING_START_TIME", "HEATING_STOP_TIME", "HEATING_DUARTION", "TUNDISH_SOAKING_DURATION", "SEN_HEATING_START_TIME", "SEN_HEATING_STOP_TIME", "HEATING_DURATION", "CASTPOWDER_TYPE", "CASTPOWDER_HEATING", "CASTPOWDER_QUANTITY", "CASTPOWDER_USED", "AVG_CASTING_DURATION", "AVG_CASTING_SPEED", "CASTER_IDLE_TIME", "SPRAY_COOLING_LINE", "REDEX_MGO", "REDEX_NEUTRAL", "REDEX_SIO2", "REDEX_TYPE", "REDEX_QUANTITY", "RAMPING_LEN", "RAMPING_TIME", "MOULD_OPERATOR_1", "MOULD_OPERATOR_2", "MOULD_OPERATOR_3", "MOULD_OPERATOR_4", "FITTER", "TEEMERMAN", "LOSS_FRONT_END_CUT", "LOSS_TAIL_END_CUT", "LOSS_TUNDISH_SKULL", "LOSS_LADLE_SKULL", "LOSS_REJECTION_IF_ANY", "LOSS_TOTAL_LOSS", "LIQUIDUS_TEMP", "SECTION_SIZE", "LM_WEIGHT", "VER_COMMENT") AS 
  SELECT "ID",
    "S_HEAT_ID" ,
    (SELECT HEAT_NO FROM S_HEAT WHERE ID="S_HEAT_ID"
    ) AS HEAT_ID,
    (SELECT STEEL_GRADE FROM C_STEEL_GRADE CS WHERE CS.ID="C_STEEL_GRADE_ID"
    )                        AS "STEEL_GRADE",
    'A'                      AS SHIFT,
    "LADLE_OPEN_TIME" AS DATE_PRODUCED,
    0                        AS Cast_Type_Close,
    0                        AS Cast_Type_Open,
    0                        AS Cast_Type_Lead,
    0                        AS Cast_Type_Seq,
    0                        AS Ladle_No,
    0                        AS SG_Plate_Life,
    0                        AS Lift_temp,
    0                        AS Ladle_Opening,
    0                        AS Free,
    sysdate                  AS Ladle_receiving_at_Turret,
    sysdate                  AS Ladle_open_time,
    sysdate                  AS Ladle_close_time,
    0                        AS Free_Lance,
    0                        AS No_of_Pipe,
    0                        AS Ladle_shroud_life,
    0                        AS MBS_life,
    0                        AS SEN_life,
    0                        AS Spray_Mass_life,
    0                        AS Tundish_Trolly_No,
    0                        AS Tundish_Number,
    sysdate                  AS Heating_Start_Time,
    sysdate                  AS Heating_Stop_Time,
    0                        AS Heating_duartion,
    0                        AS Tundish_Soaking_Duration,
    sysdate                  AS SEN_heating_start_Time,
    sysdate                  AS SEN_heating_stop_Time,
    0                        AS Heating_duration,
    ''                       AS CastPowder_Type,
    0                        AS CastPowder_Heating,
    0                        AS CastPowder_Quantity,
    0                        AS CastPowder_Used,
    0                        AS Avg_Casting_Duration,
    0                        AS Avg_Casting_Speed,
    0                        AS Caster_Idle_Time,
    0                        AS Spray_Cooling_line,
    0                        AS Redex_MgO,
    0                        AS Redex_Neutral,
    0                        AS Redex_SiO2,
    0                        AS Redex_Type,
    0                        AS Redex_Quantity,
    0                        AS Ramping_Len,
    0                        AS Ramping_Time,--minutes
    '' as Mould_Operator_1,    '' as Mould_Operator_2,    '' as Mould_Operator_3,    '' as Mould_Operator_4,    '' as Fitter,    '' as TeemerMan,    0 as Loss_Front_End_Cut,         0 as Loss_Tail_End_Cut,         0 as Loss_Tundish_Skull,         0 as Loss_Ladle_Skull,      0 as Loss_Rejection_if_Any,    0 as Loss_Total_loss,    0 as Liquidus_temp,    '' as Section_Size,    0 as LM_weight,    VER_COMMENT
    FROM PC_HEAT;
