CREATE VIEW instructor_summary_view 
AS
   SELECT i.instructor_id, COUNT(s.section_id) total_courses
     FROM instructor i
     LEFT OUTER JOIN section s 
       ON (i.instructor_id = s.instructor_id)
   GROUP BY i.instructor_id;