CREATE OR REPLACE TRIGGER student_bi
BEFORE INSERT ON STUDENT
FOR EACH ROW
BEGIN
   :NEW.student_id    := STUDENT_ID_SEQ.NEXTVAL;
   :NEW.created_by    := USER;
   :NEW.created_date  := SYSDATE;
   :NEW.modified_by   := USER;
   :NEW.modified_date := SYSDATE;
END;