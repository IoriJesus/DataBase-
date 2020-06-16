spool C:\Users\SergioS\Desktop\CS\LIBRO_DOS\CHAPTER17\ejercicio2.txt 

set serveroutput ON;
SET PAGESIZE 50;
SET LINESIZE 130;
clear screen;

set serveroutput on
CREATE OR REPLACE PROCEDURE read_out (n OUT NUMBER)
 IS
 BEGIN
dbms_output.put_line('spool C:\Users\SergioS\Desktop\CS\LIBRO_DOS\CHAPTER17\ejercicio21.sql 
');
  dbms_output.put_line('
  Chapter 17 Procedures, Functions, and Parameters
  ');
  dbms_output.put_line('--Sergio Gabriel Sanchez Valencia');
  
  
 DBMS_OUTPUT.put_line ('n initial=' || n);
 n := 1;
 DBMS_OUTPUT.put_line ('n after assignment=' || n);
 END;
 /
 DECLARE
 n NUMBER;
 BEGIN
 read_out (n);
 END;
 /

 SELECT SYSTIMESTAMP FROM dual;

 spool off