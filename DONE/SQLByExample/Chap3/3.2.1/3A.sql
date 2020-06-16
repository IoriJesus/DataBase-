REM A)
REM Describe the effect of the negative precision as a parameter
REM of the ROUND function inthe following SQL statement. 

SELECT 10.245, ROUND(10.245, 1), ROUND(10.245, -1)
 FROM dual;

dbms_output.put_line('--Sergio Gabriel Sanchez Valencia');