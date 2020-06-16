spool C:\Users\SergioS\Desktop\CS\LIBRO_DOS\CHAPTER9\ejercicio11.txt 
set serveroutput ON;
SET PAGESIZE 50;
SET LINESIZE 130;
clear screen;


SET SERVEROUTPUT ON
DECLARE
 low_nbr NUMBER(38,127);
 high_nbr NUMBER(38,-84);
BEGIN

dbms_output.put_line('Ruta:C:\Users\SergioS\Desktop\CS\LIBRO_DOS\CHAPTER9\ejercicio11.sql 
');
  dbms_output.put_line('
  Chapter 9 Numbers
  ');
  dbms_output.put_line('--Sergio Gabriel Sanchez Valencia');
  
  

 /* 127 is largest scale, so begin with 1 and move
 decimal point 127 places to the left. Easy. */
 low_nbr := 1E-127;
 DBMS_OUTPUT.PUT_LINE('low_nbr = ' || low_nbr);
 /* −84 is smallest scale value. Add 37 to normalize
 the scientific notation, and we get E+121. */
 high_nbr := 9.9999999999999999999999999999999999999E+121;
 DBMS_OUTPUT.PUT_LINE('high_nbr = ' || high_nbr);
END;
/
SELECT SYSTIMESTAMP FROM dual;

 spool off