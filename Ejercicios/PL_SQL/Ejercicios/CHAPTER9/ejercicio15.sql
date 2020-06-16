spool C:\Users\SergioS\Desktop\CS\LIBRO_DOS\CHAPTER9\ejercicio15.txt 

SET SERVEROUTPUT ON
DECLARE
 b VARCHAR2(30);
BEGIN

dbms_output.put_line('Ruta:C:\Users\SergioS\Desktop\CS\LIBRO_DOS\Capitulo9\ejercicio15.sql 
');
  dbms_output.put_line('
  Chapter 9 Numbers
  ');
  dbms_output.put_line('--Sergio Gabriel Sanchez Valencia');
  
    
 b := TO_CHAR(123456789.01);
 DBMS_OUTPUT.PUT_LINE(b);
END;
/
SELECT SYSTIMESTAMP FROM dual;

 spool off