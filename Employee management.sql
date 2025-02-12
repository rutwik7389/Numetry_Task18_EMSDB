-- Create the EMS database
CREATE DATABASE NumetryEMS;
USE NumetryEMS;

-- Employees Table
CREATE TABLE Employees (
    employee_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    position VARCHAR(100) NOT NULL,
    department_id INT,
    salary DECIMAL(10,2) NOT NULL,
    hire_date DATE NOT NULL,
    FOREIGN KEY (department_id) REFERENCES Departments(department_id) ON DELETE SET NULL
);

-- Departments Table
CREATE TABLE Departments (
    department_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) UNIQUE NOT NULL,
    location VARCHAR(100) NOT NULL
);

-- Salaries Table
CREATE TABLE Salaries (
    salary_id INT AUTO_INCREMENT PRIMARY KEY,
    employee_id INT,
    amount DECIMAL(10,2) NOT NULL,
    salary_date DATE NOT NULL,
    FOREIGN KEY (employee_id) REFERENCES Employees(employee_id) ON DELETE CASCADE
);

-- Sample Data Insertion
INSERT INTO Departments (name, location) VALUES
('HR', 'New York'),
('Engineering', 'San Francisco'),
('Finance', 'Chicago');

INSERT INTO Employees (name, email, position, department_id, salary, hire_date) VALUES
('John Doe', 'johndoe@example.com', 'Software Engineer', 2, 75000, '2023-05-10'),
('Jane Smith', 'janesmith@example.com', 'HR Manager', 1, 60000, '2022-08-15'),
('Michael Johnson', 'michaelj@example.com', 'Accountant', 3, 50000, '2021-11-20');

INSERT INTO Salaries (employee_id, amount, salary_date) VALUES
(1, 75000, '2024-01-01'),
(2, 60000, '2024-01-01'),
(3, 50000, '2024-01-01');

