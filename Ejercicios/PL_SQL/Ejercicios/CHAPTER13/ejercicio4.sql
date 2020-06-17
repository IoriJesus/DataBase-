CREATE OR REPLACE TRIGGER instructor_biud
BEFORE INSERT OR UPDATE OR DELETE ON INSTRUCTOR
DECLARE
   v_day VARCHAR2(10);
BEGIN
   v_day := RTRIM(TO_CHAR(SYSDATE, 'DAY'));
   
   IF v_day LIKE ('S%') 
   THEN
      RAISE_APPLICATION_ERROR (-20000, 'A table cannot be modified during off hours');  
   END IF; 
END;