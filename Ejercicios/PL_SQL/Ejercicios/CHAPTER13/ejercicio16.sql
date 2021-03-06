CREATE OR REPLACE TRIGGER course_bi
BEFORE INSERT ON COURSE
FOR EACH ROW
DECLARE
   v_prerequisite COURSE.COURSE_NO%TYPE;
BEGIN
   IF :NEW.PREREQUISITE IS NOT NULL 
   THEN
      SELECT course_no
        INTO v_prerequisite
        FROM course
       WHERE course_no = :NEW.PREREQUISITE;
   END IF;

   :NEW.COURSE_NO     := COURSE_NO_SEQ.NEXTVAL;
   :NEW.CREATED_BY    := USER;
   :NEW.CREATED_DATE  := SYSDATE;
   :NEW.MODIFIED_BY   := USER;
   :NEW.MODIFIED_DATE := SYSDATE;
EXCEPTION
   WHEN NO_DATA_FOUND 
   THEN
       RAISE_APPLICATION_ERROR (-20002, 'Prerequisite is not valid!');
END;