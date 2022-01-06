/*Create table through copying*/
select * from customers;
create table new_customers as select * from customers;
select * from new_customers;
create table new_usa_customers as select * from customers where country = 'USA';
select * from new_usa_customers;
create table partial_custmer_data as select customername, phone, city, state from customers;
select * from partial_custmer_data;
select * from customers where 1=2;
create table customer_str as select * from customers where 1=2;
select * from customer_str;
/*Create table through Structure*/
create table My_office_Employees(
	Id	int(10),
    EmployeeName	varchar(30),
    DOJ	date);
select * from My_office_employees;
desc My_office_employees;
/*Create table with Primary Key*/
create table My_office_Employees_pk(
	Id	int(10) primary key,
    EmployeeName	varchar(30),
    DOJ	date);
/*Create table with null/not null*/
create table My_office_Employees_nl(
	Id	int(10) primary key,
    EmployeeName	varchar(30) not null,
    DOJ	date);
/*create table with default value*/
create table My_office_Employees_df(
	Id	int(10) primary key,
    EmployeeName	varchar(30) default "TestName",
    DOJ	date);
