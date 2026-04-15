# 📘 Day 01 - SQL Practice Session 🚀

## 📌 Project Overview
This project is part of my SQL learning journey where I practiced fundamental to intermediate SQL concepts by building a simple Employee Management System. The goal of this session was to strengthen my understanding of database creation, table management, data manipulation, and basic analytical queries.

---

## 🧠 Topics Covered (Day 01)

- Database creation and selection
- Table creation with constraints (PRIMARY KEY, NOT NULL)
- Inserting records into tables
- Basic SELECT queries
- Filtering data using WHERE clause
- Updating existing records
- Deleting records with conditions
- Aggregate functions:
  - COUNT()
  - AVG()
  - MAX()
- Subqueries (finding max salary with employee details)

---

## 🏗️ Database Structure

### 📊 Table: Employees
- id (Primary Key)
- name (VARCHAR)
- salary (DECIMAL)
- department (VARCHAR)

---

## 🧾 Key SQL Operations Practiced

- Create Database
- Create Table
- Insert Records
- Read Data (SELECT)
- Filter Data (WHERE)
- Update Records
- Delete Records
- Aggregate Functions
- Subqueries

---

## ❓ Practice Questions Solved

- Create a database and use it
- Create an Employees table with constraints
- Insert 5 employee records
- Display all employees
- Show only names and salaries
- Find employees with salary > 50,000
- Update salary of a specific employee
- Delete employees with low salary
- Count total employees
- Find average salary
- Find highest salary
- Display employee with highest salary using subquery

---

## 🎯 Learning Outcome

By completing this session, I gained hands-on experience in:
- Writing SQL queries from scratch
- Understanding relational database structure
- Using aggregate functions effectively
- Applying subqueries in real scenarios
- Managing data using CRUD operations


# 📘 Day 02 - SQL Practice Session 🚀

## 📌 Project Overview
This session focuses on strengthening relational database concepts by introducing multiple tables and establishing relationships between them. The main objective was to understand how data is connected using keys and how to retrieve meaningful insights using JOINs and aggregations.

---

## 🧠 Topics Covered (Day 02)

- Creating multiple tables
- Establishing relationships between tables
- ALTER TABLE (adding new column)
- Updating records with foreign key values
- JOIN operations:
  - INNER JOIN
  - LEFT JOIN
- GROUP BY clause
- Aggregate functions:
  - COUNT()
  - AVG()
- Filtering grouped data using HAVING
- Sorting results using ORDER BY
- Using LIMIT to fetch top results

---

## 🏗️ Database Structure

### 📊 Table: Employees
- id (Primary Key)
- department_id (Foreign Key concept)
- name
- salary
- department (text-based, for initial practice)

### 📊 Table: Departments
- dept_id (Primary Key)
- dept_name

---

## 🔗 Relationship

Employees.department_id → Departments.dept_id

---

## 🧾 Key SQL Operations Practiced

- Create multiple tables
- Insert records into related tables
- Modify table structure using ALTER
- Update records to establish relationships
- Retrieve data using JOINs
- Perform aggregations using GROUP BY
- Filter grouped data using HAVING
- Sort and limit results

---

## ❓ Practice Questions Solved

- Create Departments table
- Insert department records
- Add department_id column to Employees
- Assign department IDs to employees
- Display employee name with department name
- Show all employees even without matching departments (LEFT JOIN)
- Count employees in each department
- Calculate average salary per department
- Filter departments with high average salary
- Find department with highest average salary

---

## 🎯 Learning Outcome

By completing this session, I improved my ability to:
- Work with multiple related tables
- Understand and implement JOIN operations
- Analyze grouped data using aggregate functions
- Apply real-world relational database concepts
- Debug JOIN issues based on foreign key mismatches

---


## 👩‍💻 Author
Bisma Saleem  
SQL Revision & Polishing Journey 🚀
