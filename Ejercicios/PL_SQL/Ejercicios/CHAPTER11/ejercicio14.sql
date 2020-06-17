SET SERVEROUTPUT ON
DECLARE
   v_sid student.student_id%TYPE;
   CURSOR c_student IS
      SELECT student_id, first_name, last_name
        FROM student
       WHERE student_id < 110;
   CURSOR c_course IS
      SELECT c.course_no, c.description
        FROM course c, section s, enrollment e
       WHERE c.course_no = s.course_no
         AND s.section_id = e.section_id
         AND e.student_id = v_sid;
BEGIN
   FOR r_student IN c_student 
   LOOP
      v_sid := r_student.student_id;
      DBMS_OUTPUT.PUT_LINE(chr(10));
      DBMS_OUTPUT.PUT_LINE(' The Student '||
         r_student.student_id||' '||
         r_student.first_name||' '||
         r_student.last_name);
      DBMS_OUTPUT.PUT_LINE(' is enrolled in the '||
         'following courses: ');
      FOR r_course IN c_course
      LOOP
         DBMS_OUTPUT.PUT_LINE(r_course.course_no||
            '   '||r_course.description);
      END LOOP;
   END LOOP;
END; 