spool C:\Users\SergioS\Desktop\CS\LIBRO_DOS\CHAPTER10\ejercicio19.txt 

set serveroutput ON;
SET PAGESIZE 50;
SET LINESIZE 130;
clear screen;


DECLARE
 ts TIMESTAMP WITH TIME ZONE;
BEGIN

dbms_output.put_line('spool C:\Users\SergioS\Desktop\CS\LIBRO_DOS\CHAPTER10\ejercicio19.sql 
');
  dbms_output.put_line('
  Chapter 10 Dates & Timestamps
  ');
  dbms_output.put_line('--Sergio Gabriel Sanchez Valencia');
  
  

 ts := TIMESTAMP '2002-02-19 13:52:00.123456789 −5:00';
 DBMS_OUTPUT.PUT_LINE(TO_CHAR(ts,'YYYY-MM-DD HH:MI:SS.FF6 AM TZH:TZM'));
END;
/

SELECT SYSTIMESTAMP FROM dual;

 spool off