DECLARE
   CURSOR c_group_discount IS
      SELECT DISTINCT s.course_no 
        FROM section s, enrollment e
       WHERE s.section_id = e.section_id
        GROUP BY s.course_no, e.section_id, s.section_id
       HAVING COUNT(*)>=8;
BEGIN
   FOR r_group_discount IN c_group_discount   LOOP
      UPDATE course
         SET cost = cost * .95
       WHERE course_no = r_group_discount.course_no;
   END LOOP;
   COMMIT;
END; 