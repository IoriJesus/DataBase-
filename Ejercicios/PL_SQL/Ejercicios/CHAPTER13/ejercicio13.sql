CREATE TABLE course_cost_log
   (course_no NUMBER
   ,cost      NUMBER
   ,modified_by VARCHAR2(30)
   ,modified_date DATE)
/

CREATE OR REPLACE TRIGGER course_au
AFTER UPDATE ON COURSE
FOR EACH ROW
WHEN (NEW.COST <> OLD.COST)
BEGIN
   INSERT INTO course_cost_log
      (course_no, cost, modified_by, modified_date)
   VALUES
      (:old.course_no, :old.cost, USER, SYSDATE);
END;