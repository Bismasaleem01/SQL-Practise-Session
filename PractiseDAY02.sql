-- DAY 01
-- To create Database.
CREATE DATABASE PractiseSession;
-- To use Database.
USE PractiseSession;
-- Create a table Employees with columns: id, name, salary, department.
CREATE TABLE Employees (
	id INT PRIMARY KEY,
	name VARCHAR(100) NOT NULL,
	salary DECIMAL(10,2) NOT NULL,
	department VARCHAR(100) NOT NULL
);
-- Insert 5 records into the Employees table.
INSERT INTO Employees (id, name, salary, department) VALUES
(1,'Bisma Saleem',1050000, 'Software Engineering'),
(2,'Mayam Fatima',3050000, 'Software Engineering'),
(3,'Zoya Saleem',200000, 'Computer Science'),
(4,'Erum Shoukat', 300000, 'Mechanical Engineering'),
(5,'Shehroz Tanoli',250000, 'Software Engineering');
-- Write a query to display all employees.
SELECT * FROM Employees;
-- Retrieve only names and salaries of employees.
SELECT name,salary FROM Employees;
-- Find employees with salary greater than 50,000.
SELECT * FROM Employees WHERE salary > 50000;
-- Update salary of an employee with id = 1 to 60,000.
UPDATE Employees SET salary = 60000 WHERE id = 1;
-- Delete employees whose salary is less than 30,000.
DELETE FROM Employees WHERE salary < 30000;
-- Count total number of employees.
SELECT COUNT(*)  AS TotalEmployees FROM Employees;
-- Find the average salary of employees.
SELECT AVG(salary) AS AverageSalary FROM Employees;
-- Find the highest salary among all employees
SELECT MAX(salary) AS MaxSalary FROM Employees;
-- Find the highest salary among all employees and also show his name.
SELECT name,salary AS MaxSalary FROM Employees WHERE salary =  (SELECT MAX(salary) FROM Employees);

-- DAY02
-- Create a new table Departments with columns: dept_id ,dept_name
CREATE TABLE Departments(
	dept_id INT PRIMARY KEY,
	dept_name VARCHAR(100) NOT NULL
);
-- Insert at least 3 departments into Departments table.
INSERT INTO Departments(dept_id,dept_name) VALUES
	(1,'Software Engineering'),
	(2,'Computer Science'),
	(3,'Mechanical Engineering');
SELECT * FROM Departments;
-- Modify Employees table: Add dept_id column
ALTER TABLE Employees ADD department_id INT AFTER id;
-- Update all employees to assign them a valid dept_id.
UPDATE Employees SET department_id = 1 WHERE id = 1;
UPDATE Employees SET department_id = 2 WHERE id = 2;
UPDATE Employees SET department_id = 3 WHERE id = 3;
UPDATE Employees SET department_id = 1 WHERE id = 4;
UPDATE Employees SET department_id = 2 WHERE id = 5;
-- Write a query to display: Employee name + department name
SELECT e.name,d.dept_name FROM Employees e LEFT JOIN Departments d ON e.department_id = d.dept_id;
-- Show all employees with their departments even if some employees don’t have a department
SELECT e.name,d.dept_name FROM Employees e LEFT JOIN Departments d ON e.department_id=d.dept_id;
-- Count number of employees in each department
Select department, COUNT(*) AS TotalEmployeesInDepartment FROM Employees GROUP BY department;
-- Find average salary of each department
SELECT department , AVG(salary) AS AverageSalary FROM Employees GROUP BY department ;
-- Display departments where average salary is greater than 300,000
SELECT department, AVG(salary) AS AverageSalary FROM Employees GROUP BY department HAVING AVG(salary) > 200000;
-- Find the department with the highest average salary
SELECT department, AVG(salary) FROM Employees GROUP BY department ORDER BY AVG(salary) DESC LIMIT 1;

