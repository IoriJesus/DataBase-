spool q9_14_febrero.txt
PROMPT DESPLIEGA LOS ATRIBUTOS COUNTRY_ID, SU NOMBRE Y REGION
COLUMN COUNTRY_ID FORMAT A4
COLUMN COUNTRY_NAME FORMAT A14 WORD_WRAPPED
COLUMN REGION FORMAT 99999
SELECT COUNTRY_ID,COUNTRY_NAME,REGION_ID REGION
	FROM COUNTRIES;
spool off