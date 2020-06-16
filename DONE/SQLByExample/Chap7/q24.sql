spool C:\Users\Marlene\Desktop\BaseDatos\Capitulo7_Subqueries.txt

REM Avoiding Incorrect Results Thoriugh The Use Of Subqueries

SELECT s.section_id, s.capacity, e.student_id,
        s.course_no
   FROM enrollment e, section s
  WHERE e.section_id = s.section_id
    AND s.course_no = 20
  ORDER BY section_id;
spool off