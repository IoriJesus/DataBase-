spool q5_14_febrero.txt
PROMPT DESPLIEGA A LOS EMPLEADOS CON SALARIO ENTRE 4000 Y 7000
COLUMN EMP_NO FORMAT 9999
COLUMN FIRST_NAME FORMAT A10
COLUMN APELLIDO FORMAT A12 JUSTIFY CENTER
COLUMN Jefe FORMAT 99999
COLUMN SALARY FORMAT $99,9999.00
SELECT EMPLOYEE_ID EMP_NO, FIRST_NAME, LAST_NAME APELLIDO, MANAGER_ID "Jefe", SALARY
	FROM EMPLOYEES
	WHERE SALARY BETWEEN 4000 AND 7000
	ORDER BY 3;
spool off