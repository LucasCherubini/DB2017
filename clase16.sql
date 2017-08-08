-- 1
insert  into `employees`(`employeeNumber`,`lastName`,`firstName`,`extension`,`email`,`officeCode`,`reportsTo`,`jobTitle`) values 
(23,'Morales','Juana','sasa',NULL,'23',NULL,'Nada')
    
-- Column email cannot be null because at the time to create the table, we set it like NOT NULL

-- 2
SELECT *
FROM employees

UPDATE employees SET employeeNumber = employeeNumber - 20 -- all the employeeNumbers was subtracted 20

UPDATE employees SET employeeNumber = employeeNumber + 20 -- cannot add 20 because the other employee has exactly 20 less, 
-- so for a moment there are two primary keys with the same value


-- 3
ALTER TABLE employees
ADD age TINYINT UNSIGNED DEFAULT 69;

ALTER TABLE employees
ADD CONSTRAINT age CHECK(age >= 16 AND age <= 70);


-- 4

-- 5
