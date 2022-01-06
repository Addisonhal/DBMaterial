select * from customers;
select creditlimit from customers order by creditlimit desc;
select * from customers A where 3 = (select count(creditLimit) from customers B
									where A.creditLimit <= B.creditLimit);
select * from customers A where 5 = (select count(creditLimit) from customers B
									where A.creditLimit <= B.creditLimit);
select * from customers A where 5 = (select count(distinct creditLimit) from customers B
									where A.creditLimit <= B.creditLimit);
select * from customers A where 2 = (select count(distinct creditLimit) from customers B
									where A.creditLimit >= B.creditLimit);