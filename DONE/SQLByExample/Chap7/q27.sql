spool C:\Users\Marlene\Desktop\BaseDatos\Capitulo7_Subqueries.txt

REM Inline Views And Scalar Subquery Expressions
REM Inline Views

SELECT enr.num_enrolled "Enrollments",
        enr.num_enrolled * c.cost "Actual Revenue",
        cap.capacity "Total Capacity",
        cap.capacity * c.cost "Potential Revenue"
   FROM (SELECT COUNT(*) num_enrolled
           FROM enrollment e, section s
          WHERE s.course_no = 20
            AND s.section_id = e.section_id) enr,
        (SELECT SUM(capacity) capacity
           FROM section
          WHERE course_no = 20) cap,
        course c
  WHERE c.course_no = 20;
spool off