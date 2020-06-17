SET SERVEROUTPUT ON; 
DECLARE
   v_first_name VARCHAR2(35);
   v_last_name VARCHAR2(35);
BEGIN
   SELECT first_name, last_name
     INTO v_first_name, v_last_name
     FROM student
    WHERE student_id = 123;
   DBMS_OUTPUT.PUT_LINE ('Student name: '||
      v_first_name||' '||v_last_name);
EXCEPTION
   WHEN NO_DATA_FOUND THEN
      DBMS_OUTPUT.PUT_LINE 
      ('There is no student with student ID 123');
END; 