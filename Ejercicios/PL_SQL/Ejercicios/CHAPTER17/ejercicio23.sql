spool C:\Users\SergioS\Desktop\CS\LIBRO_DOS\CHAPTER17\ejercicio23.txt 

set serveroutput ON;
SET PAGESIZE 50;
SET LINESIZE 130;
clear screen;

DECLARE
 happy_title CONSTANT VARCHAR2(30) := 'HAPPY BIRTHDAY';
 changing_title VARCHAR2(30) := 'Happy Anniversary';
 spc CONSTANT VARCHAR2(1) := CHR(32); -- ASCII code for a single space
BEGIN
dbms_output.put_line('Ruta:C:\Users\SergioS\Desktop\CS\LIBRO_DOS\CHAPTER17\ejercicio23.sql 
    ');
    dbms_output.put_line('
    Chapter 17 Procedures,Functions and Parameters
    ');
   dbms_output.put_line('--Sergio Gabriel Sanchez Valencia');
   dbms_output.put_line('
    ');
   

 display_title ('Happy Birthday'); -- a literal
 display_title (happy_title); -- a constant
 changing_title := happy_title;
 display_title (changing_title); -- a variable
 display_title ('Happy' || spc || 'Birthday'); -- an expression
 display_title (INITCAP (happy_title)); -- another expression
END;
  /

  
 SELECT SYSTIMESTAMP FROM dual;
 spool off