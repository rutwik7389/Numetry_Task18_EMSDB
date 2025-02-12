# Numetry_Task18_EMSDB
README - Employee Management System (EMS) Database
Overview
The NumetryEMS database is designed for managing employee records, including their details, departments, and salaries. 
It ensures efficient employee data tracking, salary management, and departmental organization.

Database Schema

Employees Table
Stores employee details like name, email, position, department, salary, and hire date.
References the Departments table via department_id (foreign key).
On department deletion, department_id is set to NULL.

Departments Table
Stores department details including name and location.
department_id serves as the primary key.

Salaries Table
Tracks salary payments with fields for employee_id, amount, and salary_date.
On employee deletion, related salary records are also removed (CASCADE).

Sample Data
Departments: HR, Engineering, and Finance.
Employees: Sample records for a Software Engineer, HR Manager, and Accountant.
Salaries: Initial salary records for each employee.

Usage
Run the SQL script to create the database and tables.
Insert initial data for testing.
Modify and expand as per business requirements.
