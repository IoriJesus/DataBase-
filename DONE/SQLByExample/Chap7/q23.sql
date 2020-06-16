spool C:\Users\Marlene\Desktop\BaseDatos\Capitulo7_Subqueries.txt

REM Avoiding Incorrect Results Thoriugh The Use Of Subqueries

SELECT section_id, capacity
   FROM section
  WHERE course_no = 20;
spool off