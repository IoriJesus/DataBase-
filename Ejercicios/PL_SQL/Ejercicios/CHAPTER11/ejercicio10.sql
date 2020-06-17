SET SERVEROUTPUT ON
DECLARE
   CURSOR c_student_enroll IS
      SELECT s.student_id, first_name, last_name,
             COUNT(*) enroll,
             (CASE  
                  WHEN count(*) = 1 Then ' class.'
                  WHEN count(*) is null then 
                               ' no classes.'
                  ELSE ' classes.'
              END) class                     
        FROM student s, enrollment e
       WHERE s.student_id = e.student_id
         AND s.student_id <110
       GROUP BY s.student_id, first_name, last_name;
   r_student_enroll    c_student_enroll%ROWTYPE;
BEGIN
   OPEN c_student_enroll;
   LOOP
      FETCH c_student_enroll INTO r_student_enroll;
      EXIT WHEN c_student_enroll%NOTFOUND;
      DBMS_OUTPUT.PUT_LINE('Student INFO: ID '||
         r_student_enroll.student_id||' is '||
         r_student_enroll.first_name|| ' ' ||
         r_student_enroll.last_name||
         ' is enrolled in '||r_student_enroll.enroll||
         r_student_enroll.class);
   END LOOP;
   CLOSE c_student_enroll;
EXCEPTION
   WHEN OTHERS
   THEN
    IF c_student_enroll %ISOPEN
      THEN
    CLOSE c_student_enroll;
    END IF;
END;