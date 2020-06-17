 DECLARE
    v_sid      student.student_id%TYPE; 
    CURSOR c_student IS
       SELECT student_id
         FROM student
        WHERE student_id < 110;
 BEGIN
    OPEN c_student;
    LOOP
      FETCH c_student INTO v_sid;
      EXIT WHEN c_student%NOTFOUND;
        DBMS_OUTPUT.PUT_LINE('STUDENT ID : '||v_sid);
   END LOOP;
   CLOSE c_student;
 EXCEPTION
   WHEN OTHERS
   THEN
      IF c_student%ISOPEN
      THEN
         CLOSE c_student;
      END IF;
 END;