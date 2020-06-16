spool C:\Users\Marlene\Desktop\BaseDatos\Capitulo9_Complex_Joins.txt

REM WHERE Conditiond and The ANSI OUTER JOINS

SELECT c.course_no cno, s.course_no sno,
         c.description,
         c.prerequisite prereq,
         s.location loc, s.section_id
    FROM course c LEFT OUTER JOIN section s
      ON c.course_no = s.course_no
   WHERE c.prerequisite = 350
     AND location = 'L507';
spool off