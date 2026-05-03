CREATE DATABASE employee;
USE employee;
CREATE TABLE departments(
department_id INT,
department_name VARCHAR(100)
);
CREATE TABLE location(
location_id INT,
location VARCHAR(30)
);
CREATE TABLE employees(
employee_id INT PRIMARY KEY,
employee_name VARCHAR(50),
gender ENUM('M', 'F'),
age INT,
hire_date DATE,
designation VARCHAR(100),
department_id INT,
location_id INT,
salary DECIMAL(10.2)
);
DESC employees;

ALTER TABLE employees
ADD COLUMN email VARCHAR(100);
ALTER TABLE employees
MODIFY COLUMN designation VARCHAR(200);

ALTER TABLE employees
DROP COLUMN age;
ALTER TABLE employees
CHANGE COLUMN hire_date date_of_joining DATE;

RENAME TABLE departments TO departments_info;
RENAME TABLE location TO locations;
 
 TRUNCATE TABLE employees;
 
 DROP TABLE employees;
 DROP DATABASE employee;
 
 CREATE DATABASE employee;
 USE employee;
 
 CREATE TABLE departments(
department_id INT,
department_name VARCHAR(100)
);
CREATE TABLE location(
location_id INT,
location VARCHAR(30)
);
CREATE TABLE employees(
employee_id INT PRIMARY KEY,
employee_name VARCHAR(50),
gender ENUM('M', 'F'),
age INT,
hire_date DATE,
designation VARCHAR(100),
department_id INT,
location_id INT,
salary DECIMAL(10.2)
);

ALTER TABLE departments
ADD CONSTRAINT pk_department PRIMARY KEY(department_id);
ALTER TABLE departments
MODIFY COLUMN department_name VARCHAR(100)NOT NULL;
ALTER TABLE departments
ADD CONSTRAINT uq_department_name UNIQUE (department_name);

ALTER TABLE location
MODIFY COLUMN location_id INT AUTO_INCREMENT PRIMARY KEY;
ALTER TABLE location
MODIFY COLUMN location VARCHAR(30) NOT NULL;
ALTER TABLE location
ADD CONSTRAINT uq_location UNIQUE (location);

ALTER TABLE employees
MODIFY COLUMN employee_id INT AUTO_INCREMENT PRIMARY KEY;

ALTER TABLE employees
MODIFY COLUMN employee_name VARCHAR(50) NOT NULL;
ALTER TABLE employees
MODIFY COLUMN gender ENUM('M','F');
ALTER TABLE employees
ADD CONSTRAINT chk_gender CHECK (gender IN ('M','F'));
ALTER TABLE employees
ADD CONSTRAINT chk_age CHECK (age >= 18);
ALTER TABLE employees
ALTER COLUMN hire_date SET DEFAULT (CURRENT_DATE);
ALTER TABLE employees
ADD CONSTRAINT fk_location FOREIGN KEY(location_id)
REFERENCES location(location_id);















