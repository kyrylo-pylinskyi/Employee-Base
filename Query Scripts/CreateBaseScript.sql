-- Crete Base
CREATE DATABASE EmployeeBase;
USE EmployeeBase;
-- Create Tables
CREATE TABLE Employee(	
	Employee_ID int NOT NULL IDENTITY,
	First_Name nvarchar(25),
	Second_Name nvarchar(25),
	Last_Name nvarchar(25),
	Phone char(15),
	Email nvarchar(25),
	Hire_Date date,
	Gender char(1),
	Salary decimal,
	Department_ID int 
);

CREATE TABLE Customer(	
	Customer_ID int NOT NULL IDENTITY,
	First_Name nvarchar(25),
	Second_Name nvarchar(25),
	Last_Name nvarchar(25),
	Birth_Date date,
	Phone char(12),
	Email nvarchar(25),
	Gender char(1),
	City_ID int 
);

CREATE TABLE Department(
	Department_ID int NOT NULL IDENTITY,
	Department_Name nvarchar(20),
	Manager_ID int
);

CREATE TABLE City(
	City_ID int NOT NULL IDENTITY,
	City_Name nvarchar(25)
);
-- Insert Tables
INSERT INTO Employee(First_Name, Second_Name, Last_Name, Phone, Email, Hire_Date, Gender, Salary, Department_ID)
VALUES				('Johnny', NULL, 'Adams', '+48 791 344 559', NULL, '01-01-2012', 'M', 56000, 1); 

INSERT INTO Employee(First_Name, Second_Name, Last_Name, Phone, Email, Hire_Date, Gender, Salary, Department_ID)
VALUES				('George', 'Joseph', 'Bell', '+48 791 345 759', NULL, '05-01-2012', 'M', 47000, 1); 

INSERT INTO Employee(First_Name, Second_Name, Last_Name, Phone, Email, Hire_Date, Gender, Salary, Department_ID)
VALUES				('Dorothy', NULL, 'Montgomery', '+48 881 564 559', NULL, '08-01-2012', 'W', 62000, 1); 

INSERT INTO Employee(First_Name, Second_Name, Last_Name, Phone, Email, Hire_Date, Gender, Salary, Department_ID)
VALUES				('Teresa', NULL, 'Rice', '+48 791 334 889', NULL, '03-01-2012', 'W', 45000, 2); 

INSERT INTO Employee(First_Name, Second_Name, Last_Name, Phone, Email, Hire_Date, Gender, Salary, Department_ID)
VALUES				('Anthony', NULL, 'Montgomery', '+48 791 242 779', NULL, '12-01-2012', 'M', 34000, 2); 

INSERT INTO Employee(First_Name, Second_Name, Last_Name, Phone, Email, Hire_Date, Gender, Salary, Department_ID)
VALUES				('Joseph', 'Fred', 'Martinez', '+48 791 874 588', NULL, '01-02-2012', 'M', 41000, 2); 

INSERT INTO Employee(First_Name, Second_Name, Last_Name, Phone, Email, Hire_Date, Gender, Salary, Department_ID)
VALUES				('Alice', 'David', 'Gilbert', '+48 791 234 889', NULL, '03-03-2012', 'W', 50000, 3); 

INSERT INTO Employee(First_Name, Second_Name, Last_Name, Phone, Email, Hire_Date, Gender, Salary, Department_ID)
VALUES				('Ralph', NULL, 'Graham', '+48 791 784 879', NULL, '09-01-2012', 'M', 53000, 3); 

INSERT INTO Employee(First_Name, Second_Name, Last_Name, Phone, Email, Hire_Date, Gender, Salary, Department_ID)
VALUES				('Roy', 'Robert', 'Sullivan', '+48 791 654 989', NULL, '01-02-2012', 'M', 43000, 3); 

INSERT INTO Employee(First_Name, Second_Name, Last_Name, Phone, Email, Hire_Date, Gender, Salary, Department_ID)
VALUES				('Kenneth', NULL, 'Bailey', '+48 791 654 009', NULL, '05-04-2013', 'W', 45000, 4); 

INSERT INTO Employee(First_Name, Second_Name, Last_Name, Phone, Email, Hire_Date, Gender, Salary, Department_ID)
VALUES				('Theresa', 'Donna', 'Wallace', '+48 791 984 000', NULL, '07-05-2014', 'W', 40000, 4); 

INSERT INTO Employee(First_Name, Second_Name, Last_Name, Phone, Email, Hire_Date, Gender, Salary, Department_ID)
VALUES				('Jesse', 'Diana', 'Hanson', '+48 791 399 229', NULL, '04-06-2012', 'W', 55000, 4); 
-- Set Emails for Employees
SET ANSI_WARNINGS  OFF;

