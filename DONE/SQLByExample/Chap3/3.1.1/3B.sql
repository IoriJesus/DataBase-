REM b)
REM Write the question answered by the following SQL statement

SELECT last_name
 FROM instructor
 WHERE LENGTH(last_name) >= 6;

 dbms_output.put_line('--Sergio Gabriel Sanchez Valencia');