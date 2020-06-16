REM B)
REM For course numbers 20, 120, 122, and 132, display the description, 
REM course number, and prerequisite course number. If the prerequisite 
REM is course number 120, display 200; if the prerequisite is 130, 
REM display 'N/A'. For courses with no prerequisites, display 'None'.
REM Otherwise, list the current prerequisite. The result should look 
REM like the one listed below.

COURSE_NO DESCRIPTION ORIGINAL NEW
--------- ------------------------------ -------- ----
 132 Basics of Unix Admin 130 N/A
 122 Intermediate Java Programming 120 200
 120 Intro to Java Programming 80 80
 20 Intro to Computers None
4 rows selected.

dbms_output.put_line('--Sergio Gabriel Sanchez Valencia');