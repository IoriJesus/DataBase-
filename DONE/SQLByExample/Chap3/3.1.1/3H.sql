REM H)
REM The following statement determines how many times the string 'ed' 
REM occurs in the phrase'Fred fed Ted bread, and Ted fed Fred bread.
REM ' Explain how this is accomplished. 
SELECT (
 LENGTH('Fred fed Ted bread, and Ted fed Fred bread.') -
 LENGTH(REPLACE(
 'Fred fed Ted bread, and Ted fed Fred bread.',
'ed', NULL))
 ) /2 AS occurr
 FROM dual
 OCCURR
----------
 6
1 row selected.

dbms_output.put_line('--Sergio Gabriel Sanchez Valencia');