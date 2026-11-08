CREATE DATABASE Employee;
USE Employee;

CREATE TABLE Departments (
   department_id INT PRIMARY KEY,
   department_name VARCHAR(100) NOT NULL UNIQUE
   );
   
CREATE TABLE Location (
   location_id INT AUTO_INCREMENT PRIMARY KEY,
   location VARCHAR(30) NOT NULL UNIQUE
   );
   
CREATE TABLE Employees (
   employee_id INT PRIMARY KEY ,
   employee_name VARCHAR(300) NOT NULL,
   gender ENUM('M','F') NOT NULL,
   age INT CHECK (age>=18),
   hire_date DATE DEFAULT (CURRENT_DATE),
   designation VARCHAR(100),
   department_id INT,
   location_id INT,
   salary DECIMAL(10,2),
   FOREIGN KEY (department_id)REFERENCES Departments(department_id),
   FOREIGN KEY (location_id) REFERENCES Location (location_id)
   );
   
   SELECT*FROM Employees;
   
   ALTER TABLE Employees ADD COLUMN email VARCHAR(100);
   ALTER TABLE Employees MODIFY COLUMN designation VARCHAR(150);
   ALTER TABLE Employees DROP COLUMN age;
   ALTER TABLE Employees RENAME COLUMN hire_date TO date_of_joining;
   
   RENAME TABLE Departments TO Departments_info;
   RENAME TABLE Location TO Locations;
   
   TRUNCATE TABLE Employees;
   
   DROP TABLE Employees;
   DROP DATABASE Employee;