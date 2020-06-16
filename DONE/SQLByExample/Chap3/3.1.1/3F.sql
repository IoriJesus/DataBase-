REM F)
REM What is the result of the following statement? 

SELECT TRANSLATE('555-1212', '0123456789',
 '##########')
FROM dual;

dbms_output.put_line('--Sergio Gabriel Sanchez Valencia');