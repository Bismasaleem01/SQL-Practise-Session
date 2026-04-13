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
SELECT name,salary AS MaxSalary FROM Employees WHERE salary = 
	(SELECT MAX(salary) FROM Employees);