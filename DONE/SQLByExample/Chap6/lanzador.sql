clear screen
set linesize 500
spool 6log.txt
connect sergio/sergio
prompt starting scripts execution
@@/root/DataBase-/Ejercicios/SQLByExample/Chap6/6a.sql
pause press enter to continue to next exercise
@@/root/DataBase-/Ejercicios/SQLByExample/Chap6/6b.sql
pause press enter to continue to next exercise
@@/root/DataBase-/Ejercicios/SQLByExample/Chap6/6c.sql
pause press enter to continue to next exercise
@@/root/DataBase-/Ejercicios/SQLByExample/Chap6/6d.sql
pause press enter to continue to next exercise
@@/root/DataBase-/Ejercicios/SQLByExample/Chap6/6e.sql

dbms_output.put_line('--Sergio Gabriel Sanchez Valencia');

pause end of execution
spool off