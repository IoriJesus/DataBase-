spool C:\Users\SergioS\Desktop\CS\LIBRO_DOS\CHAPTER5\ejercicio5.txt 
set serveroutput ON;
SET PAGESIZE 50;
SET LINESIZE 130;
clear screen;

DECLARE

  start_id  PLS_INTEGER := 3;
  end_id  PLS_INTEGER := 4;

BEGIN
dbms_output.put_line('Ruta:C:\Users\SergioS\Desktop\CS\LIBRO_DOS\CHAPTER5\ejercicio5.sql'
);
  dbms_output.put_line('
  Chapter 5 Iterative processing with loops
  ');
  dbms_output.put_line('--Sergio Gabriel Sanchez Valencia');
  
  
  FOR focus_account IN start_id .. end_id
  LOOP
    FOR day_in_week IN 1 .. 7
    LOOP
      FOR month_in_biyear IN 1 .. 24
      LOOP
         build_schedule (focus_account, day_in_week, month_in_biyear);
      END LOOP;
    END LOOP;
  END LOOP;

END;
/
SELECT SYSTIMESTAMP FROM dual;
 spool off