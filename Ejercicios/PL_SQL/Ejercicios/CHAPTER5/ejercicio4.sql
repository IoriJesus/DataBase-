spool C:\Users\SergioS\Desktop\CS\LIBRO_DOS\CHAPTER5\ejercicio4.txt 
set serveroutput ON;
SET PAGESIZE 50;
SET LINESIZE 130;
clear screen;

DECLARE

  year_number PLS_INTEGER := 1992;

BEGIN
dbms_output.put_line('Ruta:C:\Users\SergioS\Desktop\CS\LIBRO_DOS\CHAPTER5\ejercicio4.sql'
);
  dbms_output.put_line('
  Chapter 5 Iterative processing with loops
  ');
  dbms_output.put_line('--Sergio Gabriel Sanchez Valencia');
  
  
  <<year_loop>>
  WHILE year_number <= 1995
  LOOP

    dbms_output.put_line('year = '||year_number);

    <<month_loop>>
    FOR month_number IN 1 .. 12
    LOOP
      dbms_output.put_line('...and month = '||month_number);
      -- ... 
    END LOOP month_loop;
    
    year_number := year_number + 2;

  END LOOP year_loop;

END;
/
SELECT SYSTIMESTAMP FROM dual;
spool off;