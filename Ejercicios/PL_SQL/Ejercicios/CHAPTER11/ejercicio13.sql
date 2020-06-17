SET SERVEROUTPUT ON
 1    DECLARE
 2       v_zip zipcode.zip%TYPE;
 3       v_student_flag CHAR;
 4       CURSOR c_zip IS
 5          SELECT zip, city, state
 6            FROM zipcode
 7           WHERE state = 'CT';
 8       CURSOR c_student IS
 9          SELECT first_name, last_name
10            FROM student
11           WHERE zip = v_zip;
12    BEGIN
13       FOR r_zip IN c_zip
14       LOOP
15          v_student_flag := 'N';
16          v_zip := r_zip.zip;
17          DBMS_OUTPUT.PUT_LINE(CHR(10));
18          DBMS_OUTPUT.PUT_LINE('Students living in '||
19             r_zip.city);
20          FOR r_student in c_student
21          LOOP
22             DBMS_OUTPUT.PUT_LINE(
23                r_student.first_name||
24                ' '||r_student.last_name);
25             v_student_flag := 'Y';
26          END LOOP;
27          IF v_student_flag = 'N'
28             THEN
29             DBMS_OUTPUT.PUT_LINE
                  ('No Students for this zipcode');
30          END IF;
31       END LOOP;
32  END; 