--------------------------------------------------------
--  DDL for View VEH_PM_ANA
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "VEH_PM_ANA" ("PLANT_UNIT_NO", "ELE_SYMBOL", "HMI_ORDER", "LAST_ANALYSIS", "MIN_GRADE", "MAX_GRADE", "AIM_GRADE", "MODEL_ANA") AS 
  SELECT   "PLANT_UNIT_NO", t1.ele_symbol, "HMI_ORDER", "LAST_ANALYSIS", "MIN_GRADE",
            "MAX_GRADE", "AIM_GRADE", "MODEL_ANA"
       FROM (SELECT 1 AS plant_unit_no, ele_symbol,
                    (SELECT ele_amount
                       FROM p_lab_ana ana
                      WHERE ana.c_element_id = cel.ID
                        AND ana.p_lab_id =
                                (SELECT MAX (ID)
                                   FROM p_lab
                                  WHERE s_heat_id = (SELECT s_heat_id
                                                       FROM veh_pm_main
                                                      WHERE plant_unit_no = 1)))
                                                                last_analysis,
                    (SELECT ele_eaf_min
                       FROM c_steel_grade_ana ana
                      WHERE ana.c_element_id = cel.ID
                        AND ana.c_steel_grade_id = (SELECT c_steel_grade_id
                                                      FROM veh_pm_main
                                                     WHERE plant_unit_no = 1))
                                                                    min_grade,
                    (SELECT ele_eaf_max
                       FROM c_steel_grade_ana ana
                      WHERE ana.c_element_id = cel.ID
                        AND ana.c_steel_grade_id = (SELECT c_steel_grade_id
                                                      FROM veh_pm_main
                                                     WHERE plant_unit_no = 1))
                                                                    max_grade,
                    (SELECT ele_eaf_aim
                       FROM c_steel_grade_ana ana
                      WHERE ana.c_element_id = cel.ID
                        AND ana.c_steel_grade_id = (SELECT c_steel_grade_id
                                                      FROM veh_pm_main
                                                     WHERE plant_unit_no = 1))
                                                                    aim_grade,
                    (SELECT ele_amount * 100
                       FROM me_heat_ana ana
                      WHERE ana.c_element_id = cel.ID
                        AND ana.me_heat_id =
                                (SELECT ID
                                   FROM me_heat
                                  WHERE s_heat_id = (SELECT s_heat_id
                                                       FROM veh_pm_main
                                                      WHERE plant_unit_no = 1)))
                                                                    model_ana
               FROM c_element cel
             UNION
             SELECT 2 AS plant_unit_no, ele_symbol,
                    (SELECT ele_amount
                       FROM p_lab_ana ana
                      WHERE ana.c_element_id = cel.ID
                        AND ana.p_lab_id =
                                (SELECT MAX (ID)
                                   FROM p_lab
                                  WHERE s_heat_id = (SELECT s_heat_id
                                                       FROM veh_pm_main
                                                      WHERE plant_unit_no = 2)))
                                                                last_analysis,
                    (SELECT ele_eaf_min
                       FROM c_steel_grade_ana ana
                      WHERE ana.c_element_id = cel.ID
                        AND ana.c_steel_grade_id = (SELECT c_steel_grade_id
                                                      FROM veh_pm_main
                                                     WHERE plant_unit_no = 2))
                                                                    min_grade,
                    (SELECT ele_eaf_max
                       FROM c_steel_grade_ana ana
                      WHERE ana.c_element_id = cel.ID
                        AND ana.c_steel_grade_id = (SELECT c_steel_grade_id
                                                      FROM veh_pm_main
                                                     WHERE plant_unit_no = 2))
                                                                    max_grade,
                    (SELECT ele_eaf_aim
                       FROM c_steel_grade_ana ana
                      WHERE ana.c_element_id = cel.ID
                        AND ana.c_steel_grade_id = (SELECT c_steel_grade_id
                                                      FROM veh_pm_main
                                                     WHERE plant_unit_no = 2))
                                                                    aim_grade,
                    (SELECT ele_amount * 100
                       FROM me_heat_ana ana
                      WHERE ana.c_element_id = cel.ID
                        AND ana.me_heat_id =
                                (SELECT ID
                                   FROM me_heat
                                  WHERE s_heat_id = (SELECT s_heat_id
                                                       FROM veh_pm_main
                                                      WHERE plant_unit_no = 2)))
                                                                    model_ana
               FROM c_element cel
             UNION
             SELECT 3 AS plant_unit_no, ele_symbol,
                    (SELECT ele_amount
                       FROM p_lab_ana ana
                      WHERE ana.c_element_id = cel.ID
                        AND ana.p_lab_id =
                                (SELECT MAX (ID)
                                   FROM p_lab
                                  WHERE s_heat_id = (SELECT s_heat_id
                                                       FROM veh_pm_main
                                                      WHERE plant_unit_no = 3)))
                                                                last_analysis,
                    (SELECT ele_eaf_min
                       FROM c_steel_grade_ana ana
                      WHERE ana.c_element_id = cel.ID
                        AND ana.c_steel_grade_id = (SELECT c_steel_grade_id
                                                      FROM veh_pm_main
                                                     WHERE plant_unit_no = 3))
                                                                    min_grade,
                    (SELECT ele_eaf_max
                       FROM c_steel_grade_ana ana
                      WHERE ana.c_element_id = cel.ID
                        AND ana.c_steel_grade_id = (SELECT c_steel_grade_id
                                                      FROM veh_pm_main
                                                     WHERE plant_unit_no = 3))
                                                                    max_grade,
                    (SELECT ele_eaf_aim
                       FROM c_steel_grade_ana ana
                      WHERE ana.c_element_id = cel.ID
                        AND ana.c_steel_grade_id = (SELECT c_steel_grade_id
                                                      FROM veh_pm_main
                                                     WHERE plant_unit_no = 3))
                                                                    aim_grade,
                    (SELECT ele_amount * 100
                       FROM me_heat_ana ana
                      WHERE ana.c_element_id = cel.ID
                        AND ana.me_heat_id =
                                (SELECT ID
                                   FROM me_heat
                                  WHERE s_heat_id = (SELECT s_heat_id
                                                       FROM veh_pm_main
                                                      WHERE plant_unit_no = 3)))
                                                                    model_ana
               FROM c_element cel
             UNION
             SELECT 4 AS plant_unit_no, ele_symbol,
                    (SELECT ele_amount
                       FROM p_lab_ana ana
                      WHERE ana.c_element_id = cel.ID
                        AND ana.p_lab_id =
                                (SELECT MAX (ID)
                                   FROM p_lab
                                  WHERE s_heat_id = (SELECT s_heat_id
                                                       FROM veh_pm_main
                                                      WHERE plant_unit_no = 4)))
                                                                last_analysis,
                    (SELECT ele_eaf_min
                       FROM c_steel_grade_ana ana
                      WHERE ana.c_element_id = cel.ID
                        AND ana.c_steel_grade_id = (SELECT c_steel_grade_id
                                                      FROM veh_pm_main
                                                     WHERE plant_unit_no = 4))
                                                                    min_grade,
                    (SELECT ele_eaf_max
                       FROM c_steel_grade_ana ana
                      WHERE ana.c_element_id = cel.ID
                        AND ana.c_steel_grade_id = (SELECT c_steel_grade_id
                                                      FROM veh_pm_main
                                                     WHERE plant_unit_no = 4))
                                                                    max_grade,
                    (SELECT ele_eaf_aim
                       FROM c_steel_grade_ana ana
                      WHERE ana.c_element_id = cel.ID
                        AND ana.c_steel_grade_id = (SELECT c_steel_grade_id
                                                      FROM veh_pm_main
                                                     WHERE plant_unit_no = 4))
                                                                    aim_grade,
                    (SELECT ele_amount * 100
                       FROM me_heat_ana ana
                      WHERE ana.c_element_id = cel.ID
                        AND ana.me_heat_id =
                                (SELECT ID
                                   FROM me_heat
                                  WHERE s_heat_id = (SELECT s_heat_id
                                                       FROM veh_pm_main
                                                      WHERE plant_unit_no = 4)))
                                                                    model_ana
               FROM c_element cel) t1,
            c_element t2, c_hmi_element ch
      WHERE t1.ele_symbol = t2.ele_symbol and t2.id = ch.c_element_id
   ORDER BY t2.ID;
