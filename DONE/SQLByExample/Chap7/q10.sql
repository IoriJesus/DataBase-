spool C:\Users\Marlene\Desktop\BaseDatos\Capitulo7_Subqueries.txt

REM Subqueries
REM Simple Subqueries
REM Subqueries Returning Multiple Columns

SELECT student_id, section_id, numeric_grade
   FROM grade
  WHERE grade_type_code = 'PJ'
    AND (section_id, numeric_grade) IN
        (SELECT section_id, MAX(numeric_grade)
           FROM grade
          WHERE grade_type_code = 'PJ'
          GROUP BY section_id);
spool off