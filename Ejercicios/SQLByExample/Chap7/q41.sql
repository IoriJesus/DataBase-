spool C:\Users\Marlene\Desktop\BaseDatos\Capitulo7_Subqueries.txt

REM ANY, SOME, and ALL Operators In Subqueries
REM ANY nand SOME

SELECT section_id, numeric_grade
   FROM grade
  WHERE section_id = 84
    AND numeric_grade < ANY (80, 90);
spool off