spool C:\Users\SergioS\Desktop\CS\LIBRO_DOS\CHAPTER8\ejercicio7.txt 
set serveroutput ON;
SET PAGESIZE 50;
SET LINESIZE 130;
clear screen;

DECLARE
   empty_varchar2 VARCHAR2(10) := '';
   empty_char CHAR(10) := '';
BEGIN
dbms_output.put_line('Ruta:C:\Users\SergioS\Desktop\CS\LIBRO_DOS\CHAPTER8\ejercicio7.sql 
');
  dbms_output.put_line('
  Chapter 8 Strings
  ');
  dbms_output.put_line('--Sergio Gabriel Sanchez Valencia');
  
  
   IF empty_varchar2 IS NULL THEN
      DBMS_OUTPUT.PUT_LINE('empty_varchar2 is NULL');
   END IF;

   IF '' IS NULL THEN
      DBMS_OUTPUT.PUT_LINE(''''' is NULL');
   END IF;

   IF empty_char IS NULL THEN
      DBMS_OUTPUT.PUT_LINE('empty_char is NULL');
   END IF;
END;
/
SELECT SYSTIMESTAMP FROM dual;

 spool off