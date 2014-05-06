--------------------------------------------------------
--  DDL for Procedure DYNAMIC_LAB_ANA
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "DYNAMIC_LAB_ANA" (p_cursor out sys_refcursor)
as
    sql_query varchar2(32000);

    begin

    sql_query := sql_query || 'SELECT "ID","S_HEAT_ID" as S_HEAT_ID,(select HEAT_NO FROM S_HEAT WHERE ID="S_HEAT_ID") as HEAT_ID,';
    sql_query := sql_query || '  SAMPLE_ID, SAMPLE_TYPE, SAMPLE_PLACE, SAMPLE_PHASE, TIME_ANNOUNCE, TIME_ANALYSE';


        for x in (select distinct ELE_SYMBOL from C_ELEMENT)
        loop
            sql_query := sql_query ||
                ' , (SELECT ELE_AMOUNT FROM P_LAB_ANA WHERE P_LAB_ID=pl.ID AND C_ELEMENT_ID=(SELECT ID FROM C_ELEMENT WHERE ELE_SYMBOL=''' || x.ELE_SYMBOL || ''')) as "' || x.ELE_SYMBOL ||'"';
        end loop;

        sql_query := sql_query || ' FROM P_LAB pl';
        dbms_output.put_line(sql_query);

        open p_cursor for sql_query;
    end;

/
