spool C:\Users\Marlene\Desktop\BaseDatos\Capitulo7_Subqueries.txt

REM ANY, SOME, and ALL Operators In Subqueries
REM ALL

SELECT section_id, numeric_grade
   FROM grade
  WHERE section_id = 84
    AND numeric_grade < ALL (80, 90);
spool off