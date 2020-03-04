prompt
prompt D) Select the student ID, course number, enrollment date, and section ID for students who enrolled in course number 20 on January 30, 2003.

SELECT e.student_id, s.course_no,
TO_CHAR(e.enroll_date,'MM/DD/YYYY HH:MI PM'),
e.section_id
FROM enrollment e JOIN section s
ON (e.section_id = s.section_id)
WHERE s.course_no = 20
AND e.enroll_date >= TO_DATE('01/30/2003','MM/DD/YYYY')
AND e.enroll_date < TO_DATE('01/31/2003','MM/DD/YYYY');
