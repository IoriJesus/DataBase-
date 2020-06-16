spool C:\Users\Marlene\Desktop\BaseDatos\Capitulo9_Complex_Joins.txt

REM SELF-JOINS

SELECT c1.course_no,
        c1.description course_descr,
        c1.prerequisite,
        c2.description pre_req_descr
   FROM course c1 JOIN course c2
     ON (c1.prerequisite = c2.course_no)
  ORDER BY 3;
spool off