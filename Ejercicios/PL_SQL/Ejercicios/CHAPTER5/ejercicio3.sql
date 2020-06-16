spool C:\Users\SergioS\Desktop\CS\LIBRO_DOS\Capitulo5\ejercicio3.txt 
set serveroutput ON;
SET PAGESIZE 50;
SET LINESIZE 130;
clear screen;


BEGIN
dbms_output.put_line('Ruta:C:\Users\SergioS\Desktop\CS\LIBRO_DOS\Capitulo5\ejercicio3.sql'
);
  dbms_output.put_line('
  Chapter 5 Iterative processing with loops
  ');
  dbms_output.put_line('--Sergio Gabriel Sanchez Valencia');
  
  
  FOR loop_index IN 1 .. 100
  LOOP
    IF MOD (loop_index, 2) = 0
    THEN
      /* We have an even number, so perform calculation */
      calc_values (loop_index);
    END IF;
  END LOOP;

  dbms_output.put_line('---------------------');

  FOR even_number IN 1 .. 50
  LOOP
    calc_values (even_number*2);
  END LOOP;

END;
/
SELECT SYSTIMESTAMP FROM dual;
spool off;