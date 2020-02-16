prompt
prompt F) Display the day of the week when the sections 146, 127, 121, 155, 110, 85, and 148 start. Order the result by
prompt the day of the week starting with Sunday.

SELECT 'Section '||section_id||' begins on '||
TO_CHAR(start_date_time, 'fmDay')||'.' AS "Start"
FROM section
WHERE section_id IN (146, 127, 121, 155, 110, 85, 148)
ORDER BY TO_CHAR(start_date_time, 'D');