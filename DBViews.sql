create view vistab0 as select * from employee where bdate > to_date('1957-12-31', 'yyyy-mm-dd');

create view vistab1 as select * from works_on, vistab0 where works_on.essn = vistab0.ssn;

create view vistab2 as select pname, pnumber, plocation, dnumber from project where pname = 'Aquarius';

create view vistab3 as select * from vistab1, vistab2 where pnumber = pno;

create view vistab4 as select lname from vistab3;