REM a)
REM Execute the following SQL statement. 
REM Based on the result, what is the purpose of the
REM INITCAP function? 

SELECT description "Description",
 INITCAP(description) "Initcap Description"
 FROM course
 WHERE description LIKE '%SQL%'; 