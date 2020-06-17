SET SERVEROUTPUT ON;
DECLARE
   v_city zipcode.city%type; 
BEGIN
   SELECT city
     Into v_city
     from zipcode
    Where zip = 07002;
   if SQL%ROWCOUNT = 1
   then
     Dbms_output.put_line(v_city ||' has a '||
        'zipcode of 07002');
   ELSif SQL%ROWCOUNT = 0
   then
      Dbms_output.put_line('The zipcode 07002 is '||
         ' not in the database');
   ELSE
      Dbms_output.put_line('Stop harassing me');
   END IF;
END;