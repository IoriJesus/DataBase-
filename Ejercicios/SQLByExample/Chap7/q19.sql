spool C:\Users\Marlene\Desktop\BaseDatos\Capitulo7_Subqueries.txt

REM Correlated Subqueries
REM The NOT EXISTS Operator

SELECT instructor_id, last_name, first_name, zip
   FROM instructor i
  WHERE NOT EXISTS
        (SELECT 'X'
           FROM section
          WHERE i.instructor_id = instructor_id);
spool off