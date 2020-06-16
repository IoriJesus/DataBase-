spool C:\Users\Marlene\Desktop\BaseDatos\Capitulo7_Subqueries.txt

REM Inline Views And Scalar Subquery Expressions
REM Scalar Subquery Expressions
REM Scalar Subquery Expressions In The SELECT Clause

SELECT city, state, zip,
       (SELECT COUNT(*)
         FROM student s
        WHERE s.zip = z.zip) AS student_count
   FROM zipcode z
  WHERE state = 'CT';
spool off