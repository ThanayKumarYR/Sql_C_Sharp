use EmployeeDB1;

select * from Employees;
select * from Departments;

alter table Employees add Salary int;

update Employees set Salary = 5000;

insert into Employees values('Thanay','Kumar',4,5000);

update Employees set Salary = 55000 where employee_id = 11;

alter table Employees add Department varchar(20);

update Employees set Department = 'HR';

EXEC sp_rename 'Employees.department', 'dept', 'COLUMN';

alter table Employees add age int;

update Employees set age = 5 where employee_id = 3; 
update Employees set age = 25 where employee_id = 4; 
update Employees set age = 50 where employee_id = 6; 
update Employees set age = 6 where employee_id = 7; 

delete Employees where Employees.age < 25;

select * from Employees;

