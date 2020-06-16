spool C:\Users\Marlene\Desktop\BaseDatos\Capitulo8_Set_Operators.txt

REM Chapter 8.Set Operators
REM The MINUS And INTERSECT SET Operators
REM The INTERSECT Operator
REM INTERSECT Instead Of EQUIJOINS
SELECT course_no
   FROM course
 INTERSECT
 SELECT course_no
   FROM section;
spool off