SET SERVEROUTPUT ON
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
      IF c_student%FOUND THEN
      DBMS_OUTPUT.PUT_LINE
        ('Just FETCHED row '   
          ||TO_CHAR(c_student%ROWCOUNT)||
          ' Student ID: '||v_sid);
      ELSE 
        EXIT;
      END IF;
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