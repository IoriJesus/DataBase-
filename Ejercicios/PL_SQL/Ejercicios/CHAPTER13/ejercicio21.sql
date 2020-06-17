CREATE OR REPLACE TRIGGER section_bu
BEFORE UPDATE ON SECTION
FOR EACH ROW
DECLARE
   v_valid NUMBER := 0;
BEGIN
   IF :NEW.INSTRUCTOR_ID IS NOT NULL 
   THEN
      SELECT COUNT(*)
        INTO v_valid
        FROM instructor
       WHERE instructor_id = :NEW.instructor_ID;
      
      IF v_valid = 0 
      THEN
         RAISE_APPLICATION_ERROR (-20000, 'This is not a valid instructor');
      END IF;
   END IF;
   
   :NEW.MODIFIED_BY   := USER;
   :NEW.MODIFIED_DATE := SYSDATE;
END;