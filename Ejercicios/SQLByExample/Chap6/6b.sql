prompt
prompt B) Select the first and last names of all enrolled students and order by last name in ascending order.

SELECT s.first_name, s.last_name, s.student_id
FROM student s, enrollment e
WHERE s.student_id = e.student_id
ORDER BY s.last_name
