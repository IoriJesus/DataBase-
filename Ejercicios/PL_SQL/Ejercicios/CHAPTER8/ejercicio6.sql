spool C:\Users\SergioS\Desktop\CS\LIBRO_DOS\CHAPTER8\ejercicio6.txt 
set serveroutput ON;
SET PAGESIZE 50;
SET LINESIZE 130;
clear screen;


BEGIN
dbms_output.put_line('Ruta:C:\Users\SergioS\Desktop\CS\LIBRO_DOS\CHAPTER8\ejercicio6.sql 
');
  dbms_output.put_line('
  Chapter 8 Strings
  ');
  dbms_output.put_line('--Sergio Gabriel Sanchez Valencia');
END;
/
SELECT SYSTIMESTAMP FROM dual;

 spool off