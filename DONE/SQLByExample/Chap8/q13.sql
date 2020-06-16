spool C:\Users\Marlene\Desktop\BaseDatos\Capitulo8_Set_Operators.txt

REM Chapter 8.Set Operators
REM The MINUS And INTERSECT SET Operators
REM The INTERSECT Operator
REM INTERSECT Instead Of EQUIJOINS
SELECT DISTINCT c.course_no
   FROM course c, section s
  WHERE c.course_no = s.course_no;
spool off