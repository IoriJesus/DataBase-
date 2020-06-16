spool C:\Users\Marlene\Desktop\BaseDatos\Capitulo7_Subqueries.txt

REM Subqueries
REM Simple Subqueries
REM Subqueries Returning Multiple Rows

SELECT course_no, description, cost
   FROM course
  WHERE cost =
        (SELECT MAX(cost)
           FROM course);
spool off