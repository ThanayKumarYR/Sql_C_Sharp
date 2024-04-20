--create database EmployeeDB2;

use EmployeeDB2;

create table employee(
	employeeID int,empName varchar(20), age int,department varchar(20)
);

INSERT INTO employee (employeeID, empName, age, department)
VALUES
    (1, 'John Doe', 30, 'Sales'),
    (2, 'Jane Smith', 35, 'Marketing'),
    (3, 'Michael Johnson', 40, 'HR'),
    (4, 'Emily Brown', 28, 'IT'),
    (5, 'David Wilson', 32, 'Finance'),
    (6, 'Jennifer Lee', 37, 'Operations'),
    (7, 'Richard Davis', 45, 'Sales'),
    (8, 'Emma Martinez', 29, 'Marketing'),
    (9, 'Christopher Taylor', 33, 'IT'),
    (10, 'Jessica White', 42, 'Finance'),
    (11, 'Daniel Rodriguez', 31, 'Operations'),
    (12, 'Sarah Thomas', 38, 'HR'),
    (13, 'James Anderson', 27, 'IT'),
    (14, 'Olivia Garcia', 36, 'Marketing'),
    (15, 'Matthew Hernandez', 39, 'Sales'),
    (16, 'Ava Lopez', 34, 'Operations'),
    (17, 'Ethan Perez', 41, 'HR'),
    (18, 'Isabella Gonzalez', 26, 'Finance'),
    (19, 'Noah Wilson', 43, 'Marketing'),
    (20, 'Sophia Martinez', 44, 'IT');

select * from employee;

EXEC sp_rename 'employee.department', 'dept', 'COLUMN';

select * from employee;

alter table employee add Salary int;

select * from employee;

select employeeID, empName
from employee
order by empName;

update employee set Salary = 1000 where employee.employeeID = 1;
update employee set Salary = 2000 where employee.employeeID = 2;
update employee set Salary = 3000 where employee.employeeID = 3;
update employee set Salary = 4000 where employee.employeeID = 4;
update employee set Salary = 5000 where employee.employeeID = 5;
update employee set Salary = 6000 where employee.employeeID = 6;
update employee set Salary = 7000 where employee.employeeID = 7;
update employee set Salary = 8000 where employee.employeeID = 8;
update employee set Salary = 9000 where employee.employeeID = 9;
update employee set Salary = 10000 where employee.employeeID = 10;
update employee set Salary = 2000 where employee.employeeID = 11;
update employee set Salary = 2000 where employee.employeeID = 12;
update employee set Salary = 2300 where employee.employeeID = 13;
update employee set Salary = 4400 where employee.employeeID = 14;
update employee set Salary = 5500 where employee.employeeID = 15;
update employee set Salary = 6700 where employee.employeeID = 16;
update employee set Salary = 7800 where employee.employeeID = 17;
update employee set Salary = 8800 where employee.employeeID = 18;
update employee set Salary = 9800 where employee.employeeID = 19;
update employee set Salary = 10400 where employee.employeeID = 20;

select top 5 employeeID, empName, Salary
from employee
order by Salary desc;

select * from employee
where employee.empName like 'A%';

select * from employee
where employee.employeeID not in (select top 2 employee.employeeID from employee)

select * from employee
where employee.age > 40;

select top 3 * from employee order by employee.Salary desc;

select top 1 * from employee 
where employee.employeeID in (select top 3 employee.employeeID from employee order by employee.Salary desc) order by Salary;
