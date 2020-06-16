spool C:\Users\SergioS\Desktop\CS\LIBRO_DOS\CHAPTER9\ejercicio13.txt 
set serveroutput ON;
SET PAGESIZE 50;
SET LINESIZE 130;
clear screen;


SET SERVEROUTPUT ON
DECLARE
 int1 PLS_INTEGER;
 int2 PLS_INTEGER;
 int3 PLS_INTEGER;
 nbr NUMBER;
BEGIN

dbms_output.put_line('Ruta:C:\Users\SergioS\Desktop\CS\LIBRO_DOS\CHAPTER9\ejercicio13.sql 
');
  dbms_output.put_line('
  Chapter 9 Numbers
  ');
  dbms_output.put_line('--Sergio Gabriel Sanchez Valencia');
  
  
  
 int1 := 100;
 int2 := 49;
 int3 := int2/int1;
 nbr := int2/int1;
 DBMS_OUTPUT.PUT_LINE('integer 49/100 =' || TO_CHAR(int3));
 DBMS_OUTPUT.PUT_LINE('number 49/100 =' || TO_CHAR(nbr));
 int2 := 50;
 int3 := int2/int1;
 nbr := int2/int1;
 DBMS_OUTPUT.PUT_LINE('integer 50/100 =' || TO_CHAR(int3));
 DBMS_OUTPUT.PUT_LINE('number 50/100 =' || TO_CHAR(nbr));
END;
/
SELECT SYSTIMESTAMP FROM dual;

 spool off