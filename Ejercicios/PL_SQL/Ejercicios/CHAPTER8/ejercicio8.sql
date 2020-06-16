spool C:\Users\SergioS\Desktop\CS\LIBRO_DOS\Capitulo8\ejercicio8.txt 
set serveroutput ON;
SET PAGESIZE 50;
SET LINESIZE 130;
clear screen;


/* From the "Is Fixed-Length Really Fixed?" sidebar.
   Note! To match the sidebar output, you MUST run
   this example on a system using UTF-8 as the
   database character set. */
DECLARE
   x CHAR(3);
BEGIN
   --Assign a single-byte character
   x := 'a';
   dbms_output.put_line('Ruta:C:\Users\SergioS\Desktop\CS\LIBRO_DOS\Capitulo8\ejercicio8.sql 
   ');
  dbms_output.put_line('
  Chapter 8 Strings
  ');
  dbms_output.put_line('--Sergio Gabriel Sanchez Valencia');
  
  
   DBMS_OUTPUT.PUT_LINE(LENGTHB(x));

   --and now a two-byte character
   x := 'ã';
   DBMS_OUTPUT.PUT_LINE(LENGTHB(x));

   --and now two characters for a total
   --of three bytes
   x := 'ãa';
   DBMS_OUTPUT.PUT_LINE(LENGTHB(x));
END;
/
SELECT SYSTIMESTAMP FROM dual;

 spool off