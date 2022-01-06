/*Cross join example */
select * from offices;
select * from productlines;
select * from offices cross join productlines;
/* Inner join example */
select * from employees;
select * from offices;
select employeeNumber, lastname, firstname, email, city, state, employees.officecode from employees 
		inner join offices on employees.officecode = offices.officecode;
/* Left Join example*/
select * from employees;
select * from offices;
select employeeNumber, firstName, lastName, email, city from employees 
	left join offices on employees.officecode = offices.officecode;
/* Right join example*/
select * from employees;
select * from offices;
select employeeNumber, firstName, lastName, email, city, state, country from employees 
	right join offices on employees.officecode = offices.officecode;
/* Full outer join */
select * from employees;
select * from offices;
select employeenumber, firstname, lastname, email, city, state, country from employees
		left join offices on employees.officeCode = offices.officecode union 
select employeeNumber, firstName, lastName, email, city, state, country from employees 
	right join offices on employees.officecode = offices.officecode;
/* Self join example*/
select * from employees;
select A.firstname, B.firstname from employees A inner join employees B
	on A.reportsto = B.employeeNumber;
