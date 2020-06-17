SET SERVEROUTPUT ON
DECLARE
   vr_student student%ROWTYPE;
BEGIN
   SELECT *
     INTO vr_student
     FROM student
    WHERE student_id = 156;
   DBMS_OUTPUT.PUT_LINE (vr_student.first_name||' '
      ||vr_student.last_name||' has an ID of 156');
EXCEPTION
   WHEN no_data_found
      THEN
           RAISE_APPLICATION_ERROR(-2001,'The Student '||
            'is not in the database');
END; 
