spool C:\Users\SergioS\Desktop\CS\LIBRO_DOS\CHAPTER17\ejercicio24.txt 

set serveroutput ON;
SET PAGESIZE 50;
SET LINESIZE 130;
clear screen;set serveroutput on
/* File on web: xmltype.sql */
DECLARE
 doc xmltype;
BEGIN
    dbms_output.put_line('Ruta:C:\Users\SergioS\Desktop\CS\LIBRO_DOS\CHAPTER17\ejercicio21.sql 
    ');
    dbms_output.put_line('
      Chapter 17 Procedures,Functions and Parameters
    ');
   dbms_output.put_line('--Sergio Gabriel Sanchez Valencia');
   dbms_output.put_line('
    ');
   
   
 SELECT ea.report
 INTO doc
 FROM env_analysis ea
 WHERE company= 'ACME SILVERPLATING';
  do.pl (doc);
END;
/
 SELECT SYSTIMESTAMP FROM dual;

 spool off