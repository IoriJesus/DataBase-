spool C:\Users\SergioS\Desktop\CS\LIBRO_DOS\CHAPTER5\ejercicio2.txt 
set serveroutput ON;
SET PAGESIZE 50;
SET LINESIZE 130;
clear screen;

DECLARE

  start_period_number pls_integer := 1;
  end_period_number pls_integer := 20;
  current_period pls_integer := 20;

BEGIN
  dbms_output.put_line('Ruta:C:\Users\SergioS\Desktop\CS\LIBRO_DOS\CHAPTER5\ejercicio2.sql');
  dbms_output.put_line('
  Chapter 5 Iterative processing with loops
  ');
  dbms_output.put_line('--Sergio Gabriel Sanchez Valencia');
  
  
  dbms_output.put_line('Ciclo For');
  FOR loop_counter IN 1 .. 10
  LOOP
    dbms_output.put_line(loop_counter);
    -- ... executable statements ...
  END LOOP;

  dbms_output.put_line('Ciclo en reversa (FOR)');
  FOR loop_counter IN REVERSE 1 .. 10
  LOOP
    dbms_output.put_line(loop_counter);
    -- ... executable statements ...
  END LOOP;

  dbms_output.put_line('no loop...');
  FOR loop_counter IN REVERSE 10 .. 1
  LOOP
    dbms_output.put_line('no loop: '||loop_counter);
    /* Este ciclo no se ejecutara ya que el valor de inicio es
		mayor que el de paro*/
  END LOOP;

  dbms_output.put_line('Variable delimitada por el numero');
  FOR calc_index IN  start_period_number .. 
                    LEAST (end_period_number, current_period)
  LOOP
  if mod(calc_index, 2)=0 then
    dbms_output.put_line(calc_index);
    -- ... executable statements ...
	end if;
  END LOOP;

END;
/
SELECT SYSTIMESTAMP FROM dual;
spool off;