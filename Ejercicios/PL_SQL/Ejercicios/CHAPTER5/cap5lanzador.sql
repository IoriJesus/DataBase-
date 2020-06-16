set serveroutput ON;
clear screen;


PROMPT Ruta:C:\Users\SergioS\Desktop\CS\LIBRO_DOS\CHAPTER5\cap5lanzador.sql
PROMPT SE INVOCO EL BUSCADOR

@C:\Users\SergioS\Desktop\CS\LIBRO_DOS\CHAPTER5\ejercicio1.sql 
@C:\Users\SergioS\Desktop\CS\LIBRO_DOS\CHAPTER5\ejercicio2.sql
@C:\Users\SergioS\Desktop\CS\LIBRO_DOS\CHAPTER5\ejercicio3.sql
@C:\Users\SergioS\Desktop\CS\LIBRO_DOS\CHAPTER5\ejercicio4.sql 
@C:\Users\SergioS\Desktop\CS\LIBRO_DOS\CHAPTER5\ejercicio5.sql

 
 
 dbms_output.put_line('--Sergio Gabriel Sanchez Valencia');
 


