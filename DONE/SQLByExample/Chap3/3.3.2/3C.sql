REM C)
REM Display the student ID, zip code, and phone number for students with 
REM student IDs 145,150, or 325. For those students living in the 212 area 
REM code and in zip code 10048,display 'North Campus'. List students living 
REM in the 212 area code but in a different zip code as 'West Campus'.
REM Display students outside the 212 area code as 'Off Campus'.
REM The result should look like the following output. Hint: The solution to 
REM this query requires nested DECODE functions or nested CASE expressions. 

STUDENT_ID ZIP PHONE LOC
---------- ----- --------------- ------------
 145 10048 212-555-5555 North Campus
 150 11787 718-555-5555 Off Campus
 325 10954 212-555-5555 West Campus
3 rows selected.

dbms_output.put_line('--Sergio Gabriel Sanchez Valencia');