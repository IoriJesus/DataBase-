spool C:\Users\Marlene\Desktop\BaseDatos\Capitulo7_Subqueries.txt

REM Correlated Subqueries
REM Correlated Subqueries
REM Select A Row From Ther Outer Query

SELECT student_id, section_id, numeric_grade
   FROM grade outer
  WHERE grade_type_code = 'PJ';
spool off