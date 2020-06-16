spool C:\Users\Marlene\Desktop\BaseDatos\Capitulo9_Complex_Joins.txt

REM FULL OUTER JOIN Using The UNION Operator

SELECT col1, col2
   FROM t1, t2
  WHERE t1.col1 = t2.col2(+)
UNION SELECT col1, col2
   FROM t1, t2
  WHERE t1.col1(+) = t2.col2;
spool off 