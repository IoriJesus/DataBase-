spool C:\Users\Marlene\Desktop\BaseDatos\Capitulo7_Subqueries.txt

REM Subqueries
REM Simple Subqueries
REM Subqueries and NULLS


SELECT course_no, prerequisite
   FROM course
  WHERE course_no IN (120, 220, 310);
spool off