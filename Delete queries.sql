create table offices1 as select * from offices;
select * from employees1;
delete from employees1 where jobTitle='Sales Rep';
delete from employees1;
select * from customer1;
truncate table customer1;
select * from offices1;

drop table offices1;