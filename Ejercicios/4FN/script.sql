drop table carro;

drop table modelo_motor;

drop table modelo_marca;

drop table modelo_color;

drop table modelo_color_adorno;

drop table modelo_color_toldo;

create table carro (
 modelo varchar2 (10),
 color varchar2 (10),
 motor varchar2 (10),
 adorno varchar2 (10),
 toldo varchar2 (10),
 marca varchar2 (10)
);

insert into carro values ('Mustang','Red','F3.2L','white','black','Ford');


insert into carro values ('Mustang','Red','F3.2L','white','white','Ford');


insert into carro values ('Mustang','Red','F3.2L','blue','black','Ford');


insert into carro values ('Mustang','Red','F3.2L','blue','white','Ford');


insert into carro values ('Mustang','Red','F4.5L','white','black','Ford');


insert into carro values ('Mustang','Red','F4.5L','white','white','Ford');


insert into carro values ('Mustang','Red','F4.5L','blue','black','Ford');


insert into carro values ('Mustang','Red','F4.5L','blue','white','Ford');


insert into carro values ('Mustang','white','F3.2L','red','white','Ford');


insert into carro values ('Mustang','white','F3.2L','red','red','Ford');


insert into carro values ('Mustang','white','F3.2L','black','white','Ford');


insert into carro values ('Mustang','white','F3.2L','black','red','Ford');


insert into carro values ('Mustang','white','F4.5L','red','white','Ford');


insert into carro values ('Mustang','white','F4.5L','red','red','Ford');


insert into carro values ('Mustang','white','F4.5L','black','white','Ford');


insert into carro values ('Mustang','white','F4.5L','black','red','Ford');


insert into carro values ('Mustang','Blue','F3.2L','white','black','Ford');


insert into carro values ('Mustang','Blue','F3.2L','white','white','Ford');


insert into carro values ('Mustang','Blue','F3.2L','yellow','black','Ford');


insert into carro values ('Mustang','Blue','F3.2L','yellow','white','Ford');


insert into carro values ('Mustang','Blue','F4.5L','white','black','Ford');


insert into carro values ('Mustang','Blue','F4.5L','white','white','Ford');


insert into carro values ('Mustang','Blue','F4.5L','yellow','black','Ford');


insert into carro values ('Mustang','Blue','F4.5L','yellow','white','Ford');


insert into carro values ('Cirrus','Red','C2.1L','white','black','Chrysler');


insert into carro values ('Cirrus','Red','C2.1L','white','blue','Chrysler');


insert into carro values ('Cirrus','Red','C2.1L','black','black','Chrysler');


insert into carro values ('Cirrus','Red','C2.1L','black','blue','Chrysler');


insert into carro values ('Cirrus','Red','C3.0L','white','black','Chrysler');


insert into carro values ('Cirrus','Red','C3.0L','white','blue','Chrysler');


insert into carro values ('Cirrus','Red','C3.0L','black','black','Chrysler');


insert into carro values ('Cirrus','Red','C3.0L','black','blue','Chrysler');


insert into carro values ('Cirrus','Green','C2.1L','white','brown','Chrysler');


insert into carro values ('Cirrus','Green','C2.1L','white','white','Chrysler');


insert into carro values ('Cirrus','Green','C2.1L','brown','brown','Chrysler');


insert into carro values ('Cirrus','Green','C2.1L','brown','white','Chrysler');


insert into carro values ('Cirrus','Green','C3.0L','white','brown','Chrysler');


insert into carro values ('Cirrus','Green','C3.0L','white','white','Chrysler');


insert into carro values ('Cirrus','Green','C3.0L','brown','brown','Chrysler');


insert into carro values ('Cirrus','Green','C3.0L','brown','white','Chrysler');

create table modelo_motor (
 modelo varchar2 (10),
 motor varchar2 (10)
);

insert into modelo_motor select distinct(modelo), motor from carro;


select * from modelo_motor;                                                             


create table modelo_marca(
 modelo varchar2 (10),
 marca varchar2 (10)
);

insert into modelo_marca select distinct(modelo), marca from carro;


select * from modelo_marca;                                                             


create table modelo_color(
 modelo varchar2 (10),
 color varchar2 (10)
);


insert into modelo_color select distinct(modelo), color from carro;


select * from modelo_color;                                                              


create table  modelo_color_adorno (
 modelo varchar2 (10),
 color varchar2 (10),
 adorno varchar2 (10)
);

insert into modelo_color_adorno select distinct(modelo), color, adorno from carro;

select * from modelo_color_adorno;


create table modelo_color_toldo (
  modelo varchar2 (10),
  color varchar2 (10),
  toldo varchar2 (10)
);

insert into modelo_color_toldo select distinct(modelo), color, toldo from carro;

select * from modelo_color_toldo;


select * from modelo_motor order by 1,2;                                                  

select * from modelo_marca order by 1,2;                                                

select * from modelo_color order by 1,2;                                                         

select * from modelo_color_adorno order by 1,2;

select * from modelo_color_toldo order by 1,2;

spool off
 
