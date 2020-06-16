prompt
prompt E) Determine the day of the week for December 31, 1899.

SELECT TO_CHAR(TO_DATE('31-DEC-1899', 'DD-MON-YYYY'),'Dy')
FROM dual;

dbms_output.put_line('--Sergio Gabriel Sanchez Valencia');