spool C:\Users\SergioS\Desktop\CS\LIBRO_DOS\CHAPTER8\ejercicio10.txt 
set serveroutput ON;
SET PAGESIZE 50;
SET LINESIZE 130;
clear screen;

DECLARE
 name1 VARCHAR2(30) := 'Aristides Cristian';
 name2 VARCHAR2(30) := 'ARISTIDES CRISTIAN';
BEGIN
dbms_output.put_line('Ruta:C:\Users\SergioS\Desktop\CS\LIBRO_DOS\CHAPTER8\ejercicio7.sql 
');
  dbms_output.put_line('
  Chapter 8 Strings
  ');
  dbms_output.put_line('--Sergio Gabriel Sanchez Valencia');
  
  
 IF LOWER(name1) = LOWER(name2) THEN
 DBMS_OUTPUT.PUT_LINE('Los nombres son iguales.');
 END IF;
END;
/
SELECT SYSTIMESTAMP FROM dual;

 spool off