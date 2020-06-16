spool C:\Users\Marlene\Desktop\BaseDatos\Capitulo7_Subqueries.txt

REM Inline Views And Scalar Subquery Expressions
REM Inline Views

SELECT SUM(capacity) capacity
   FROM section
  WHERE course_no = 20;
spool off