UPDATE EmployeeBase.dbo.Employee
SET Email = CONCAT(SUBSTRING(First_Name, 1, 1), '.', Last_Name, '@mycompany.com')
WHERE Email IS NULL;
-- Select Employees
SELECT * FROM Employee;
-- 
INSERT INTO Customer(First_Name, Second_Name, Last_Name, Phone, Email, Birth_Date, Gender, City_ID)
VALUES				('Susan', NULL, 'Harris', '+48 791 322 588', 's.harris@gmail.com', '09-08-1987', 'W', 1);

INSERT INTO Customer(First_Name, Second_Name, Last_Name, Phone, Email, Birth_Date, Gender, City_ID)
VALUES				('Pamela', NULL, 'Allen', '+48 791 300 009', NULL, '08-05-1976', 'W', 2);

INSERT INTO Customer(First_Name, Second_Name, Last_Name, Phone, Email, Birth_Date, Gender, City_ID)
VALUES				('Victor', NULL, 'Oliver', '+48 791 300 959', NULL, '01-01-1989', 'M', 3);

INSERT INTO Customer(First_Name, Second_Name, Last_Name, Phone, Email, Birth_Date, Gender, City_ID)
VALUES				('Larry', NULL, 'Lawrence', '+48 791 444 544', 'larylaw@hotmail.com', '01-05-1995', 'M', 4);

INSERT INTO Customer(First_Name, Second_Name, Last_Name, Phone, Email, Birth_Date, Gender, City_ID)
VALUES				('Billy', NULL, 'Shaw', '+48 791 678 599', NULL, '03-05-1987', 'M', 5);

INSERT INTO Customer(First_Name, Second_Name, Last_Name, Phone, Email, Birth_Date, Gender, City_ID)
VALUES				('David', NULL, 'Thompson', '+48 791 454 559', NULL, '05-07-1994', 'M', 6);

INSERT INTO Customer(First_Name, Second_Name, Last_Name, Phone, Email, Birth_Date, Gender, City_ID)
VALUES				('Sean', NULL, 'Ramirez', '+48 791 344 879', NULL, '03-06-1980', 'M', 7);

INSERT INTO Customer(First_Name, Second_Name, Last_Name, Phone, Email, Birth_Date, Gender, City_ID)
VALUES				('Harold', NULL, 'Diaz', '+48 791 367 669', 'diaz.harold@mail.com', '05-01-1995', 'M', 8);

INSERT INTO Customer(First_Name, Second_Name, Last_Name, Phone, Email, Birth_Date, Gender, City_ID)
VALUES				('Jennifer', NULL, 'Harris', '+48 791 343 535', NULL, '01-04-1987', 'W', 9);

INSERT INTO Customer(First_Name, Second_Name, Last_Name, Phone, Email, Birth_Date, Gender, City_ID)
VALUES				('Johnny', NULL, 'Reed', '+48 791 555 555', NULL, '01-01-1990', 'M', 10);

Select * From Customer;

INSERT INTO Department (Department_Name, Manager_ID)
VALUES	('HR',1);
INSERT INTO Department (Department_Name, Manager_ID)
VALUES	('Network', 4);
INSERT INTO Department (Department_Name, Manager_ID)
VALUES	('IT', 8);
INSERT INTO Department (Department_Name, Manager_ID)
VALUES	('Sales', 12);

Select * From Department;

INSERT INTO City (City_Name)
VALUES	('Gdańsk');

INSERT INTO City (City_Name)
VALUES	('Szczezin');

INSERT INTO City (City_Name)
VALUES	('Bydgoszcz');

INSERT INTO City (City_Name)
VALUES	('Białystok');

INSERT INTO City (City_Name)
VALUES	('Poznań');

INSERT INTO City (City_Name)
VALUES	('Łodz');

INSERT INTO City (City_Name)
VALUES	('Warszawa');

INSERT INTO City (City_Name)
VALUES	('Kraków');

INSERT INTO City (City_Name)
VALUES	('Lublin');

INSERT INTO City (City_Name)
VALUES	('Katowice');

INSERT INTO City (City_Name)
VALUES	('Wrocław');

Select * from City;

SELECT e.Last_Name FROM Employee e ; 
SELECT d.Department_ID, d.Department_Name, e.First_Name + ' ' + e.Last_Name AS Manager FROM Department d INNER JOIN Employee e ON d.Manager_ID = e.Employee_ID;