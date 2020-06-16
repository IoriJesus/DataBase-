spool C:\Users\Marlene\Desktop\BaseDatos\Capitulo7_Subqueries.txt

REM Avoiding Incorrect Results Thoriugh The Use Of Subqueries

SELECT s.course_no, SUM(s.capacity)
   FROM enrollment e, section s
  WHERE e.section_id = s.section_id
  GROUP BY s.course_no;
spool off