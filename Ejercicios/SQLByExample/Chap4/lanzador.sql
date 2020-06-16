clear screen
set linesize 130
set pagesize 100
spool 4log.txt
connect sergio/sergio
prompt starting scripts execution
@@/root/DataBase-/Ejercicios/SQLByExample/Chap4/4a.sql
pause press enter to continue to next exercise
@@/root/DataBase-/Ejercicios/SQLByExample/Chap4/4b.sql
pause press enter to continue to next exercise
@@/root/DataBase-/Ejercicios/SQLByExample/Chap4/4c.sql
pause press enter to continue to next exercise
@@/root/DataBase-/Ejercicios/SQLByExample/Chap4/4d.sql
pause press enter to continue to next exercise
@@/root/DataBase-/Ejercicios/SQLByExample/Chap4/4e.sql
pause press enter to continue to next exercise
@@/root/DataBase-/Ejercicios/SQLByExample/Chap4/4f.sql

dbms_output.put_line('--Sergio Gabriel Sanchez Valencia');

pause end of execution
spool off