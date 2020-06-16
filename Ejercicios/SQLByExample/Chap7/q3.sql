spool C:\Users\Marlene\Desktop\BaseDatos\Capitulo7_Subqueries.txt

REM Subqueries
REM Simple Subqueries
REM Scalar Subqueries

SELECT course_no, description, cost
   FROM course
  WHERE cost =
        (SELECT MIN(cost)
           FROM course);
spool off