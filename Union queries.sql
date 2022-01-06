create table emp_1(
id int(4),
emp_name varchar(20),
salary int(50));
create table emp_2(
id int(4),
emp_name varchar(20),
salary int(50));
insert into emp_1 values(1,'A',1000);
insert into emp_1 values(2,'B',2000);
insert into emp_1 values(3,'C',3000);
insert into emp_1 values(4,'D',4000);
insert into emp_1 values(5,'E',5000);
insert into emp_2 values(5,'E',5000);
insert into emp_2 values(6,'F',1500);
insert into emp_2 values(7,'G',2500);
insert into emp_2 values(8,'H',3500);
insert into emp_2 values(9,'I',4500);
select * from emp_1
union
select * from emp_2;
select id, emp_name from emp_1
union
select id, emp_name from emp_2;
select id, emp_name from emp_1
union all
select id, emp_name from emp_2;