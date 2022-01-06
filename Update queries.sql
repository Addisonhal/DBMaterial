select * from my_office_employees;
update my_office_employees set employeeName='Kelly' where id=2;
update my_office_employees set DOJ='2015-03-01';
update my_office_employees set DOJ='2016-03-01' where id=2 or id=3;
select * from my_office_employees_pk;
desc my_office_employees_pk;
insert into my_office_employees_pk values(5,'Abcd','2016-03-01');
update my_office_employees_pk set id=7 where employeename='John';