CREATE DATABASE EMPLOYEES; 
USE EMPLOYEES; 

CREATE TABLE DEPARTMENTS ( department_id int primary key, department_name varchar(100)); 
CREATE TABLE LOCATION (location_id int primary key, location_name varchar(30)); 
CREATE TABLE EMPLOYEES (employee_id int primary key, employee_name varchar(50), gender enum('M','F'), 
 age int, hire_date date, designation varchar(100), salary decimal(10.2));

--ADD EMAIL COLUMN

ALTER TABLE employees ADD COLUMN email VARCHAR(100); 

--MODIFY DESIGNATION 

ALTER TABLE employees MODIFY COLUMN designation VARCHAR(150); 

--DROP AGE 

ALTER TABLE employees DROP COLUMN age; 

--RENAME COLUMN 

ALTER TABLE employees RENAME COLUMN hire_date to date_of_joining; 

RENAME TABLE departments TO departments_info;
RENAME TABLE location TO locations;

TRUNCATE table employees; 

DROP table employees; 
DROP DATABASE employee; 

DROP DATABASE IF EXISTS employee;
CREATE DATABASE employee;
USE employee; 

CREATE TABLE departments ( department_id int primary key, department_name varchar (100) NOT NULL UNIQUE); 

CREATE TABLE location (location_id INT AUTO_INCREMENT PRIMARY KEY, location VARCHAR(50) NOT NULL UNIQUE); 

CREATE TABLE employees (employee_id int primary key, 
                        employee_name varchar(50) NOT NULL, 
                        gender enum ('M', 'F'), 
                        age int check (age >= 18), 
                        hire_date date default ('CURRENT_DATE'), 
                        department_id int, 
                        location_id int, 
                        salary decimal(10.2), 
                        FOREIGN KEY (department_id) REFERENCES departments(department_id), 
                        FOREIGN KEY (location_id) REFERENCES location(location_id) );
                        
                               
       
