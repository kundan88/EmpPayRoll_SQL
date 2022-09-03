-----UC1--------
create database payroll_service

------UC2------
CREATE TABLE Employee_Pay_Roll
(
	ID INT IDENTITY (1,1) PRIMARY KEY,
	NAME VARCHAR (30) NOT NULL,
	salary INT,
	StartDate DATE
);

------UC3--------

INSERT INTO Employee_Pay_Roll VALUES('Kundan', 7500, '2021-10-03')
INSERT INTO Employee_Pay_Roll VALUES('Sumit', 5500, '2022-02-22')
INSERT INTO Employee_Pay_Roll VALUES('Ramesh', 2000, '2021-12-10')
INSERT INTO Employee_Pay_Roll VALUES('Haris', 9600, '2022-01-15')


-------UC4----

SELECT * FROM Employee_Pay_Roll

-------UC5-------

SELECT salary FROM Employee_Pay_Roll WHERE NAME = 'Kundan'

-------UC6-------

ALTER TABLE Employee_Pay_Roll
ADD Gender VARCHAR(8)

UPDATE Employee_Pay_Roll SET Gender = 'MALE' WHERE NAME = 'Kundan' or NAME = 'Sumit' or NAME = 'Ramesh'

-------UC7------------

SELECT SUM(salary) FROM Employee_Pay_Roll WHERE Gender = 'MALE' GROUP BY Gender;

SELECT AVG(salary) FROM Employee_Pay_Roll WHERE Gender = 'MALE' GROUP BY Gender;

SELECT MIN(salary) FROM Employee_Pay_Roll WHERE Gender = 'MALE' GROUP BY Gender;

SELECT MAX(salary) FROM Employee_Pay_Roll WHERE Gender = 'MALE' GROUP BY Gender;

SELECT COUNT(salary) FROM Employee_Pay_Roll WHERE Gender = 'MALE' GROUP BY Gender;

SELECT * FROM Employee_Pay_Roll

--------UC8--------

ALTER TABLE Employee_Pay_Roll
ADD PhoneNumber BIGINT, Address VARCHAR(100), Department VARCHAR(30)

UPDATE Employee_Pay_Roll SET Address = 'Mumbai'WHERE NAME in ('Kundan')
UPDATE Employee_Pay_Roll SET Address = 'Pune'WHERE NAME in ('Sumit')
UPDATE Employee_Pay_Roll SET Address = 'Hyderabad'WHERE NAME in ('Ramesh')
UPDATE Employee_Pay_Roll SET Address = 'Latur'WHERE NAME in ('Haris')

UPDATE Employee_Pay_Roll SET Department = 'Counsellor' WHERE NAME in ('Kundan');
UPDATE Employee_Pay_Roll SET Department = 'Asistant Manager' WHERE NAME in ('Haris');
UPDATE Employee_Pay_Roll SET Department = 'CEO' WHERE NAME in ('Sumit');
UPDATE Employee_Pay_Roll SET Department = 'Manager' WHERE NAME in ('Ramesh');

UPDATE Employee_Pay_Roll SET PhoneNumber = 9235589632 WHERE NAME = 'Kundan';
UPDATE Employee_Pay_Roll SET PhoneNumber = 9653352144 WHERE NAME = 'Sumit';
UPDATE Employee_Pay_Roll SET PhoneNumber = 5423623541 WHERE NAME = 'Ramesh';
UPDATE Employee_Pay_Roll SET PhoneNumber = 9521863597 WHERE NAME = 'Haris';

SELECT * FROM Employee_Pay_Roll

----------UC9-----------

ALTER TABLE Employee_Pay_Roll
ADD BasicPay BIGINT, Deduction BIGINT, Taxable BIGINT, IncomeTax BIGINT, NetPay BIGINT

------UC10-------

UPDATE Employee_Pay_Roll SET Department = 'Sales' WHERE Name = 'Terrisa'
INSERT INTO Employee_Pay_Roll (Name, Department) VALUES ('Terrisa', 'Marketing')

