select * from customers;
Select * from customers where country = 'usa';
create index customers_country on customers(country);
alter table customers drop index customers_country;
