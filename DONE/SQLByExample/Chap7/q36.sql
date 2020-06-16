spool C:\Users\Marlene\Desktop\BaseDatos\Capitulo7_Subqueries.txt

REM Inline Views And Scalar Subquery Expressions
REM Scalar Subquery Expressions
REM Scalar Subquery Expressions And The Case Expression

SELECT course_no, cost,
        CASE WHEN cost <= (SELECT AVG(cost) FROM course) THEN
                          cost *1.5
             WHEN cost =  (SELECT MAX(cost) FROM course) THEN
                          (SELECT cost FROM course
                          WHERE course_no = 20)
             ELSE cost
        END "Test CASE"
   FROM course
  WHERE course_no IN (20, 80)
  ORDER BY 2;
spool off