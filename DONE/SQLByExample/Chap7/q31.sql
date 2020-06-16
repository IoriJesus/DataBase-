spool C:\Users\Marlene\Desktop\BaseDatos\Capitulo7_Subqueries.txt

REM Inline Views And Scalar Subquery Expressions
REM Inline Views
REM Top-N Query

SELECT ROWNUM, numeric_grade
   FROM (SELECT DISTINCT numeric_grade
           FROM grade
          WHERE section_id = 101
            AND grade_type_code = 'FI'
          ORDER BY numeric_grade DESC)
   WHERE ROWNUM <= 3;
spool off