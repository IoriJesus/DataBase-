spool q2_14_febrero.txt
PROMPT DESPLIEGA LOS OBJETOS TIPO TABLA E NDEX EN PARA EL USUARIO HR
COLUMN OWNER		FORMAT A10 JUS		CENTER
COLUMN OBJECT_NAME	FORMAT A25 JUSTIFY	CENTER
COLUMN Tipo			FORMAT A10 JUS		CENTER
SELECT OWNER,OBJECT_NAME,OBJECT_TYPE "Tipo"
	FROM ALL_OBJECTS
	WHERE OWNER ='HR'
	AND OBJECT_TYPE = 'TABLE'
	OR OBJECT_TYPE = 'INDEX'
	ORDER BY 3,2;
spool off