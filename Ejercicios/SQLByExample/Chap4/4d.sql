prompt
prompt D) List the section ID and starting date and time for all sections that begin and end in July 2003.

SELECT section_id,
TO_CHAR(start_date_time, 'DD-MON-YYYY HH24:MI:SS')
FROM section
WHERE start_date_time >= TO_DATE('07/01/2003', 'MM/DD/YYYY')
AND start_date_time < TO_DATE('08/01/2003', 'MM/DD/YYYY');