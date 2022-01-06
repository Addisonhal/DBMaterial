select * from employees;
create view Emp_view as select * from employees;
select * from emp_view;
select * from customers;
create view Emp_personal_data as select customernumber, customername, contactfirstname, phone,
			addressline1, addressline2 from customers;
select * from emp_personal_data;
select * from customers;
create view employee_count as select country, count(*) as "customer count" from customers group by country;
select * from employee_count;
drop view employee_count;