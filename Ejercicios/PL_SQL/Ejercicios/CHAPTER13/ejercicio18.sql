CREATE OR REPLACE TRIGGER student_address_ins
INSTEAD OF INSERT ON student_address 
FOR EACH ROW
DECLARE
   v_zip VARCHAR2(5);
BEGIN
   SELECT zip
     INTO v_zip
     FROM zipcode
    WHERE zip = :NEW.ZIP;

   INSERT INTO STUDENT 
      (student_id, first_name, last_name, street_address, zip, registration_date
      ,created_by, created_date, modified_by, modified_date)
   VALUES
      (:NEW.student_id, :NEW.first_name, :NEW.last_name, :NEW.street_address
      ,:NEW.zip, SYSDATE, USER, SYSDATE, USER, SYSDATE);

EXCEPTION
   WHEN NO_DATA_FOUND 
   THEN
      RAISE_APPLICATION_ERROR (-20002, 'Zip code is not valid!');
END;