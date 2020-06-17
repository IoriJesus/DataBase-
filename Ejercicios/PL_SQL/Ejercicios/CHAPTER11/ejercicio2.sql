DECLARE 
   CURSOR C_MyCursor IS
      SELECT *
        FROM zipcode
       WHERE state = 'NY';