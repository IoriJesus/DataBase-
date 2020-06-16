spool C:\Users\Marlene\Desktop\BaseDatos\Capitulo7_Subqueries.txt

REM Inline Views And Scalar Subquery Expressions
REM Scalar Subquery Expressions
REM Scalar Subquery Expressions In The ORDER BY Clause

SELECT student_id, last_name
   FROM student s
  WHERE student_id BETWEEN 230 AND 235
  ORDER BY (SELECT COUNT(*)
              FROM enrollment e
             WHERE s.student_id = e.student_id) DESC;
spool off