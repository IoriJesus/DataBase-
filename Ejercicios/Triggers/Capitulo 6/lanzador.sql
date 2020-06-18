
CREATE TABLE temp (N NUMBER);
CREATE OR REPLACE TRIGGER temp_air
AFTER INSERT ON TEMP
FOR EACH ROW
BEGIN
dbms_output.put_line('executing temp_air');
END;

/

INSERT INTO temp VALUES (1);
INSERT INTO temp SELECT * FROM temp;
INSERT INTO temp SELECT * FROM temp;


CREATE OR REPLACE TRIGGER temp_aiur
AFTER INSERT OR UPDATE ON TEMP
FOR EACH ROW
BEGIN
CASE
WHEN inserting THEN
dbms_output.put_line
('executing temp_aiur - insert');
WHEN updating THEN
dbms_output.put_line
('executing temp_aiur - update');
END CASE;
END;

CREATE OR REPLACE TRIGGER temp_aur
AFTER INSERT OR UPDATE OF M, P ON TEMP
FOR EACH ROW
BEGIN
dbms_output.put_line
('after insert or update of m, p');
END;


CREATE OR REPLACE TRIGGER temp_air
AFTER INSERT ON TEMP
FOR EACH ROW
WHEN (NEW.N = 0)
BEGIN
dbms_output.put_line('executing temp_air');
END;


INSERT INTO TEMP VALUES (0);

INSERT INTO TEMP VALUES (2);
INSERT INTO TEMP VALUES (NULL);

CREATE TABLE temp (N NUMBER DEFAULT 0, M NUMBER);


INSERT INTO TEMP (M) VALUES (3);

CREATE OR REPLACE TRIGGER temp_biur
BEFORE INSERT OR UPDATE ON TEMP
FOR EACH ROW
WHEN (OLD.N = 0 AND NEW.N=1 OR NEW.N=1)
BEGIN
dbms_output.put_line('executing temp_biur');
END;

CREATE OR REPLACE TRIGGER temp_aur
AFTER UPDATE ON TEMP
FOR EACH ROW
WHEN (NEW.N BETWEEN 1 AND 10)
BEGIN
dbms_output.put_line('executing temp_aur');
END;


CREATE TABLE TEMP(N NUMBER, M NUMBER DEFAULT 5);
CREATE OR REPLACE TRIGGER temp_bur
BEFORE UPDATE ON TEMP
FOR EACH ROW
BEGIN
dbms_output.put_line('BUR old N:'||:old.n|| ' M:'||:old.M);
dbms_output.put_line('BUR new N:'||:new.n|| ' M:'||:new.M);
END;
CREATE OR REPLACE TRIGGER temp_aur
AFTER UPDATE ON TEMP
FOR EACH ROW
BEGIN
dbms_output.put_line('AUR old N:'||:old.n|| ' M:'||:old.M);
dbms_output.put_line('AUR new N:'||:new.n|| ' M:'||:new.M);
END;

INSERT INTO TEMP (n) VALUES (1);

UPDATE TEMP SET n=n+1 WHERE n>=1;



CREATE OR REPLACE TRIGGER temp_bur
BEFORE UPDATE ON TEMP
FOR EACH ROW
BEGIN
:NEW.N := :NEW.N + 1;
dbms_output.put_line('BUR old N:'||:old.n|| ' M:'||:old.M);
dbms_output.put_line('BUR new N:'||:new.n|| ' M:'||:new.M);
END;


INSERT INTO TEMP (n) VALUES (1);

UPDATE TEMP SET n=n+1 WHERE n>=1;

UPDATE TEMP SET m=2 WHERE M=5;

CREATE TABLE TEMP(X NUMBER, Y NUMBER, Z NUMBER DEFAULT 5);

CREATE OR REPLACE TRIGGER temp_aiur
AFTER INSERT OR UPDATE OF Y ON TEMP
FOR EACH ROW
WHEN (OLD.Y IS NULL and NEW.Y IS NOT NULL
OR NEW.X BETWEEN 1 AND 10)
BEGIN
CASE
WHEN inserting THEN
dbms_output.put_line('X := '||:new.x);
WHEN updating THEN
dbms_output.put_line
('Y is reset from NULL');
END CASE;
END;

CREATE OR REPLACE TRIGGER temp_adr
AFTER DELETE ON TEMP
FOR EACH ROW
BEGIN
dbms_output.put_line
(:old.x||' '||:old.y||' '||:old.z);
END;


CREATE OR REPLACE TRIGGER temp_biudr
BEFORE INSERT OR UPDATE OR DELETE ON TEMP
FOR EACH ROW
BEGIN
CASE
WHEN inserting THEN
dbms_output.put_line('inserting before');
WHEN updating THEN
dbms_output.put_line('updating before');
WHEN deleting THEN
dbms_output.put_line('deleting before');
END CASE;
END;

CREATE OR REPLACE TRIGGER temp_aiudr
AFTER INSERT OR UPDATE OR DELETE ON TEMP
FOR EACH ROW
BEGIN
CASE
WHEN inserting THEN
dbms_output.put_line('inserting after');
WHEN updating THEN
dbms_output.put_line('updating after');
WHEN deleting THEN
dbms_output.put_line('deleting after');
END CASE;
END;


