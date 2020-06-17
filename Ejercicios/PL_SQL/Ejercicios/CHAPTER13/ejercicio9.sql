CREATE OR REPLACE TRIGGER instructor_summary_del
INSTEAD OF DELETE ON instructor_summary_view
FOR EACH ROW
BEGIN
   DELETE FROM section
    WHERE instructor_id = :OLD.INSTRUCTOR_ID;
   DELETE FROM instructor
    WHERE instructor_id = :OLD.INSTRUCTOR_ID;
END;