--------------------------------------------------------
--  DDL for Procedure ADD_FAIL_LOG
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "ADD_FAIL_LOG" (p_function_name	VARCHAR2,	p_error_message	VARCHAR2)
is
begin
begin
	 insert into com_info_log (
			   msg_name,
			   msg_text
			   )
	      values  (
		       p_function_name
          , p_error_message
		    );
	exception when OTHERS then
      dbms_output.put_line(p_error_message);


 	end;
  end;

/
