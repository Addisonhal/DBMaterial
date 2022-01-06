select * from customers;
select city from customers;
select distinct city from customers;
select city from customers group by city having count(city) > 1;
select city, count(city) from customers group by city having count(city) > 1;