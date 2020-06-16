spool C:\Users\SergioS\Desktop\CS\LIBRO_DOS\CHAPTER5\ejercicio2.txt 

SQL> set serveroutput ON;
SQL> SET PAGESIZE 50;
SQL> SET LINESIZE 130;
SQL> clear screen;

begin
dbms_output.put_line('Ruta:C:\Users\SergioS\Desktop\CS\LIBRO_DOS\Capitulo5\ejercicio1.sql');
dbms_output.put_line('
Chapter 5 Iterative processing with loops
');
dbms_output.put_line('--Sergio Gabriel Sanchez Valencia');


dbms_output.put_line('set_all_ranks...');
set_all_ranks(5);
dbms_output.put_line('-----------------');
dbms_output.put_line('set_all_ranks2...');
set_all_ranks2(3);
dbms_output.put_line('-----------------');
dbms_output.put_line('set_all_ranks3...');
set_all_ranks3(4);
end;
/
SELECT SYSTIMESTAMP FROM dual;
