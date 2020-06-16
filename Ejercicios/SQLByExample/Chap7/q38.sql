spool C:\Users\Marlene\Desktop\BaseDatos\Capitulo7_Subqueries.txt

REM Inline Views And Scalar Subquery Expressions
REM Scalar Subquery Expressions
REM Scalar Subquery Expressions And Functions

SELECT student_id, section_id,
        UPPER((SELECT last_name
                 FROM student
                WHERE student_id = e.student_id))
        "Last Name in Caps"
   FROM enrollment e
  WHERE student_id BETWEEN 100 AND 110;
spool off