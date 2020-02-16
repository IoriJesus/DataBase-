SELECT first_name||' '||last_name fullname,
TO_CHAR(modified_date, 'DD-MON-YYYY HH:MI P.M.')
"Modified Date and Time"
FROM student
WHERE modified_date < TO_DATE('01/23/2003','MM/DD/YYYY');