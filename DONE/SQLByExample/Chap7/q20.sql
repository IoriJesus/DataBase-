spool C:\Users\Marlene\Desktop\BaseDatos\Capitulo7_Subqueries.txt

REM Correlated Subqueries
REM NOT EXISTS Verus NOT IN
REM Using NOT EXISTS

SELECT instructor_id, last_name, first_name, zip
   FROM instructor i
  WHERE NOT EXISTS
        (SELECT 'X'
           FROM zipcode
          WHERE i.zip = zip);
spool off 