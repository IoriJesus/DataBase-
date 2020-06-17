CREATE OR REPLACE TRIGGER course_au
AFTER UPDATE ON COURSE
FOR EACH ROW
WHEN (NVL(NEW.COST, -1) <> NVL(OLD.COST, -1))
BEGIN
   INSERT INTO course_cost_log
      (course_no, cost, modified_by, modified_date)
   VALUES
      (:old.course_no, :old.cost, USER, SYSDATE);
END;