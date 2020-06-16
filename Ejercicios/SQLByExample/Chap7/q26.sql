spool C:\Users\Marlene\Desktop\BaseDatos\Capitulo7_Subqueries.txt

REM Inline Views And Scalar Subquery Expressions
REM Inline Views

SELECT e.student_id, e.section_id, s.last_name
   FROM (SELECT student_id, section_id, enroll_date
           FROM enrollment
          WHERE student_id = 123) e,
         student s
  WHERE e.student_id = s.student_id;
spool off