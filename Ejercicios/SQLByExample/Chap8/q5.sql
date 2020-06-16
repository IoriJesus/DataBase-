spool C:\Users\Marlene\Desktop\BaseDatos\Capitulo8_Set_Operators.txt

REM Chapter 8.Set Operators
REM ORDER BY and SET Operations
SELECT instructor_id id, first_name, last_name, phone
   FROM instructor
  UNION
 SELECT student_id, first_name, last_name, phone
   FROM student
  ORDER BY 3;
spool off