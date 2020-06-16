spool C:\Users\Marlene\Desktop\BaseDatos\Capitulo7_Subqueries.txt

REM Inline Views And Scalar Subquery Expressions
REM Inline Views

SELECT COUNT(*) num_enrolled
   FROM enrollment e, section s
  WHERE s.course_no = 20
    AND s.section_id = e.section_id;
spool off