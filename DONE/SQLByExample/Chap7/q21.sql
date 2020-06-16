spool C:\Users\Marlene\Desktop\BaseDatos\Capitulo7_Subqueries.txt

REM Correlated Subqueries
REM NOT EXISTS Verus NOT IN
REM Using NOT IN

SELECT instructor_id, last_name, first_name, zip
   FROM instructor
  WHERE zip NOT IN
        (SELECT zip
           FROM zipcode);
spool off