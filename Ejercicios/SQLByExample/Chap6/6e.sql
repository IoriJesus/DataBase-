prompt
prompt E) Select the students and instructors who live in the same zip code by joining on the
prompt common ZIP column. Order the result by the STUDENT_ID and INSTRUCTOR_ID
prompt columns. What do you observe?

SELECT s.student_id, i.instructor_id,
s.zip, i.zip
FROM student s, instructor i
WHERE s.zip = i.zip
ORDER BY s.student_id, i.instructor_id

prompt When you join the STUDENT and INSTRUCTOR tables, there is a many-to-
prompt many relationship, which causes a Cartesian product as a result.
