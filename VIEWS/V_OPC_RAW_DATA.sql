--------------------------------------------------------
--  DDL for View V_OPC_RAW_DATA
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "V_OPC_RAW_DATA" ("ID", "TAG_NAME", "READ_VALUE", "READ_TIME", "SIMULATION") AS 
  select
  ID,
  TAG_NAME,
  READ_VALUE,
  READ_TIME,
  TAG_NAME || ':' || READ_VALUE || ':' || to_char(READ_TIME, 'YYYY/MM/DD hh24:mi:ss')
from p_OPC_RAW_DATA;
