prompt
prompt A) For all students, display last name, city, state, and zip code. Show the result ordered by zip code.
SELECT s.last_name, s.zip, z.state, z.city
FROM student s, zipcode z
WHERE s.zip = z.zip
ORDER BY s.zip
