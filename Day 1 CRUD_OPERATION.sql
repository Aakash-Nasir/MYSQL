SHOW DATABASES;

CREATE DATABASE IF NOT EXISTS mysql_bootcamp_with_priya_bhatia;
USE mysql_bootcamp_with_priya_bhatia;

SELECT DATABASE();

CREATE TABLE employees(
EID INT PRIMARY KEY  AUTO_INCREMENT,
firstName varchar(50) NOT NULL,
lastName varchar(50) NOT NULL,
AGE INT NOT NULL,
SALARY INT NOT NULL,
LOCATION varchar(40)
);

 SHOW TABLES; 
 
/* 
 syntax for
 multi line comment 

*/
show tables;


INSERT INTO employees (firstName,lastName,AGE,SALARY,LOCATION) VALUES ("Aakash","Nasir",25,130000,"Bengluru");
INSERT INTO employees (firstName,lastName,AGE,SALARY,LOCATION) VALUES ("Arpit","Dalal",27,110000,"Delhi");
INSERT INTO employees (firstName,lastName,AGE,SALARY,LOCATION) VALUES ("Harshit","Thakaran",28,10000,"Rewari");
INSERT INTO employees (firstName,lastName,AGE,SALARY,LOCATION) VALUES ("Bhavesh","Kumar",23,13000,"Gurugram");
INSERT INTO employees (firstName,lastName,AGE,SALARY,LOCATION) VALUES ("Pranshu","Thakaran",30,10000,"Palwal");
INSERT INTO employees (firstName,lastName,AGE,SALARY,LOCATION) VALUES ("Priyank","Roy",29,15000,"Noida");


 SELECT * FROM employees;

-- find the salary details having salary more than 25000
-- SELECT * FROM employee WHERE SALARY > 25000;
SELECT * FROM employees
 WHERE SALARY>25000;
 
  -- find the records of employees having age is less than 19
  SELECT * FROM employees WHERE AGE < 19;

-- update the last name with roy to ray
-- update is a DML Command which updates the record  inside the Table

UPDATE employees SET lastName = "ray" where EID = 6;

-- DELETE THE RECORD OF EID = 4  
-- Delete is a DML Command which updates the record  inside the Table

DELETE FROM employees WHERE EID = 4;

select * from employees;



