SET SERVEROUTPUT ON;
DECLARE
   TYPE instructor_info IS RECORD
      (first_name instructor.first_name%TYPE,
       last_name instructor.last_name%TYPE,
       sections NUMBER);
   rv_instructor instructor_info;
BEGIN
   SELECT RTRIM(i.first_name), 
          RTRIM(i.last_name), COUNT(*)
     INTO rv_instructor
     FROM instructor i, section s
    WHERE i.instructor_id = s.instructor_id
      AND i.instructor_id = 102
   GROUP BY i.first_name, i.last_name;
   DBMS_OUTPUT.PUT_LINE('Instructor, '||
      rv_instructor.first_name|| 
    ' '||rv_instructor.last_name||
      ', teaches '||rv_instructor.sections|| 
        ' section(s)');
EXCEPTION
   WHEN NO_DATA_FOUND THEN
      DBMS_OUTPUT.PUT_LINE
           ('There is no such instructor');
END;