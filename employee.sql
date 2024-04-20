use employeeDB;

--create table employee
--(
--	empId int primary key,
--	empName varchar(20), 
--	deptId int
--);

--insert into employee values(1,'Thanay',11);
--insert into employee values(2,'Saikat',12);
--insert into employee values(3,'Lakshmi',11);
--insert into employee values(4,'Yashwant',12);

--select * from employee;

--update employee set empName = 'ThanayKumarYR' where empId = 1

--select * from employee;

--delete employee where empId = 3

--select * from employee;

--alter table employee add Number varchar(20);

--select * from employee;

--insert into employee values(5,'Jothsna',11,'1234567890');

--select * from employee;

--update employee set Number = '0987654321' where empId = 1

select * from employee;

--create table department
--(
--	deptId int primary key,
--	deptName varchar(20)
--);

--insert into department values(11,'FrontEnd');
--insert into department values(12,'BackEnd');

select * from department;

--drop table department;

--alter table employee add constraint deptId Foreign Key(deptId) references department(deptId) ;

select empId,empName,Number,e.deptId,deptName 
from employee as e, department as d 
where e.deptId = d.deptId and d.deptName = 'FrontEnd';

select empName,deptName 
from employee as e, department as d
where e.deptId = d.deptId






