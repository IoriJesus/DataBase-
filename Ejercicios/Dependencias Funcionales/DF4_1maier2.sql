DROP TABLE R1;
create table R1(
A varchar2(2),
B varchar2(2),
C varchar2(2),
D varchar2(2));


insert into R1 values('al', 'b1', 'c1', 'd1');
insert into R1 values('a2', 'b2', 'c1', 'd1');
insert into R1 values('a1', 'b1', 'c1', 'd2');
insert into R1 values('a4', 'b3', 'c2', 'd3');

select * from R1;


REM FD A -->  B
REM AB --> B, AC --> B, AD --> B, ABC --> B, 
REM ABD -->B, ACD --> B, ABCD --> B.
select A, ' -->  ', B from R1;
 
 REM                     usa la TABLA TEMP_DF 
 
 REM    OBTIENE LA DF    AB --> B
 
 drop table TEMP_DF;
 CREATE  TABLE TEMP_DF 
	(DF_I VARCHAR2(15),
	 DF_D VARCHAR2(15));
	 
 INSERT INTO TEMP_DF (DF_I, DF_D)
	SELECT CONCAT(CONCAT(A,' , '), B), B FROM R1;
	
PROMPT      despliega la               DF  AB --> B

SELECT * FROM TEMP_DF;
/

REM    OBTIENE LA DF    AC --> B
 
 drop table TEMP_DF;
 CREATE  TABLE TEMP_DF 
	(DF_I VARCHAR2(15),
	 DF_D VARCHAR2(15));
	 
 INSERT INTO TEMP_DF (DF_I, DF_D)
	SELECT CONCAT(CONCAT(A,' , '), C), B FROM R1;
	
PROMPT      despliega la               DF  AC --> B

SELECT * FROM TEMP_DF;
/
REM    OBTIENE LA DF    AD --> B
 
 drop table TEMP_DF;
 CREATE  TABLE TEMP_DF 
	(DF_I VARCHAR2(15),
	 DF_D VARCHAR2(15));
	 
 INSERT INTO TEMP_DF (DF_I, DF_D)
	SELECT CONCAT(CONCAT(A,' , '), D), B FROM R1;
	
PROMPT      despliega la               DF  AD --> B

SELECT * FROM TEMP_DF;
/
 drop table TEMP_DF;
 CREATE  TABLE TEMP_DF 
	(DF_I VARCHAR2(15),
	 DF_D VARCHAR2(15));
	 
 INSERT INTO TEMP_DF (DF_I, DF_D)
	SELECT CONCAT(CONCAT(A,' , '), D), B FROM R1;
	
PROMPT      despliega la               DF  AD --> B

SELECT * FROM TEMP_DF;

/

REM    OBTIENE LA DF    ABC --> B
 
 drop table TEMP_DF;
 CREATE  TABLE TEMP_DF 
	(DF_I VARCHAR2(15),
	 DF_D VARCHAR2(15));
	 
 INSERT INTO TEMP_DF (DF_I, DF_D)
	SELECT CONCAT (CONCAT(CONCAT(CONCAT(A,','),B),','),C), B FROM R1;
	
PROMPT      despliega la               DF  ABC --> B

SELECT * FROM TEMP_DF;
/

REM    OBTIENE LA DF    ABD --> B
 
 drop table TEMP_DF;
 CREATE  TABLE TEMP_DF 
	(DF_I VARCHAR2(15),
	 DF_D VARCHAR2(15));
	 
 INSERT INTO TEMP_DF (DF_I, DF_D)
	SELECT CONCAT (CONCAT(CONCAT(CONCAT(A,','),B),','),D), B FROM R1;
	
PROMPT      despliega la               DF  ABD --> B

SELECT * FROM TEMP_DF;
/
REM    OBTIENE LA DF    ACD --> B
 
 drop table TEMP_DF;
 CREATE  TABLE TEMP_DF 
	(DF_I VARCHAR2(15),
	 DF_D VARCHAR2(15));
	 
 INSERT INTO TEMP_DF (DF_I, DF_D)
	SELECT CONCAT (CONCAT(CONCAT(CONCAT(A,','),C),','),D), B FROM R1;
	
PROMPT      despliega la               DF  ACD --> B

SELECT * FROM TEMP_DF;
/

REM    OBTIENE LA DF    ABCD --> B
 
 drop table TEMP_DF;
 CREATE  TABLE TEMP_DF 
	(DF_I VARCHAR2(15),
	 DF_D VARCHAR2(15));
	 
 INSERT INTO TEMP_DF (DF_I, DF_D)
	SELECT CONCAT (
	       CONCAT (
		   CONCAT ( 
		   CONCAT (
		   CONCAT ( 
		   CONCAT (A,',')
		                ,B),','),C),','),D), B 
		FROM R1;
	
PROMPT      despliega la               DF  ABCD --> B

SELECT * FROM TEMP_DF;
/


