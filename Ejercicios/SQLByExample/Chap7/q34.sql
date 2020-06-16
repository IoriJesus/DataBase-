spool C:\Users\Marlene\Desktop\BaseDatos\Capitulo7_Subqueries.txt

REM Inline Views And Scalar Subquery Expressions
REM Scalar Subquery Expressions
REM Scalar Subquery Expressions In The WHERE Clause

SELECT student_id, last_name
  FROM student s
  WHERE (SELECT COUNT(*)
           FROM enrollment e
          WHERE s.student_id = e.student_id) >
               (SELECT AVG(COUNT(*))
                  FROM enrollment
                 GROUP BY student_id)
  ORDER BY 1;
spool off