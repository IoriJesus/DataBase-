spool C:\Users\Marlene\Desktop\BaseDatos\Capitulo9_Complex_Joins.txt

REM SELF-JOINS
REM The NON-EQUIJOIN

SELECT grade_type_code, numeric_grade, letter_grade
   FROM grade g JOIN grade_conversion c
     ON (g.numeric_grade BETWEEN c.min_grade AND c.max_grade)
  WHERE g.student_id = 107
  ORDER BY 1, 2 DESC;
spool off