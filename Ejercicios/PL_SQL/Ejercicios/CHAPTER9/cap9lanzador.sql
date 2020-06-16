set serveroutput ON;
SET PAGESIZE 50;
SET LINESIZE 130;
clear screen;


PROMPT Ruta:C:\Users\SergioS\Desktop\CS\LIBRO_DOS\CHAPTER9\cap9lanzador.sql
PROMPT SE INVOCO EL BUSCADOR

@C:\Users\SergioS\Desktop\CS\LIBRO_DOS\CHAPTER9\ejercicio11.sql 
@C:\Users\SergioS\Desktop\CS\LIBRO_DOS\CHAPTER9\ejercicio12.sql
@C:\Users\SergioS\Desktop\CS\LIBRO_DOS\CHAPTER9\ejercicio13.sql
@C:\Users\SergioS\Desktop\CS\LIBRO_DOS\CHAPTER9\ejercicio14.sql 
@C:\Users\SergioS\Desktop\CS\LIBRO_DOS\CHAPTER9\ejercicio15.sql

 
 
 dbms_output.put_line('--Sergio Gabriel Sanchez Valencia');
 

