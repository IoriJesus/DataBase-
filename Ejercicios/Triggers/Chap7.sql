 
CREATE TABLE temp (N NUMBER);

CREATE OR REPLACE TRIGGER temp_ais
AFTER INSERT ON TEMP
BEGIN
dbms_output.put_line('executing temp_ais');
END;


INSERT INTO temp VALUES (1);

INSERT INTO temp VALUES (1);

INSERT INTO temp SELECT * FROM temp;

CREATE OR REPLACE TRIGGER temp_biuds
BEFORE INSERT OR UPDATE OR DELETE ON TEMP
BEGIN
CASE
WHEN inserting THEN
PL/SQL code here
WHEN updating THEN
PL/SQL code here
WHEN deleting THEN
PL/SQL code here
END CASE;
END;

CREATE OR REPLACE PACKAGE
 errors IS
eng_dept_sal CONSTANT
 PLS_INTEGER := -20001;
app_error_02 CONSTANT
 PLS_INTEGER := -20002;
app_error_03 CONSTANT
 PLS_INTEGER := -20003;
eng_dept_sal_txt CONSTANT VARCHAR2(100) :=
'The salary exceeds the ENGL maximum of $10,000.00';
app_error_02_txt CONSTANT VARCHAR2(100) :=
'No additions if the budget exceeds $55,000.00';
app_error_03_txt CONSTANT VARCHAR2(100) :=
'Budget cannot be over $60,000.00';
END errors;

CREATE OR REPLACE PACKAGE professors_cons IS
PROCEDURE constrain_budget
(limit NUMBER,err_code PLS_INTEGER,err_text
VARCHAR2);
END professors_cons;
CREATE OR REPLACE PACKAGE BODY professors_cons IS
PROCEDURE constrain_budget
(limit NUMBER,err_code PLS_INTEGER,err_text
VARCHAR2)
IS
budget_sum NUMBER;
BEGIN
SELECT SUM(salary) INTO budget_sum FROM
professors;
IF budget_sum > limit THEN
RAISE_APPLICATION_ERROR(err_code, err_text);
END IF;
END constrain_budget;
END professors_cons;



CREATE OR REPLACE TRIGGER professors_bis
BEFORE INSERT OR UPDATE ON professors
BEGIN
professors_cons.constrain_budget
(55000, errors.budget_err_1, errors.budget_err_1_txt);


END;
errors.budget_err_1_txt);
CREATE OR REPLACE TRIGGER professors_ais
AFTER INSERT OR UPDATE ON professors
BEGIN
professors_cons.constrain_budget
(60000, errors.budget_err_2,
errors.budget_err_2_txt);
END;


INSERT INTO professors VALUES
('Smith', 'Mathematics', SYSDATE,
10000.00, 'YES','MATH');

INSERT INTO professors VALUES
('Smith', 'Mathematics', SYSDATE,
5000.00, 'YES','MATH');


CREATE global temporary TABLE professors_g
(prof_name
 VARCHAR2(10),
specialty
 VARCHAR2(20),
hire_date
 DATE,
salary
 NUMBER(7,2),
tenure
 VARCHAR2(3),
department
 VARCHAR2(10)) ON COMMIT DELETE ROWS;



CREATE OR REPLACE PACKAGE professors_cons IS
PROCEDURE load_temp_table
(v_prof_name professors.prof_name%TYPE,
v_specialty professors.specialty%TYPE,
v_hire_date professors.hire_date%TYPE,
v_salary
 professors.salary%TYPE,
v_tenure
 professors.tenure%TYPE,
v_department professors.department%TYPE);
ENDPROCEDURE dump_temp_table;
professors_cons;

CREATE OR REPLACE PACKAGE BODY professors_cons IS
PROCEDURE load_temp_table
(v_prof_name professors.prof_name%TYPE,
v_specialty professors.specialty%TYPE,
v_hire_date professors.hire_date%TYPE,
v_salary
 professors.salary%TYPE,
v_tenure
 professors.tenure%TYPE,
v_department professors.department%TYPE)
IS
BEGIN
INSERT INTO professors_g VALUES
(v_prof_name, v_specialty, v_hire_date,
v_salary, v_tenure, v_department);
END load_temp_table;
PROCEDURE dump_temp_table IS
BEGIN
FOR rec in (SELECT * FROM professors_g) LOOP
dbms_output.put_line(
rec.prof_name||' '||rec.specialty||' '||
rec.hire_date||' '||rec.salary||' '||
rec.tenure||' '||rec.department);
END LOOP;
END dump_temp_table;
END professors_cons;

CREATE OR REPLACE TRIGGER professors_adr
AFTER DELETE ON professors
FOR EACH ROW
BEGIN
professors_cons.load_temp_table
(:old.prof_name, :old.specialty, :old.hire_date,
:old.salary, :old.tenure, :old.department);
END;


CREATE OR REPLACE TRIGGER professors_ads
AFTER DELETE ON professors
BEGIN
professors_cons.dump_temp_table;
END;

DELETE FROM professors;

