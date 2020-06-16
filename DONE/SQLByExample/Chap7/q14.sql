spool C:\Users\Marlene\Desktop\BaseDatos\Capitulo7_Subqueries.txt

REM Correlated Subqueries
REM Correlated Subqueries

SELECT student_id, section_id, numeric_grade
   FROM grade outer
  WHERE grade_type_code = 'PJ'
    AND numeric_grade = 
       (SELECT MAX(numeric_grade)
           FROM grade
          WHERE grade_type_code = outer.grade_type_code
            AND section_id = outer.section_id);
spool off