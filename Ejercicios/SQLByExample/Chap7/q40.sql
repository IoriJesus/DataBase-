spool C:\Users\Marlene\Desktop\BaseDatos\Capitulo7_Subqueries.txt

REM ANY, SOME, and ALL Operators In Subqueries

SELECT section_id, numeric_grade
   FROM grade
  WHERE section_id = 84
    AND numeric_grade IN (77, 99);
spool off