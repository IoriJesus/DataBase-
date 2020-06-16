spool C:\Users\SergioS\Desktop\CS\LIBRO_DOS\CHAPTER8\ejercicio9.txt 
set serveroutput ON;
SET PAGESIZE 50;
SET LINESIZE 130;
clear screen;

DECLARE
 x VARCHAR2(100);
BEGIN
  x := 'abc' || 'def' || 'ghi';
  dbms_output.put_line('Ruta:C:\Users\SergioS\Desktop\CS\LIBRO_DOS\CHAPTER8\ejercicio9.sql 
  ');
  dbms_output.put_line('
  Chapter 8 Strings
  ');
  dbms_output.put_line('--Sergio Gabriel Sanchez Valencia');
  
  
 DBMS_OUTPUT.PUT_LINE(x);
END;
/
SELECT SYSTIMESTAMP FROM dual;

 spool off