REM INSERTING into CC_C_CONTENT_DEF
SET DEFINE OFF;
Insert into CC_C_CONTENT_DEF (ID,MIN_LIM,MAX_LIM,DESCRIPTION,CREATED,MODIFIED,MOP) values (59,0,0.3,'< 0.3 % of carbon (Low)',to_date('2014-02-19 09:54:15','YYYY-MM-DD HH24:MI:SS'),null,'SQL Developer');
Insert into CC_C_CONTENT_DEF (ID,MIN_LIM,MAX_LIM,DESCRIPTION,CREATED,MODIFIED,MOP) values (60,0.3,1,'> 0.3 % of carbon',to_date('2014-02-19 09:54:15','YYYY-MM-DD HH24:MI:SS'),null,'SQL Developer');
Insert into CC_C_CONTENT_DEF (ID,MIN_LIM,MAX_LIM,DESCRIPTION,CREATED,MODIFIED,MOP) values (61,0.3,0.6,'0.3 - 0.6 % of carbon (Medium)',to_date('2014-02-19 09:54:15','YYYY-MM-DD HH24:MI:SS'),null,'SQL Developer');
Insert into CC_C_CONTENT_DEF (ID,MIN_LIM,MAX_LIM,DESCRIPTION,CREATED,MODIFIED,MOP) values (62,0.6,1,'> 0.6 % of carbon (High)',to_date('2014-02-19 09:54:15','YYYY-MM-DD HH24:MI:SS'),null,'SQL Developer');