CREATE OR REPLACE TRIGGER professors_bir
BEFORE INSERT ON professors
FOR EACH ROW
DECLARE
msg VARCHAR2(100) :=
'The salary exceeds the ENGL maximum of $10,000.00';
BEGIN
-- --------------------------------------
-- OVERRIDE COLUMN RULES
-- --------------------------------------
-- truncate hours, minutes, seconds of hire date
:NEW.hire_date := TRUNC(:NEW.hire_date);
-- round salary
:NEW.salary := ROUND(:NEW.salary);
-- convert department to upper case
:NEW.department := UPPER(:NEW.department);
-- --------------------------------------
-- REJECT TRANSACTION RULES
-- --------------------------------------
IF :NEW.department='ENGL' AND :NEW.salary > 10000 THEN
RAISE_APPLICATION_ERROR(-20000,msg);
END IF;
-- --------------------------------------
-- TAKE ACTION RULES
-- --------------------------------------
dbms_output.put_line
('Before Insert Row Trigger Action');
END;


CREATE OR REPLACE TRIGGER professors_bir
BEFORE INSERT ON professors
FOR EACH ROW
BEGIN
:NEW.hire_date := TRUNC(:NEW.hire_date);
:NEW.salary := ROUND(:NEW.salary);
:NEW.department := UPPER(:NEW.department);
END;

CREATE OR REPLACE TRIGGER professors_air
AFTER INSERT ON professors
FOR EACH ROW
DECLARE
msg VARCHAR2(100) :=
'The salary exceeds the ENGL maximum of'|| '$10,000.00';
BEGIN
IF :NEW.department='ENGL' AND :NEW.salary > 10000 THEN
RAISE_APPLICATION_ERROR(-20000,msg);
END IF;
dbms_output.put_line
('Before Insert Row Trigger Action');
END;


CREATE OR REPLACE PACKAGE professors_cons IS
FUNCTION salary(sal professors.salary%TYPE)
RETURN professors.salary%TYPE;
FUNCTION hire_date(hd professors.hire_date%TYPE)
RETURN professors.hire_date%TYPE;
FUNCTION department(dept professors.department%TYPE)
RETURN professors.department%TYPE;
PROCEDURE validate_salary
(dept professors.department%TYPE,
sal professors.salary%TYPE);
PROCEDURE print_action;
END professors_cons;

CREATE OR REPLACE TRIGGER professors_bir
BEFORE INSERT ON professors
FOR EACH ROW
BEGIN
:NEW.hire_date :=
professors_cons.hire_date(:NEW.hire_date);
:NEW.salary :=
professors_cons.salary(:NEW.salary);
:NEW.department :=
professors_cons.department(:NEW.department);
END;

CREATE OR REPLACE TRIGGER professors_air
AFTER INSERT ON professors
FOR EACH ROW
BEGIN
professors_cons.validate_salary
(:NEW.department, :NEW.salary);
professors_cons.print_action;
END;


CREATE OR REPLACE PACKAGE BODY professors_cons IS
FUNCTION salary(sal professors.salary%TYPE)
RETURN professors.salary%TYPE IS
BEGIN
RETURN ROUND(sal);
END salary;
FUNCTION hire_date(hd professors.hire_date%TYPE)
RETURN professors.hire_date%TYPE IS
BEGIN
RETURN TRUNC(hd);
END hire_date;
FUNCTION department(dept professors.department%TYPE)
RETURN professors.department%TYPE IS
BEGIN
RETURN UPPER(dept);
END department;
PROCEDURE validate_salary
(dept professors.department%TYPE,
sal professors.salary%TYPE)
IS
msg VARCHAR2(100) :=
'The salary exceeds the ENGL maximum of $10,000.00';
BEGIN
IF dept ='ENGL' AND sal > 10000 THEN
RAISE_APPLICATION_ERROR(-20000,msg);
END IF;
END validate_salary;
PROCEDURE print_action IS
BEGIN
dbms_output.put_line
('Before Insert Row Trigger Action');
END print_action;
END professors_cons;

PROCEDURE validate_salary
(dept professors.department%TYPE,
sal professors.salary%TYPE)
IS
msg VARCHAR2(100) :=
'The salary exceeds the ENGL maximum of'|| '$10,000.00';
BEGIN
IF dept ='ENGL' AND sal > 10000 THEN
RAISE_APPLICATION_ERROR(-20000,msg);
END IF;
END validate_salary;

CREATE OR REPLACE PACKAGE errors IS
eng_dept_sal CONSTANT PLS_INTEGER := -20001;
app_error_02 CONSTANT PLS_INTEGER := -20002;
app_error_03 CONSTANT PLS_INTEGER := -20003;
eng_dept_sal_txt CONSTANT VARCHAR2(100) :=
'The salary exceeds the ENGL maximum of'|| '$10,000.00';
app_error_02_txt CONSTANT VARCHAR2(100) := 'vacant';
app_error_03_txt CONSTANT VARCHAR2(100) := 'vacant';
END errors;

PROCEDURE validate_salary
(dept professors.department%TYPE,
sal professors.salary%TYPE)
IS
BEGIN
IF dept ='ENGL' AND sal > 10000 THEN
RAISE_APPLICATION_ERROR
(errors.eng_dept_sal,
errors.eng_dept_sal_txt);
END IF;
END validate_salary;




































