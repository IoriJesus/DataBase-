DECLARE
  CURSOR c_course IS
     SELECT course_no, cost
       FROM course FOR UPDATE;
BEGIN
   FOR r_course IN c_course
   LOOP
      IF r_course.cost < 2500
      THEN
         UPDATE course
            SET cost = r_course.cost + 10
          WHERE course_no = r_course.course_no;
      END IF;
   END LOOP;
END; 