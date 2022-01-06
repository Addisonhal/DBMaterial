select officecode, count(*) from employees group by officecode;
select state, max(creditlimit) from customers group by state;
select officecode, count(*) from employees group by officecode having count(officecode) > 4;