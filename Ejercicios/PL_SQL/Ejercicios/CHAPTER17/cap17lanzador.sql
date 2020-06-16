set serveroutput ON;
SET PAGESIZE 50;
SET LINESIZE 130;

PROMPT Ruta:C:\Users\SergioS\Desktop\CS\LIBRO_DOS\cap10lanzador.sql
PROMPT SE INVOCO EL BUSCADOR

@C:\Users\SergioS\Desktop\CS\LIBRO_DOS\CHAPTER10\ejercicio21.sql 
@C:\Users\SergioS\Desktop\CS\LIBRO_DOS\CHAPTER10\ejercici22.sql
@C:\Users\SergioS\Desktop\CS\LIBRO_DOS\CHAPTER10\ejercicio23.sql
@C:\Users\SergioS\Desktop\CS\LIBRO_DOS\CHAPTER\ejercicio24.sql 
@C:\Users\SergioS\Desktop\CS\LIBRO_DOS\CHAPTER\ejercicio25.sql

 
 
 dbms_output.put_line('--Sergio Gabriel Sanchez Valencia');
 
