prompt
prompt C) Execute the following SQL statement. Explain your observations about the WHERE clause and the resulting output.


SELECT
 c.course_no, c.description, s.section_no
FROM
 course c, section s
WHERE
 c.course_no = s.course_no
AND
 c.prerequisite IS NULL
ORDER
 BY c.course_no, s.section_no;

prompt Answer: This query includes both a join condition and a condition that restricts the rows
prompt to courses that have no prerequisite. The result is ordered by the course number and
prompt the section number.

dbms_output.put_line('--Sergio Gabriel Sanchez Valencia');