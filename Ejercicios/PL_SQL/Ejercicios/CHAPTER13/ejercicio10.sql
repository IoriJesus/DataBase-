CREATE OR REPLACE TRIGGER instructor_bi
BEFORE INSERT ON INSTRUCTOR
FOR EACH ROW
DECLARE
   v_work_zip CHAR(1);
BEGIN
   :NEW.CREATED_BY    := USER;
   :NEW.CREATED_DATE  := SYSDATE;
   :NEW.MODIFIED_BY   := USER;
   :NEW.MODIFIED_DATE := SYSDATE;
   
   SELECT 'Y'
     INTO v_work_zip
     FROM zipcode
    WHERE zip = :NEW.ZIP;
EXCEPTION
   WHEN NO_DATA_FOUND 
   THEN
      RAISE_APPLICATION_ERROR (-20001, 'Zip code is not valid!');
END;