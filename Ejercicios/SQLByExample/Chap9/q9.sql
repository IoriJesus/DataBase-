spool C:\Users\Marlene\Desktop\BaseDatos\Capitulo9_Complex_Joins.txt

REM FULL OUTER JOIN
REM ANSI FULL OUTER JOIN

SELECT col1, col2
   FROM t1 FULL OUTER JOIN t2
     ON t1.col1 = t2.col2;
spool off