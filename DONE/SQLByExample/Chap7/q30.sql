spool C:\Users\Marlene\Desktop\BaseDatos\Capitulo7_Subqueries.txt

REM Inline Views And Scalar Subquery Expressions
REM Inline Views
REM Top-N Query

SELECT last_name, first_name
   FROM student
  WHERE ROWNUM <=5;
spool off