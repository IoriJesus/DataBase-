CREATE VIEW student_address 
    AS 
       SELECT s.student_id, s.first_name, s.last_name, s.street_address, z.city, z.state
             ,z.zip
         FROM student s
         JOIN zipcode z
           ON (s.zip = z.zip);
/

CREATE OR REPLACE TRIGGER student_address_ins
INSTEAD OF INSERT ON student_address 
FOR EACH ROW
BEGIN 
   INSERT INTO STUDENT 
      (student_id, first_name, last_name, street_address, zip, registration_date
      ,created_by, created_date, modified_by, modified_date)
   VALUES
      (:NEW.student_id, :NEW.first_name, :NEW.last_name, :NEW.street_address, :NEW.zip
      ,SYSDATE, USER, SYSDATE, USER, SYSDATE);
END;