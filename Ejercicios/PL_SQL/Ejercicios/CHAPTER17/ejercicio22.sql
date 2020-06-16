spool C:\Users\SergioS\Desktop\CS\LIBRO_DOS\CHAPTER17\ejercicio22.txt 

set serveroutput ON;
SET PAGESIZE 50;
SET LINESIZE 130;
clear screen;

DECLARE
 l_ceo_payoff NUMBER;
 l_lobbying_dollars NUMBER := 100000;
BEGIN
    dbms_output.put_line('Ruta:C:\Users\SergioS\Desktop\CS\LIBRO_DOS\CHAPTER17\ejercicio22.sql 
    ');
    dbms_output.put_line('
    Chapter 17 Procedures,Functions and Parameters
    ');
   dbms_output.put_line('--Sergio Gabriel Sanchez Valencia');
   dbms_output.put_line('
    ');
   

 /* All positional notation */
 business_as_usual (50000000
 , l_lobbying_dollars
 , SYSDATE + 20
 , l_ceo_payoff
 , 'PAY OFF OSHA'
 );
 END;
 /

 spool off