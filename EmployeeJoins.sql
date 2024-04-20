--CREATE DATABASE EmployeeDB1;

--Use EmployeeDB1;
--CREATE TABLE Departments (
--    department_id INT PRIMARY KEY IDENTITY(1,1),
--    department_name VARCHAR(100) 
--);

--CREATE TABLE Employees (
--    employee_id INT PRIMARY KEY IDENTITY(1,1),
--    first_name VARCHAR(50) ,
--    last_name VARCHAR(50) ,
--    department_id INT,
--    FOREIGN KEY (department_id) REFERENCES Departments(department_id)
--);

--CREATE TABLE Salaries (
--salary INT ,
--employee_id INT,
--department_id INT,
--FOREIGN KEY ( employee_id ) REFERENCES Employees (employee_id),
--FOREIGN KEY (department_id) REFERENCES Departments(department_id)
--)



--INSERT INTO Departments (department_name) VALUES ('Human Resources');
--INSERT INTO Departments (department_name) VALUES ('Finance');
--INSERT INTO Departments (department_name) VALUES ('QA');
--INSERT INTO Departments (department_name) VALUES ('Market');

--INSERT INTO Employees (first_name, last_name, department_id) VALUES ('Saikat', 'Mondal', 1);
--INSERT INTO Employees (first_name, last_name, department_id) VALUES ('Goutham', '', 2);
--INSERT INTO Employees (first_name, last_name, department_id) VALUES ('yashwanth', '', 3);
--INSERT INTO Employees (first_name, last_name, department_id) VALUES ('lakhsmi', '', 4);
--INSERT INTO Employees (first_name, last_name, department_id) VALUES ('Thanya', 'Yr', 5);
--INSERT INTO Employees (first_name, last_name, department_id) VALUES ('Rahul', 'kumar', 1);
--INSERT INTO Employees (first_name, last_name, department_id) VALUES ('Sam', 'Mank', 2);
--INSERT INTO Employees (first_name, last_name, department_id) VALUES ('Ganesh', 'mahor', 3);
--INSERT INTO Employees (first_name, last_name, department_id) VALUES ('ram', 'kal', 4);
--INSERT INTO Employees (first_name, last_name, department_id) VALUES ('lakhman', '', 6);

--INSERT INTO Salaries values (120000, 3,1);
--INSERT INTO Salaries values (200000, 5,3);
--INSERT INTO Salaries values (420000, 6,4);
--INSERT INTO Salaries values (390000, 7,5);
--INSERT INTO Salaries values (220000, 10,3);
--INSERT INTO Salaries values (820000, 12,6);

--update Departments set department_name='cse' where department_id=1;
--update Departments set department_name='Dotnet' where department_id=2;

--delete from Employees  where employee_id= 1 Or employee_id=2 ;

select * from Employees;
select* from Departments;
select * from Salaries;

select * from Employees , Departments where Departments.department_id = Employees.department_id;

select department_id, COUNT(*) as number_of_employee from Employees GROUP BY department_id;
SELECT Departments.department_name, COUNT(*) AS number_of_employee 
FROM Employees,Departments,Salaries
where Departments.department_id = Employees.department_id
and Employees.employee_id = Salaries.employee_id
GROUP BY Departments.department_name;


Select Departments.department_name ,AVG(Salaries.salary) 
from Employees,Departments,Salaries 
where Salaries.employee_id= Employees.employee_id and Departments.department_id = Employees.department_id
Group By Departments.department_name;

Select Departments.department_name ,AVG(Salaries.salary) 
from Employees,Departments,Salaries 
where Salaries.employee_id= Employees.employee_id 
Group By Departments.department_name;

Select Departments.department_name ,Sum(Salaries.salary) 
from Employees,Departments,Salaries 
where Salaries.employee_id= Employees.employee_id and Departments.department_id = Salaries.department_id
Group By Departments.department_name;



Select * from Employees where first_name like '%s';
Select * from Employees where first_name like 's%';
Select *from Employees where first_name like 'G%'or  last_name= '';
Select * from Salaries Where (salary between 300000 and 500000);
Select * from Employees where first_name IN ('SAIKAT', 'YAshwanth');
Select  distinct(department_id) from Salaries ;




select Departments.department_name , Employees.first_name, Employees.last_name ,MAX(Salaries.salary)
from Employees , Departments , Salaries 
where Employees.department_id = Departments.department_id and Departments.department_id= Salaries.department_id and Employees.employee_id = Salaries.employee_id
GROUP By department_name,Employees.first_name, Employees.last_name;

select Departments.department_name , Employees.first_name, Employees.last_name ,MIN(Salaries.salary)
from Employees , Departments , Salaries 
where Employees.department_id = Departments.department_id and Departments.department_id= Salaries.department_id and Employees.employee_id = Salaries.employee_id
GROUP By department_name,Employees.first_name, Employees.last_name;

select * from Employees order by first_name;
SELECT * FROM Employees ORDER BY first_name DESC;
select *  from Salaries order BY Salary  ;



SELECT TOP 3 * FROM  Employees;

SELECT TOP 50 PERCENT * FROM Employees;

-- rith join 

select Employees.first_name , Departments.department_name ,Salaries.salary from Employees  
Join Departments  on  Departments.department_id=Employees.department_id

join Salaries on Departments.department_id = Salaries.department_id and Salaries.employee_id = Employees.employee_id

Group by Salaries.salary , Salaries.department_id , Employees.first_name , Departments.department_name
Having Salaries.salary = Min(Salaries.salary);



select Departments.department_name,  Count(*) from Employees join Departments on Departments.department_id = Employees.department_id
group by Departments.department_name;

select Departments.department_name , Avg(Salaries.salary) from Departments
join Salaries on Salaries.department_id = Departments.department_id
group by Departments.department_name;

select Employees.first_name,Departments.department_name from Employees
 Join Departments on Departments.department_id= Employees.department_id
join Salaries on Salaries.employee_id = Employees.employee_id
Join (select department_id ,MAX(salary)as m from Salaries Group by department_id) as max_sal on max_sal.department_id = Salaries.department_id and max_sal.m = salary


		
select Count(*)first_name,department_name from  Employees join Departments on Departments.department_id = Employees.department_id
group by department_name;