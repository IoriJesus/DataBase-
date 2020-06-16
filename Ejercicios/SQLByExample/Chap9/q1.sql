spool C:\Users\Marlene\Desktop\BaseDatos\Capitulo9_Complex_Joins.txt

REM Outer JOINS
REM Missing Rows?

SELECT course_no, description,
        section_id
   FROM course JOIN section
  USING (course_no)
  ORDER BY course_no;
spool off