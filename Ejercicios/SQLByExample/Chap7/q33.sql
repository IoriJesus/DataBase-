spool C:\Users\Marlene\Desktop\BaseDatos\Capitulo7_Subqueries.txt

REM Inline Views And Scalar Subquery Expressions
REM Scalar Subquery Expressions
REM Scalar Subquery Expressions In The SELECT Clause

SELECT student_id, last_name,
        (SELECT state
           FROM zipcode z
          WHERE z.zip = s.zip) AS state
   FROM student s
  WHERE student_id BETWEEN 100 AND 120;
spool off