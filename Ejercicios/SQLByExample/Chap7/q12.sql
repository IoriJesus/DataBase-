spool C:\Users\Marlene\Desktop\BaseDatos\Capitulo7_Subqueries.txt

REM Subqueries
REM Simple Subqueries
REM Subqueries and NULLS

SELECT course_no, prerequisite
    FROM course
   WHERE prerequisite NOT IN
         (SELECT prerequisite
            FROM course
           WHERE course_no IN (310, 220));
spool off