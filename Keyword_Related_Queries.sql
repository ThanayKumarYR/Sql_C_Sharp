use employeeDB;
--drop table employee;
--drop table department;

---- Creating the Department table
--CREATE TABLE Department (
--    DepartmentID INT PRIMARY KEY,
--    DepartmentName VARCHAR(100)
--);

---- Creating the Employee table
--CREATE TABLE Employee (
--    EmployeeID INT PRIMARY KEY,
--    EmployeeName VARCHAR(100),
--    DepartmentID INT,
--    Salary DECIMAL(10, 2),
--    HireDate DATE,
--    CONSTRAINT FK_Department FOREIGN KEY (DepartmentID) REFERENCES Department(DepartmentID)
--);

---- Inserting data into Department table
--INSERT INTO Department (DepartmentID, DepartmentName) VALUES
--(1, 'HR'),
--(2, 'Finance'),
--(3, 'Marketing');

---- Inserting data into Employee table
--INSERT INTO Employee (EmployeeID, EmployeeName, DepartmentID, Salary, HireDate) VALUES
--(1, 'John Doe', 1, 50000.00, '2020-01-15'),
--(2, 'Jane Smith', 2, 60000.00, '2019-05-20'),
--(3, 'Mike Johnson', 1, 55000.00, '2021-02-10'),
--(4, 'Emily Brown', 3, 52000.00, '2020-11-30'),
--(5, 'Chris Lee', 2, 65000.00, '2018-09-05');

--select * from employee
--select * from department

---- Selecting all employees from the HR department
--SELECT * FROM Employee
--WHERE DepartmentID = (SELECT DepartmentID FROM Department WHERE DepartmentName = 'HR');

---- Selecting employees with a salary greater than 55000
--SELECT * FROM Employee
--WHERE Salary > 55000;

---- Selecting employees from the HR department with a salary greater than 50000
--SELECT * FROM Employee
--WHERE DepartmentID = (SELECT DepartmentID FROM Department WHERE DepartmentName = 'HR')
--AND Salary > 50000;

---- Selecting employees from the HR or Finance department
--SELECT * FROM Employee
--WHERE DepartmentID IN (SELECT DepartmentID FROM Department WHERE DepartmentName IN ('HR', 'Finance'));

---- Selecting employees not from the HR department
--SELECT * FROM Employee
--WHERE DepartmentID <> (SELECT DepartmentID FROM Department WHERE DepartmentName = 'HR');

---- Creating a new table using the INTO keyword
--SELECT * INTO NewEmployeeTable
--FROM Employee;

--select * from NewEmployeeTable;

---- Updating an employee's salary
--UPDATE Employee
--SET Salary = 60000.00
--WHERE EmployeeID = 1;

---- Setting a default value for a column
--ALTER TABLE NewEmployeeTable
--ADD IsActive bit default 1;

---- Removing a column from the Employee table
--ALTER TABLE Employee
--DROP COLUMN IsActive;

--select * from employee

--Update employee
--Set isActive = 'TRUE';

-- Creating a view to display active employees
--CREATE VIEW ActiveEmployees AS
--SELECT * FROM Employee
--WHERE IsActive = 'true';

--select * from ActiveEmployees;

---- Creating an index on the EmployeeName column
--CREATE INDEX idx_employee_name ON Employee (EmployeeName);

---- Combining results from two queries using UNION
--SELECT * FROM Employee
--UNION
--SELECT * FROM NewEmployeeTable;

---- Selecting distinct department names
--SELECT DISTINCT DepartmentName FROM Department;

---- Counting the number of employees in each department
--SELECT DepartmentID, COUNT(*) AS EmployeeCount FROM Employee
--GROUP BY DepartmentID;

---- Selecting departments with more than 2 employees
--SELECT DepartmentID, COUNT(*) AS EmployeeCount FROM Employee
--GROUP BY DepartmentID
--HAVING COUNT(*) > 1;

---- Ordering employees by their salaries in descending order
--SELECT * FROM Employee
--ORDER BY Salary DESC;

---- Ordering employees by their salaries in ascending order
--SELECT * FROM Employee
--ORDER BY Salary ASC;

---- Ordering employees by their hire date in descending order
--SELECT * FROM Employee
--ORDER BY HireDate DESC;

---- Selecting employees and renaming the columns
--SELECT EmployeeID AS ID, EmployeeName AS Name FROM Employee;

---- Selecting employees and renaming the columns
--SELECT EmployeeID AS ID, EmployeeName AS Name FROM Employee;

---- Selecting employees whose names start with 'J'
--SELECT * FROM Employee
--WHERE EmployeeName LIKE 'J%';

---- Selecting employees from specific departments
--SELECT * FROM Employee
--WHERE DepartmentID IN (1, 2);

---- Checking if there are any employees in the Finance department
--SELECT * FROM Employee
--WHERE EXISTS (
--    SELECT * FROM Department WHERE DepartmentID = Employee.DepartmentID AND DepartmentName = 'Finance'
--);

---- Selecting employees with salaries greater than all employees in the Finance department
--SELECT * FROM Employee
--WHERE Salary > ALL (
--    SELECT Salary FROM Employee WHERE DepartmentID = (SELECT DepartmentID FROM Department WHERE DepartmentName = 'Finance')
--);

---- Selecting employees with salaries greater than any employee in the Finance department
--SELECT * FROM Employee
--WHERE Salary > ANY (
--    SELECT Salary FROM Employee WHERE DepartmentID = (SELECT DepartmentID FROM Department WHERE DepartmentName = 'Finance')
--);

