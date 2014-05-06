--------------------------------------------------------
--  DDL for View VCH_PRACTICE
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "VCH_PRACTICE" ("ID", "PLANT_UNIT", "PRACTICE_CODE", "DESCRIPTION") AS 
  (
select
  ID,
  'LF',
  PRACTICE_CODE,
  DESCRIPTION
from CL_PRACTICE
union
select
  ID,
  'VD',
  PRACTICE_CODE,
  DESCRIPTION
from CV_PRACTICE
);
