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



SET COLSEP ' ||  ';
SET PAGESIZE 99;
SET LINESIZE 150;

DROP TABLE R;
create table R (
A varchar2(2),
B varchar2(2),
C varchar2(2),
D varchar2(2));


insert into R values('al', 'b1', 'c2', 'd1');
insert into R values('a2', 'b2', 'c1', 'd2');
insert into R values('a3', 'b1', 'c2', 'd1');
insert into R values('a4', 'b1', 'c2', 'd3');

ALTER TABLE R  ADD CONSTRAINT UNICO_1 UNIQUE
      (A) NOT NULL;
    
    ALTER TABLE R  ADD CONSTRAINT UNICO_A UNIQUE (A);
    ALTER TABLE R  ADD CONSTRAINT UNICO_B UNIQUE (B);
    ALTER TABLE R  ADD CONSTRAINT UNICO_C UNIQUE (C);
    ALTER TABLE R  ADD CONSTRAINT UNICO_D UNIQUE (D);

REM DESPLIEGA ATRIBUTOS DE LA VISTA   "COL"

COLUMN TNAME FORMAT A5;
COLUMN COLNO FORMAT 999;
COLUMN NULLS FORMAT A10;
COLUMN CNAME FORMAT A15;
COLUMN DEFAULTVAL FORMAT A10;   
DESC COL;
SELECT TNAME, COLNO,CNAME, NULLS, DEFAULTVAL
       FROM COL;
REM despliega vistas del dict similares a cons & 
REM       columns
REM      
DESC DICT;
COLUMN TABLE_NAME FORMAT A25;
COLUMN COMMENTS   FORMAT A45 WRAPPED;
SELECT TABLE_NAME, COMMENTS FROM DICT
   WHERE TABLE_NAME LIKE '%CONSTRAINT%';
SELECT TABLE_NAME, COMMENTS FROM DICT
   WHERE TABLE_NAME LIKE '%COLUMN%'
      AND TABLE_NAME LIKE '%CONS%';
REM  Despliega restriciones y columnas
    
COLUMN OWNER FORMAT A10
COLUMN CONSTRAINT_NAME FORMAT A18;
COLUMN TABLE_NAME FORMAT A5;
COLUMN COLUMN_NAME FORMAT A15;
SELECT OWNER, CONSTRAINT_NAME, TABLE_NAME, COLUMN_NAME
       FROM USER_CONS_COLUMNS;
     
REM  Borrar una restriccion 
ALTER TABLE R DROP CONSTRAINT UNICO_1;
    
SELECT DISTINCT A
FROM R;
SELECT DISTINCT B
FROM R;
SELECT DISTINCT C
FROM R;
SELECT DISTINCT D
FROM R;  

SELECT COUNT(DISTINCT A)
FROM R;

REM CONSTRAINT UNIQUE

SELECT A FROM R;
SELECT A,B FROM R;
SELECT A,C FROM R;
SELECT A,D FROM R;
SELECT CONCAT(A, B) FROM R;
SELECT CONCAT(CONCAT(A,' , '), B) "A,    B" FROM R;
SELECT A,B,C FROM R;
SELECT A,B,D FROM R;
SELECT A,B,C,D FROM R;
SELECT B,C,D FROM R;
SELECT C,D FROM R;
 
 REM  TABLA TEMP
 CREATE  TABLE TEMP_DF (DF VARCHAR2(15));
 
 INSERT INTO TEMP_DF (DF)
  SELECT CONCAT(CONCAT(A,' , '), B) "A,    B" FROM R;
 
 SELECT DISTINCT (DF) " A,   B" FROM TEMP_DF
  ORDER BY 1;