spool C:\Users\Marlene\Desktop\BaseDatos\Capitulo9_Complex_Joins.txt

REM Oracle OUTER JOIN Operator Restrictions
REM Conditions and The Oracle OUTER JOIN Operator

SELECT c.course_no cno, s.course_no sno,
        c.description,
        c.prerequisite prereq,
        s.location loc, s.section_id
   FROM course c, section s
  WHERE c.course_no = s.course_no(+)
    AND c.prerequisite = 350
    AND s.location = 'L507';
spool off