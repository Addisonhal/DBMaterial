select * from customers;
create table customerCopy as select * from customers;
select * from customersCopy;
create table customerCopy2 as select * from customers where 1=2;