spool C:\Users\SergioS\Desktop\CS\LIBRO_DOS\CHAPTER9\ejercicio14.txt 
set serveroutput ON;
SET PAGESIZE 50;
SET LINESIZE 130;
clear screen;


SET SERVEROUTPUT ON
BEGIN
dbms_output.put_line('Ruta:C:\Users\SergioS\Desktop\CS\LIBRO_DOS\Capitulo9\ejercicio14.sql 
');
  dbms_output.put_line('
  Chapter 9 Numbers
  ');
  dbms_output.put_line('--Sergio Gabriel Sanchez Valencia');
  
  
  
 IF 0.95f = 0.95d
 THEN
 DBMS_OUTPUT.PUT_LINE('TRUE');
 ELSE
 DBMS_OUTPUT.PUT_LINE('FALSE');
 END IF;
 IF ABS(0.95f - 0.95d) < 0.000001d
 THEN
 DBMS_OUTPUT.PUT_LINE('TRUE');
 ELSE
 DBMS_OUTPUT.PUT_LINE('FALSE');
 END IF;
END;
/
SELECT SYSTIMESTAMP FROM dual;

 spool off