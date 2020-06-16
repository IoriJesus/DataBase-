spool C:\Users\Marlene\Desktop\BaseDatos\Capitulo7_Subqueries.txt

REM Subqueries
REM Simple Subqueries
REM Subqueries and NULLS

SELECT course_no, prerequisite
    FROM course
   WHERE prerequisite NOT IN (80, NULL);
spool off