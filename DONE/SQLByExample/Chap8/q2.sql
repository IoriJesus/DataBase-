spool C:\Users\Marlene\Desktop\BaseDatos\Capitulo8_Set_Operators.txt

REM Chapter 8.Set Operators
REM The Power Of UNION and UNION ALL
SELECT first_name, last_name, phone, COUNT(*)
   FROM student
  GROUP BY first_name, last_name, phone
 HAVING COUNT(*) > 1;
spool off