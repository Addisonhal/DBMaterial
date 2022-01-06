select * from employees;
select jobTitle, count(*) as "Number of Employees" from employees group by jobTitle;
select officecode, count(*) as "Total Employees" from employees group by officecode;
select * from customers;
select country, count(*) as "Number of Customers" from customers group by country;
select country, max(creditlimit) as "Credit Limit" from customers group by country;
select country, avg(creditlimit) as "Credit Limit" from customers group by country;
select * from customers where creditlimit > 50000;
select country, avg(creditlimit) as "Credit Limit" from customers where creditLimit > 50000 group by country;
select country, avg(creditlimit) as "Credit Limit" from customers group by country having avg(creditlimit) > 80000;
select country, avg(creditlimit) as "Credit Limit" from customers 
where creditLimit > 50000 group by country having avg(creditlimit) > 80000;


