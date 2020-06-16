spool C:\Users\SergioS\Desktop\CS\LIBRO_DOS\CHAPTER17\ejercicio25.txt 

set serveroutput ON;
SET PAGESIZE 50;
SET LINESIZE 130;
clear screen;


/* Overloading with Numeric Types */
DECLARE
 PROCEDURE proc1 (n IN PLS_INTEGER) IS
 BEGIN
 DBMS_OUTPUT.PUT_LINE ('pls_integer version');
 END;
 PROCEDURE proc1 (n IN NUMBER) IS
 BEGIN
 DBMS_OUTPUT.PUT_LINE ('number version');
 END;
BEGIN
  dbms_output.put_line('Ruta:C:\Users\SergioS\Desktop\CS\LIBRO_DOS\CHAPTER17\ejercicio25.sql 
  ');
  dbms_output.put_line('Chapter 17 Procedures,Functions and Parameters
  ');
  dbms_output.put_line('--Sergio Gabriel Sanchez Valencia');
  
  
  
 proc1 (1.1);
 proc1 (1);
END;
/

 SELECT SYSTIMESTAMP FROM dual;

 spool off