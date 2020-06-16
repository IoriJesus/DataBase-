spool C:\Users\Marlene\Desktop\BaseDatos\Capitulo7_Subqueries.txt

REM Avoiding Incorrect Results Thoriugh The Use Of Subqueries

SELECT course_no, SUM(capacity)
   FROM section s
  WHERE EXISTS
        (SELECT NULL
           FROM enrollment e, section sect
          WHERE e.section_id = sect.section_id
            AND sect.course_no = s.course_no)
  GROUP BY course_no;
spool off