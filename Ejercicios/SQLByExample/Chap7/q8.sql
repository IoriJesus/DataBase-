spool C:\Users\mauri\Documents\BD\Oracle_SQL_by_example\Capitulo7_Subqueries\Prueba.txt
SET LINESIZE 150
SET PAGESIZE 99
SET COLSEP ' || '
REM Subqueries
REM Simple Subqueries
REM Subqueries and Joins

SELECT course_no, description
   FROM course
  WHERE course_no IN
        (SELECT course_no
           FROM section
          WHERE location = 'L211');
spool off