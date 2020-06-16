REM C)
REM Describe the result of the following SQL statement. 
REM Pay particular attention to the
REM negative number parameter.

SELECT SUBSTR('12345', 3),
 SUBSTR('12345', 3, 2),
 SUBSTR('12345', -4, 3)
 FROM dual 

 dbms_output.put_line('--Sergio Gabriel Sanchez Valencia');