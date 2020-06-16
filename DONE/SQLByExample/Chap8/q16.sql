spool C:\Users\Marlene\Desktop\BaseDatos\Capitulo8_Set_Operators.txt

REM Chapter 8.Set Operators
REM The MINUS And INTERSECT SET Operators
REM Execution Order Of Set Operations
SELECT col1
   FROM t1
 UNION ALL
 (SELECT col2
   FROM t2
 MINUS
 SELECT col3
   FROM t3);
spool off