CREATE DATABASE langomez_data;
USE langomez_data;


CREATE TABLE person_info (
    person_id INT NOT NULL,
    first_name VARCHAR(50),
    middle_name VARCHAR(50),
    last_name VARCHAR(50),
    gender VARCHAR(25),
    birth_date DATE,
    age int,
    address_number VARCHAR(25),
    address_street VARCHAR(50),
    address_barangay_subdivision VARCHAR(50),
    address_city VARCHAR(50),
    address_province VARCHAR(50),
    address_postal_code VARCHAR(10),
    address_country VARCHAR(50),
    PRIMARY KEY(person_id)
);

CREATE TABLE person_occupation (
    person_occupation_id INT NOT NULL,
    first_name VARCHAR(50) NOT NULL,
    middle_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    departemnt VARCHAR(50),
    position VARCHAR(50),
    salary INT,
    PRIMARY KEY(person_occupation_id)
    );

    

    

    INSERT INTO person_info (person_id, first_name, middle_name, last_name, gender, birth_date, age, address_number, address_street, address_barangay_subdivision,
    address_city, address_province, address_postal_code, address_country)
    VALUES
    (1, 'Juan', 'Dela', 'Cruz', 'Male', '1992-01-02', '33', '#02', 'Pineapple', 'Mabuhay', 'Quezon City', 'Metro Manila', '0021', 'Philippines'),
    (2, 'Andres', 'Emil', 'Bonifacio', 'Male', '1995-02-01', '30', '#23', 'Chico', 'Project 2', 'Quezon City', 'Metro Manila', '0032', 'Philippines'),
    (3, 'Jose', 'Franca', 'Esidro', 'Male', '1084-07-16', '40', '#54', 'Mexico', 'Cupang', 'Antipolo City', 'Rizal', '4932', 'Philippines'),
    (4, 'Filipe', 'Agustin', 'Banaag', 'Male', '1995-03-29', '30', '#12', 'Chico', 'Project 2', 'Quezon City', 'Metro Manila', '0032', 'Philippines'),
    (5, 'Angel', 'Francin', 'Deluch', 'Female', '1995-04-23', '29', '#54', 'Brookville', NULL, 'San Francisco', 'California', '94016', 'United State'),
    (6, 'Angelo', 'Uy', 'Gulapa', 'Male', '1984-07-24', '40', '#283', 'Ferarri', 'San Isidro', 'Angono City', 'Rizal', '3483', 'Philippines'),
    (7, 'Christopher', 'Brown', 'Smith', 'Male', '2001-04-16', '21', '#634', 'Viewville', NULL, 'San Diego', 'California', '9432', 'United State'),
    (8, 'Jake', 'Santiago', 'Bartolome', 'Male', '2005-12-21', '19', '#1', 'Chidoya', NULL, 'Chidoya City', 'Tokyo', NULL, 'Japan'),
    (9, 'Andrew', 'adul', 'Newin', 'Male', '1970-09-05', '54', '#11', 'Soi Sukhumvit', NULL, 'Watthana District', 'Bangkok', '10110', 'Thailand'),
    (10, 'Yuxin', 'Feng', 'Wang', 'Female', '1964-03-12', '61', '#88', 'Huaihai Middle Road', NULL, 'Huangpu District', 'Shanghai', '200021', 'China');
    
    INSERT INTO person_occupation (person_occupation_id, first_name, middle_name, last_name, departemnt, position, salary)
    VALUES
     (1, 'Juan', 'Dela', 'Cruz', 'IT Department', 'Senior Developer', 100000),
     (2, 'Andres', 'Emil', 'Bonifacio', 'IT Department', 'Senior QA Engineer', 80000),
     (3, 'Jose', 'Franca', 'Esidro', 'IT Department', 'Mid Developer', 40000),
     (4, 'Filipe', 'Agustin', 'Banaag', 'IT Department', 'Junior Developer', 25000),
     (5, 'Angel', 'Francin', 'Deluch', 'IT Department', 'Web Desinger', '60000'),
     (6, 'Angelo', 'Uy', 'Gulapa', 'IT Department', 'Junior QA Tester', 20000),
     (7, 'Christopher', 'Brown', 'Smith', 'Admin Office', 'Head Admin', 50000),
     (8, 'Jake', 'Santiago', 'Bartolome', 'Admin Office', 'Assistant Admin', 20000),
     (9, 'Andrew', 'adul', 'Newin', 'Accounting Office', 'Accountant Head', 60000),
     (10, 'Yuxin', 'Feng', 'Wang', 'Accounting Office', 'Assistant Accountant', 25000);
     
     -- SELECT ALL
     SELECT * FROM person_info;
     SELECT * FROM person_occupation;
     
     -- SELECT SPICIFIC
     SELECT last_name, gender FROM person_info;
     
     -- SELECT DISTINCT, where all diferent value selected and no duplicate
     SELECT DISTINCT address_country FROM person_info;
     
     -- WHERE, Selecting data with specific condition
     SELECT * FROM person_info WHERE person_id = 1;
     
    -- ORDER BY,
    SELECT * FROM person_info ORDER BY age; -- This is Ascending
    SELECT * FROM person_info ORDER BY age ASC; -- This is also Ascending or start to end base on age
    SELECT * FROM person_info ORDER BY age DESC; -- This is Descending or end to start base on age
   
    -- AND, Selecting data with two specific condition
    SELECT * FROM person_info WHERE address_city = 'Quezon City' AND address_country = 'Philippines';
    
    -- OR, Selecting data that meets the condition
    SELECT * FROM person_info WHERE address_country = 'Philippines' AND address_city = 'Quezon City';
	
    -- NOT, Show all data except in NOT condition
    SELECT * FROM person_info WHERE NOT address_country = 'Philippines';
    
    -- SELECT TOP, its how many you want to show from your data
    SELECT TOP 3  * FROM person_info;
    SELECT * FROM person_info LIMIT 3;

	-- Aggreegate Function, MIN, MAX, COUNT, SUM, AVG
    SELECT MIN(age) FROM person_info; -- Select the lowest
    SELECT MAX(age) FROM person_info; -- Select the highest
    SELECT COUNT(age) FROM person_info; -- Couting all different value
    SELECT SUM(age) FROM person_info; -- Total
    SELECT AVG(age) FROM person_info; -- Average of the data
    
    -- Aggreegate Function can be use in script.alter
    SELECT MIN(age), MAX(age), COUNT(age), SUM(age), AVG(age) FROM person_info;
    
    -- Like,
    SELECT * FROM person_info WHERE first_name LIKE '%n'; -- fetching data with n value in last
    SELECT * FROM person_info WHERE first_name LIKE 'a%'; -- fetching data with a value in first
    SELECT * FROM person_info WHERE first_name LIKE '%a%'; -- fetching data with a value
    SELECT * FROM person_info WHERE first_name LIKE 'a%s'; -- fetching data starts with a and end with s
    SELECT * FROM person_info WHERE first_name LIKE 'a____'; -- fetching data starts with a and 5 characters and be changed how many _ you input
    SELECT * FROM person_info WHERE first_name LIKE 'J___'; -- five _
    SELECT * FROM person_info WHERE first_name LIKE '___n'; -- fetching data ends with n and 4 characters and be changed how many _ you input
    SELECT * FROM person_info WHERE first_name LIKE '____n'; -- Five _
   
    -- IN, Allow you to specify mutliple values in a where clause
    SELECT * FROM person_info WHERE address_country IN ('Philippines', 'United State');
    SELECT * FROM person_info WHERE age IN (40, 30, 21);
    
    -- BETWEEN, select value between given range
    SELECT * FROM person_info WHERE age BETWEEN 30 AND 40;
    
    -- ALIASES, use to give column in a table, a temporary name
    SELECT address_barangay_subdivision AS barangay FROM person_info;
    
    -- GROUP BY, Show specific data you want.
    SELECT person_id, first_name, last_name
    FROM person_info 
    GROUP BY person_id, first_name, last_name;
    
    -- HAVING, replacing WHERE when you have aggregate function
    SELECT * FROM person_info HAVING age > 30
    
    SELECT COUNT(gender), gender, address_country
    FROM person_info GROUP BY address_country, gender HAVING address_country = 'United State';
    
    -- INNER JOIN, selects records that have matching values in both tables
    SELECT pi.person_id, pi.first_name, pi.last_name, po.position, po.salary 
    FROM person_info pi INNER JOIN person_occupation po
    ON pi.first_name = po.first_name
    AND pi.last_name = po.last_name
    
    -- NOTE ALL FUNCTION CAN BE IN ONE SCRIPTS, YOU CAN MANIPULATE DEPENDS ON THE SITUATION.->
    SELECT COUNT(pi.address_country), pi.address_country, pi.person_id, pi.first_name, pi.last_name, po.position, po.salary 
    FROM person_info pi INNER JOIN person_occupation po ON pi.first_name = po.first_name AND pi.last_name = po.last_name
    GROUP BY pi.address_country, pi.person_id, pi.first_name, pi.last_name, po.position, po.salary
    HAVING address_country IN  ('Philippines', 'United State') AND po.salary > 90000

    
    
