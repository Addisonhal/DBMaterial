/*insert complete table into table*/
describe my_office_employees;
insert into my_office_employees values(1,'John','2010-05-01');
select * from my_office_employees;
insert into my_office_employees(id,EmployeeName, DOJ) values(2,'Smith','2018-04-01');
insert into my_office_employees(EmployeeName, DOJ,id) values('Kapil','2018-04-01',4);
insert into my_office_employees(DOJ,id) values('2018-04-01',5);
/*insert data using primary key*/
describe my_office_employees_pk;
insert into my_office_employees_pk values(1,'John','2010-05-01');
select * from my_office_employees_pk;
insert into my_office_employees_pk values(1,'John','2010-05-01'); /*not valid needs a unique primary key value*/
/*insert data using default key*/
describe my_office_employees_df;
insert into my_office_employees_df values(1,'John','2010-05-01');
select * from my_office_employees_df;
insert into my_office_employees_df(DOJ,id) values('2018-04-01',4);