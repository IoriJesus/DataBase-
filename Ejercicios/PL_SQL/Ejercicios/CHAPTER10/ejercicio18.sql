spool C:\Users\SergioS\Desktop\CS\LIBRO_DOS\CHAPTER10\ejercicio18.txt 

set serveroutput ON;
SET PAGESIZE 50;
SET LINESIZE 130;
clear screen;

DECLARE
 birthdate DATE;
BEGIN

dbms_output.put_line('spool C:\Users\SergioS\Desktop\CS\LIBRO_DOS\CHAPTER10\ejercicio18.sql 
');
  dbms_output.put_line('
  Chapter 10 Dates & Timestamps
  ');
  dbms_output.put_line('--Sergio Gabriel Sanchez Valencia');
  
  

 birthdate := TO_DATE('06-Ago-1996','dd-mon-yyyy');
END;
/
 spool off