---- Using CASE to categorize employees based on their salaries
--SELECT EmployeeName,
--    CASE
--        WHEN Salary < 50000 THEN 'Low'
--        WHEN Salary >= 50000 AND Salary < 60000 THEN 'Medium'
--        ELSE 'High'
--    END AS SalaryCategory
--FROM Employee;

---- Using CASE with WHEN to categorize employees based on their salaries
--SELECT EmployeeName,
--    CASE Salary
--        WHEN 50000 THEN 'Average'
--        WHEN 60000 THEN 'Above Average'
--        ELSE 'Unknown'
--    END AS SalaryStatus
--FROM Employee;

---- Using CASE with THEN to assign values based on conditions
--SELECT EmployeeName,
--    CASE
--        WHEN Salary > 60000 THEN 'High'
--        WHEN Salary >= 50000 THEN 'Medium'
--        ELSE 'Low'
--    END AS SalaryStatus
--FROM Employee;

---- Using CASE with ELSE to assign a default value
--SELECT EmployeeName,
--    CASE
--        WHEN Salary > 60000 THEN 'High'
--        WHEN Salary >= 50000 THEN 'Medium'
--        ELSE 'Low'
--    END AS SalaryStatus
--FROM Employee;

---- Using CASE with END to complete the CASE statement
--SELECT EmployeeName,
--    CASE
--        WHEN Salary > 60000 THEN 'High'
--        WHEN Salary >= 50000 THEN 'Medium'
--        ELSE 'Low'
--    END AS SalaryStatus
--FROM Employee;

---- Selecting employees with NULL hire dates
--SELECT * FROM Employee
--WHERE HireDate IS NULL;

---- Setting the hire date of an employee to NULL
--UPDATE Employee
--SET HireDate = NULL
--WHERE EmployeeID = 1;

---- Adding a constraint to the Department table
--ALTER TABLE Department
--ADD CONSTRAINT department_name_unique UNIQUE (DepartmentName);

---- Adding a primary key constraint to the EmployeeID column
--ALTER TABLE Employee
--ADD CONSTRAINT pk_employee_id PRIMARY KEY (EmployeeID);

---- Adding a foreign key constraint to the DepartmentID column
--ALTER TABLE Employee
--ADD CONSTRAINT fk_department_id FOREIGN KEY (DepartmentID) REFERENCES Department(DepartmentID);

---- Setting a default value for the IsActive column
--ALTER TABLE Employee
--ALTER COLUMN IsActive;

---- Adding a unique constraint to the DepartmentName column
--ALTER TABLE Department
--ADD CONSTRAINT department_name_unique UNIQUE (DepartmentName);

---- Adding a check constraint to ensure salaries are positive
--ALTER TABLE Employee
--ADD CONSTRAINT salary_positive CHECK (Salary > 0);

---- Adding a foreign key constraint with REFERENCES keyword
--ALTER TABLE Employee
--ADD CONSTRAINT fk_department_id FOREIGN KEY (DepartmentID) REFERENCES Department(DepartmentID);


---- Counting the total number of employees
--SELECT COUNT(*) AS TotalEmployees FROM Employee;

---- Calculating the total salary expenditure
--SELECT SUM(Salary) AS TotalSalaryExpenditure FROM Employee;

---- Calculating the average salary of employees
--SELECT AVG(Salary) AS AverageSalary FROM Employee;

---- Finding the minimum salary among employees
--SELECT MIN(Salary) AS MinimumSalary FROM Employee;

---- Finding the maximum salary among employees
--SELECT MAX(Salary) AS MaximumSalary FROM Employee;

---- Counting the number of employees in each department
--SELECT DepartmentID, COUNT(*) AS EmployeeCount
--FROM Employee
--GROUP BY DepartmentID;

---- Selecting departments with more than 2 employees
--SELECT DepartmentID, COUNT(*) AS EmployeeCount
--FROM Employee
--GROUP BY DepartmentID
--HAVING COUNT(*) > 1;

---- Converting employee names to uppercase
--SELECT UPPER(EmployeeName) AS UppercaseName FROM Employee;

---- Converting employee names to lowercase
--SELECT LOWER(EmployeeName) AS LowercaseName FROM Employee;

---- Extracting the first 3 characters of employee names
--SELECT LEFT(EmployeeName, 3) AS FirstThreeChars FROM Employee;

---- Extracting the last 5 characters of employee names
--SELECT RIGHT(EmployeeName, 5) AS LastFiveChars FROM Employee;

---- Finding the length of employee names
--SELECT EmployeeName, LEN(EmployeeName) AS NameLength FROM Employee;

---- Extracting a substring from employee names
--SELECT SUBSTRING(EmployeeName, 2, 5) AS SubstringName FROM Employee;

---- Concatenating employee names with a space
--SELECT CONCAT(EmployeeName, ' ', EmployeeName) AS Fullname FROM Employee;

---- Removing leading and trailing spaces from employee names
--SELECT TRIM(EmployeeName) AS TrimmedName FROM Employee;

---- Replacing 'Doe' with 'Smith' in employee names
--SELECT REPLACE(EmployeeName, 'Doe', 'Smith') AS UpdatedName FROM Employee;

---- Replacing 'Doe' with 'Smith' in employee names
--SELECT REPLACE(EmployeeName, 'Doe', 'Smith') AS UpdatedName FROM Employee;

---- Replacing 'Doe' with 'Smith' in employee names
--SELECT REPLACE(EmployeeName, 'Doe', 'Smith') AS UpdatedName FROM Employee;

---- Finding the position of 'a' in employee names
--SELECT EmployeeName, CHARINDEX('a', EmployeeName) AS PositionOfA FROM Employee;

select * from Employee;