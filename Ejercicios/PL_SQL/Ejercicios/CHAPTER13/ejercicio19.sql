CREATE OR REPLACE TRIGGER student_address_ins
INSTEAD OF INSERT ON student_address 
FOR EACH ROW
DECLARE
   v_zip VARCHAR2(5);
BEGIN
   BEGIN
      SELECT zip
        INTO v_zip
        FROM zipcode
       WHERE zip = :NEW.zip;
   EXCEPTION
      WHEN NO_DATA_FOUND 
      THEN
         INSERT INTO ZIPCODE
            (zip, city, state, created_by, created_date, modified_by, modified_date)
         VALUES
            (:NEW.zip, :NEW.city, :NEW.state, USER, SYSDATE, USER, SYSDATE);
   END;
   INSERT INTO STUDENT 
      (student_id, first_name, last_name, street_address, zip, registration_date
      ,created_by, created_date, modified_by, modified_date)
   VALUES
      (:NEW.student_id, :NEW.first_name, :NEW.last_name, :NEW.street_address
      ,:NEW.zip, SYSDATE, USER, SYSDATE, USER, SYSDATE);
END;