prompt
prompt C) Display the course number, section ID, and starting date and time for sections that start on Tuesdays.

SELECT course_no, section_id,
TO_CHAR(start_date_time, 'DY DD-MON-YYYY')
FROM section
WHERE TO_CHAR(start_date_time, 'DY') = 'TUE';
dbms_output.put_line('--Sergio Gabriel Sanchez Valencia');