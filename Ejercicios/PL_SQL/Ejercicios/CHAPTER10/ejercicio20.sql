spool C:\Users\SergioS\Desktop\CS\LIBRO_DOS\CHAPTER10\ejercicio20.txt 

set serveroutput ON;
SET PAGESIZE 50;
SET LINESIZE 130;
clear screen;


PROMPT spool C:\Users\SergioS\Desktop\CS\LIBRO_DOS\CHAPTER10\ejercicio20.sql 
PROMPT Chapter 10 Dates & Timestamps
 PROMPT Sergio Gabriel Sanchez Valencia
PROMPT Aristides Ariza Martinez
PROMPT Hector Andres Lucario Castillo 
  
SELECT TO_CHAR (SYSDATE, 'MM/DD/YYYY') "Current Date",
TO_CHAR (TO_DATE ('14-OCT-88', 'DD-MON-RR'), 'YYYY') "Year 88",
TO_CHAR (TO_DATE ('14-OCT-18', 'DD-MON-RR'), 'YYYY') "Year 18"
 FROM dual;
 
 SELECT SYSTIMESTAMP FROM dual;

 spool off
 
 