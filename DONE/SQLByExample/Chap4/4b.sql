prompt
prompt B) Show the student records that were modified on or before January 22, 2003. Display the date the record was modified
prompt and each students first and last name concatenated in one column.

SELECT first_name||' '||last_name fullname,
TO_CHAR(modified_date, 'DD-MON-YYYY HH:MI P.M.')
"Modified Date and Time"
FROM student
WHERE modified_date < TO_DATE('01/23/2003','MM/DD/YYYY');

dbms_output.put_line('--Sergio Gabriel Sanchez Valencia');