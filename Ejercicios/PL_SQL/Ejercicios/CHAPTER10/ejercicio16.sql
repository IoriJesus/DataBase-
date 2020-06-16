spool C:\Users\SergioS\Desktop\CS\LIBRO_DOS\CHAPTER10\ejercicio16.txt 

set serveroutput ON;
SET PAGESIZE 50;
SET LINESIZE 130;
clear screen;



BEGIN
dbms_output.put_line('Ruta:C:\Users\SergioS\Desktop\CS\LIBRO_DOS\Capitulo10\ejercicio16.sql 
');
  dbms_output.put_line('
  Chapter 10 Dates & Timestamps
  ');
  dbms_output.put_line('--Sergio Gabriel Sanchez Valencia');
  
  

 DBMS_OUTPUT.PUT_LINE('Session Timezone='||SESSIONTIMEZONE);
 DBMS_OUTPUT.PUT_LINE('Session Timestamp='||CURRENT_TIMESTAMP);
 DBMS_OUTPUT.PUT_LINE('DB Server Timestamp='||SYSTIMESTAMP);
 DBMS_OUTPUT.PUT_LINE('DB Timezone='||DBTIMEZONE);
 EXECUTE IMMEDIATE 'ALTER SESSION SET TIME_ZONE=DBTIMEZONE';
 DBMS_OUTPUT.PUT_LINE('DB Timestamp='||CURRENT_TIMESTAMP);
 -- Revert session time zone to local setting
 EXECUTE IMMEDIATE 'ALTER SESSION SET TIME_ZONE=LOCAL';
END;
/
SELECT SYSTIMESTAMP FROM dual;

 spool off