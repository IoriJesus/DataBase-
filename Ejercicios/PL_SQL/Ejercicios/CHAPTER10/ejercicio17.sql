spool C:\Users\SergioS\Desktop\CS\LIBRO_DOS\CHAPTER10\ejercicio17.txt 

set serveroutput ON;
SET PAGESIZE 50;
SET LINESIZE 130;
clear screen;

DECLARE
 ts1 TIMESTAMP;
 ts2 TIMESTAMP;
BEGIN

dbms_output.put_line('Ruta:C:\Users\SergioS\Desktop\CS\LIBRO_DOS\Capitulo10\ejercicio17.sql 
');
  dbms_output.put_line('
  Chapter 10 Dates & Timestamps
  ');
  dbms_output.put_line('--Sergio Gabriel Sanchez Valencia');
  
  


 ts1 := CAST(SYSTIMESTAMP AS TIMESTAMP);
 ts2 := SYSDATE;
 DBMS_OUTPUT.PUT_LINE(TO_CHAR(ts1,'DD-MON-YYYY HH:MI:SS AM'));
 DBMS_OUTPUT.PUT_LINE(TO_CHAR(ts2,'DD-MON-YYYY HH:MI:SS AM'));
END;
/
SELECT SYSTIMESTAMP FROM dual;

 spool off