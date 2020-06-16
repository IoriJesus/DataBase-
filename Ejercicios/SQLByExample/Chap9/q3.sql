spool C:\Users\Marlene\Desktop\BaseDatos\Capitulo9_Complex_Joins.txt

REM Outer JOINS
REM The ANSI OUTER JOIN

SELECT c.course_no, c.description,
        s.section_id, s.course_no
   FROM course c LEFT OUTER JOIN section s
     ON c.course_no = s.course_no
  ORDER BY c.course_no;
spool off