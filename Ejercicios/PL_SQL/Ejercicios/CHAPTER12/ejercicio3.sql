DECLARE
  CURSOR c_grade(
      i_student_id IN enrollment.student_id%TYPE,
      i_section_id IN enrollment.section_id%TYPE)
   IS
      SELECT final_grade
        FROM enrollment
       WHERE student_id = i_student_id
         AND section_id = i_section_id
       FOR UPDATE;
   CURSOR c_enrollment IS
      SELECT e.student_id, e.section_id
        FROM enrollment e, section s
       WHERE s.course_no = 135
         AND e.section_id = s.section_id;
BEGIN
   FOR r_enroll IN c_enrollment
   LOOP
      FOR r_grade IN c_grade(r_enroll.student_id,
                             r_enroll.section_id)
      LOOP
         UPDATE enrollment
            SET final_grade  = 90
          WHERE student_id = r_enroll.student_id
            AND section_id = r_enroll.section_id;
      END LOOP;
   END LOOP;
END; 