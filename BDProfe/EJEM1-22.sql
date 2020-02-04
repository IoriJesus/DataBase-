column parameter format A25;
column value format A40 wrapped;
set space 7;
select parameter ,
       value
 from 
		nls_session_parameters;
 
 select sysdate from dual;
  
 alter session set NLS_DATE_FORMAT = "DAY DD-MONTH-YYYY";
  select sysdate from dual;
 alter session set NLS_LANGUAGE = 'ENGLISH';
  select sysdate from dual;
 alter session set NLS_LANGUAGE = 'FRENCH';
  select sysdate from dual;
 alter session set NLS_LANGUAGE = 'SPANISH';
  select sysdate from dual;

 DEFINE GNAME=Sergio
 set sqlprompt '&GNAME>'
 REM  DESPLEGAR VARIAS FECHAS
select to_char(sysdate,'J') from dual;
select to_char(to_date('30-03-14'),'J') from dual;
select to_char(SYSTIMESTAMP,'J') from dual;				  
select systimestamp from dual;
select sysdate, systimestamp from dual;	
 set sqlprompt 'SQL>'
CLEAR COLUMNS
COLUMN FECHA1 FORMAT A20;
COLUMN FECHA2 FORMAT A32;
	select sysdate FECHA1, systimestamp FECHA2 from dual;
	
REM     EL 1 DE ENERO DEL AÑO 4712 AC

	select 
	TO_CHAR(TO_DATE('1-Ene--4712 12:00 pm','dd-Mon-syyyy hh:mi am'), 'J') 
	from dual;
Rem    	EL 1 DE ENERO DEL AÑO 1 DE NUESTRA ERA	
		select 
	TO_CHAR(TO_DATE('1-Ene-1 12:00 pm','dd-Mon-syyyy hh:mi am'), 'J') 
	from dual;
rem      EL 12 DE FEBRERO DE 2018	
	select 
	TO_CHAR(TO_DATE('12-fEB-2018 7:00 Am','dd-Mon-yyyy hh:mi am'), 'J') FECHA
	from dual;
REM los dias recortados por Gregorio VII	
	select 
	TO_CHAR(TO_DATE('04-Oct-1582 3:50 pm','dd-Mon-yyyy hh:mi am'), 'J') 
	from dual;
REM los dias recortados por Gregorio VII
	select 
	TO_CHAR(TO_DATE('10-Oct-1582 3:50 pm','dd-Mon-yyyy hh:mi am'), 'J') 
	from dual;
REM los dias recortados por Gregorio VII
	select 
	TO_CHAR(TO_DATE('15-Oct-1582 3:50 pm','dd-Mon-yyyy hh:mi am'), 'J') 
	from dual;
REM   encontrar diferencia entre fechas 
	select 
	TO_CHAR(TO_DATE('12-Feb-2018 7:00 Am','dd-Mon-yyyy hh:mi am'), 'J') FECHA1,
	TO_CHAR(TO_DATE('29-Ene-2018 7:00 Am','dd-Mon-yyyy hh:mi am'), 'J') FECHA2,
	(TO_DATE('12-Feb-2018 7:00 Am','dd-Mon-yyyy hh:mi am') -
	TO_DATE('29-Ene-2018 7:00 Am','dd-Mon-yyyy hh:mi am'))  "Dias |Transcurridos"
	from dual;	
	
	