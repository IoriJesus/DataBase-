spool C:\Users\Marlene\Desktop\BaseDatos\Capitulo9_Complex_Joins.txt

REM Outer JOINS
REM The ANSI OUTER JOIN

SELECT course_no, description,
        section_id
   FROM section RIGHT OUTER JOIN course
  USING (course_no)
  ORDER BY course_no;
spool off