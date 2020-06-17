CREATE OR REPLACE TRIGGER enrollment_bi
BEFORE INSERT ON ENROLLMENT
FOR EACH ROW
DECLARE
   v_valid NUMBER := 0;
BEGIN
   SELECT COUNT(*)
     INTO v_valid
     FROM student
    WHERE student_id = :NEW.STUDENT_ID;
   
   IF v_valid = 0 
   THEN
      RAISE_APPLICATION_ERROR (-20000, 'This is not a valid student');
   END IF;
   
   SELECT COUNT(*)
     INTO v_valid
     FROM section
    WHERE section_id = :NEW.SECTION_ID;
   
   IF v_valid = 0 
   THEN 
      RAISE_APPLICATION_ERROR (-20001, 'This is not a valid section');
   END IF;

   :NEW.ENROLL_DATE   := SYSDATE;
   :NEW.CREATED_BY    := USER;
   :NEW.CREATED_DATE  := SYSDATE;
   :NEW.MODIFIED_BY   := USER;
   :NEW.MODIFIED_DATE := SYSDATE;
END;