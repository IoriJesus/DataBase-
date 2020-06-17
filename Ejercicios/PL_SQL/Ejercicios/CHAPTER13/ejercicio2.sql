CREATE OR REPLACE TRIGGER instructor_aud
AFTER UPDATE OR DELETE ON INSTRUCTOR
DECLARE
   v_trans_type VARCHAR2(10); 
BEGIN
   v_trans_type := CASE
                      WHEN UPDATING THEN 'UPDATE'
                      WHEN DELETING THEN 'DELETE'
                    END;
   
   INSERT INTO audit_trail 
      (TABLE_NAME, TRANSACTION_NAME, TRANSACTION_USER, TRANSACTION_DATE)
   VALUES 
      ('INSTRUCTOR', v_trans_type, USER, SYSDATE);
END; 