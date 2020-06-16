spool C:\Users\Marlene\Desktop\BaseDatos\Capitulo7_Subqueries.txt

REM Correlated Subqueries
REM Correlated Subqueries

SELECT MAX(numeric_grade)
   FROM grade
  WHERE grade_type_code = 'PJ'
    AND section_id = 133;
spool off