DECLARE
   CURSOR c_student IS
      SELECT student_id, last_name, first_name
        FROM student
       WHERE student_id < 110;
BEGIN
   FOR r_student IN c_student
   LOOP
      INSERT INTO table_log
         VALUES(r_student.last_name);
   END LOOP;
END;
SELECT * from table_log;