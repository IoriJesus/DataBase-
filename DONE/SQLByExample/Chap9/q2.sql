spool C:\Users\Marlene\Desktop\BaseDatos\Capitulo9_Complex_Joins.txt

REM Outer JOINS
REM Missing Rows?

SELECT course_no, description
   FROM course c
  WHERE NOT EXISTS
        (SELECT 'X'
           FROM section
          WHERE c.course_no = course_no);
spool off