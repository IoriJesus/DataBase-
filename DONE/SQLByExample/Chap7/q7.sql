spool C:\Users\Marlene\Desktop\BaseDatos\Capitulo7_Subqueries.txt

REM Subqueries
REM Simple Subqueries
REM Nesting Multiple Subqueries

SELECT last_name, first_name
   FROM student
  WHERE student_id IN
        (SELECT student_id
           FROM enrollment
          WHERE section_id IN
                (SELECT section_id
                   FROM section
                  WHERE section_no = 8
                    AND course_no = 20));
spool off