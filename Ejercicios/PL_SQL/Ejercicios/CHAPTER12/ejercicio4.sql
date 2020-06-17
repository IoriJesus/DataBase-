DECLARE
  CURSOR c_stud_zip IS 
      SELECT s.student_id, z.city
        FROM student s, zipcode z
       WHERE z.city = 'Brooklyn'
         AND s.zip = z.zip
       FOR UPDATE OF phone;
BEGIN
  FOR r_stud_zip IN c_stud_zip
  LOOP
     UPDATE student
        SET phone = '718'||SUBSTR(phone,4)
      WHERE student_id = r_stud_zip.student_id;
  END LOOP;
END;