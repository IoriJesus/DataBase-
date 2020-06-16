spool C:\Users\Marlene\Desktop\BaseDatos\Capitulo8_Set_Operators.txt

REM Chapter 8.Set Operators
REM The MINUS And INTERSECT SET Operators
REM The INTERSECT Operator
SELECT created_by
   FROM enrollment
 INTERSECT
 SELECT created_by
   FROM course;
spool off