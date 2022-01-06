/*Not Null*/
create table my_emp_nn(
	id int(10),
    emp_name varchar(20) not null,
    salary int(10));
describe my_emp_nn;
insert into my_emp_nn values(10, 'Testing', 2000);
insert into my_emp_nn values(null, 'Testing', Null);
insert into my_emp_nn values(10, null, 2000);
select * from my_emp_nn;
/*Check*/
create table employeesCheck (
		id int(10),
        empName varchar(20),
        salary int(6) check (salary > 10000));
desc employeesCheck;
insert into employeesCheck values(1,'Testing',11000);
insert into employeesCheck values(1,'Testing',9000);
select * from employeesCheck;
/*Default*/
create table employeeDefault(
		id int(5),
        empName varchar(10) default "DD_Value",
        salary int(10));
desc employeeDefault;
insert employeeDefault(id, empName, salary) values(1,'ABCD', 2000);
insert employeeDefault(id, salary) values(1, 2000);
insert employeeDefault(id, salary) values(2, 1000);
select * from employeeDefault;
/*Unique*/
create table employeeUnique(
		id int(5) unique,
        empName varchar(20),
        passportNumber varchar(20) unique);
desc employeeUnique;
insert into employeeUnique value(1,'Testing', 'ABCD123');
insert into employeeUnique value(2,'TestName', 'ABCD123');
insert into employeeUnique value(1,'ABCD', 'ABC1234');
insert into employeeUnique value(null,'Testing', 'ABC1234');
insert into employeeUnique value(null,'Testing', 'FZ1234');
select * from employeeUnique;
/*Primary Key*/
create table newEmployeesPK(
		id int(5) primary key,
        empName varchar(20),
        salary int(10));
desc newEmployeesPK;
insert into newEmployeesPK values(1, 'A', 1000);
insert into newEmployeesPK values(1, 'B', 2000);
select * from newEmployeesPK;
create table newEmployeesPK2(
		id int(5),
        empName varchar(20),
        salary int(10),
        primary key (id));
desc newEmployeesPK2;
insert into newEmployeesPK2 values(1, 'A', 2000);
insert into newEmployeesPK2 values(1, 'B', 2000);
select * from newEmployeesPK2;
/*Composite key*/
create table newEmployeesPK3(
		id int(5),
        empName varchar(20),
        salary int(10),
        primary key (id, empName));
desc newEmployeesPK3;
insert into newEmployeesPK3 values(1, 'A', 1000);
insert into newEmployeesPK3 values(1, 'B', 2000);
insert into newEmployeesPK3 values(2, 'B', 2000);
insert into newEmployeesPK3 values(1, 'B', 20000);
select * from newEmployeesPK3;
/*Foreign Key*/
desc newEmployeePK;
desc empBonus;
create table empBonus(
		empID int(5),
        bonus int(5),
        constraint fKey foreign key(empID)
        references newEmployeesPK(id));
insert into newemployeespk values (2,'B', 5000);
insert into newemployeespk values (3,'C', 15000);
insert into empBonus values(1, 2000);
insert into empBonus values(3, 200);
insert into empBonus values(5,200);
select * from empBonus;
select * from newemployeespk;
delete from empBonus where empId=1;
delete from newemployeespk where id=1;